.class abstract Lcom/koushikdutta/ion/IonBitmapRequestBuilder;
.super Ljava/lang/Object;
.source "IonBitmapRequestBuilder.java"


# static fields
.field static final synthetic c:Z

.field private static final d:Lcom/koushikdutta/async/future/SimpleFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/future/SimpleFuture",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/koushikdutta/ion/Ion;

.field b:Lcom/koushikdutta/ion/builder/AnimateGifMode;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->c:Z

    .line 28
    new-instance v0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder$1;

    invoke-direct {v0}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder$1;-><init>()V

    sput-object v0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->d:Lcom/koushikdutta/async/future/SimpleFuture;

    return-void

    .line 27
    :cond_13
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/koushikdutta/ion/Ion;)V
    .registers 3

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lcom/koushikdutta/ion/builder/AnimateGifMode;->b:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    iput-object v0, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->b:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    .line 62
    iput-object p1, p0, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->a:Lcom/koushikdutta/ion/Ion;

    .line 63
    return-void
.end method
