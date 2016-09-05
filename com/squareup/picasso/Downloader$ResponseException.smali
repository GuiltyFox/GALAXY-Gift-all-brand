.class public Lcom/squareup/picasso/Downloader$ResponseException;
.super Ljava/io/IOException;
.source "Downloader.java"


# instance fields
.field final a:Z

.field final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-static {p2}, Lcom/squareup/picasso/NetworkPolicy;->c(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/squareup/picasso/Downloader$ResponseException;->a:Z

    .line 51
    iput p3, p0, Lcom/squareup/picasso/Downloader$ResponseException;->b:I

    .line 52
    return-void
.end method
