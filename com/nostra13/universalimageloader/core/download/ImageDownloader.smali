.class public interface abstract Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# static fields
.field public static final SCHEME_ASSETS:Ljava/lang/String; = "assets"

.field public static final SCHEME_CONTENT:Ljava/lang/String; = "content"

.field public static final SCHEME_DRAWABLE:Ljava/lang/String; = "drawable"

.field public static final SCHEME_FILE:Ljava/lang/String; = "file"

.field public static final SCHEME_HTTP:Ljava/lang/String; = "http"

.field public static final SCHEME_HTTPS:Ljava/lang/String; = "https"


# virtual methods
.method public abstract getStream(Ljava/net/URI;Ljava/lang/Object;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
