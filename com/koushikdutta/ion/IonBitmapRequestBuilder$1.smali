.class final Lcom/koushikdutta/ion/IonBitmapRequestBuilder$1;
.super Lcom/koushikdutta/async/future/SimpleFuture;
.source "IonBitmapRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/ion/IonBitmapRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/future/SimpleFuture",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "uri"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder$1;->a(Ljava/lang/Exception;)Z

    .line 31
    return-void
.end method
