module Lita
  module Handlers
    class OnewheelTrashcam < Handler
      config :jpg_dir, required: true

      route /^trashcam$/i,
            :be_trashy,
            command: true,
            help: { '!trashcam' => 'trashcam!' }

      def be_trashy(response)
        response.reply image_url
      end

    end

    Lita.register_handler(OnewheelTrashcam)
  end
end
