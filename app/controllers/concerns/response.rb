module Response
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def paginate_response(object, meta = pagination_dict(object), mKey = "meta", root = "data", status = :ok)
    render json: object, root: root, meta: meta, meta_key: mKey, status: status
  end
end
