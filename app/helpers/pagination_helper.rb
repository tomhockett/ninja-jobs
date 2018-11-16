# Renders pagination markup using Bulma classes and nesting.
module PaginationHelper
  def custom_pagination_renderer
    Class.new(WillPaginate::ActionView::LinkRenderer) do
      def container_attributes
        { class: "pagination", role: "navigation", 'aria-label': "pagination"}
      end

      def html_container(html)
        tag(:nav, tag(:ul, html, class: "pagination-list"), container_attributes)
      end

      def page_number(page)
        if page == current_page
          tag(:li, link(page, page, class: 'pagination-link is-current'))
        else
          tag(:li, link(page, page, class: 'pagination-link', rel: rel_value(page)))
        end
      end

      def gap
        text = @template.will_paginate_translate(:page_gap) { '&hellip;' }
        %(<span class="pagination-ellipsis">#{text}</span>)
      end

      def previous_page
        num = @collection.current_page > 1 && @collection.current_page - 1
        previous_or_next_page(num, @options[:previous_label], 'pagination-previous')
      end

      def next_page
        num = @collection.current_page < total_pages && @collection.current_page + 1
        previous_or_next_page(num, @options[:next_label], 'pagination-next')
      end

      def previous_or_next_page(page, text, classname)
        if page
          link(text, page, class: classname)
        else
          tag(:span, text, class: classname)
        end
      end
    end
  end
end