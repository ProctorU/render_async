require 'securerandom'

module RenderAsync
  module ViewHelper
    def render_async(path, &block)
      container_name = "render_async_#{SecureRandom.hex(5)}#{Time.now.to_i}"

      render(
        "render_async/render_async",
        container_name: container_name,
        path: path,
        block: block
      )
    end
  end
end
