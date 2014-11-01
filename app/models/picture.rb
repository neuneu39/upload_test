# -*- coding: utf-8 -*-
class Picture < ActiveRecord::Base

  #photoをattachファイルとする。stylesで画像サイズを定義する
  has_attached_file :photo, :styles => { medium: "300x300>" }

  #ファイルの拡張子を指定
  validates_attachment :photo, :content_type  => { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

end
