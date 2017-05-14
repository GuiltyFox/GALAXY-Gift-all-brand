.class public Lcom/koushikdutta/ion/IonImageViewRequestBuilder;
.super Lcom/koushikdutta/ion/IonBitmapRequestBuilder;
.source "IonImageViewRequestBuilder.java"


# static fields
.field static final synthetic f:Z


# instance fields
.field d:Z

.field e:Lcom/koushikdutta/ion/BitmapDrawableFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->f:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/koushikdutta/ion/Ion;)V
    .registers 3

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;-><init>(Lcom/koushikdutta/ion/Ion;)V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->d:Z

    .line 34
    sget-object v0, Lcom/koushikdutta/ion/BitmapDrawableFactory;->a:Lcom/koushikdutta/ion/BitmapDrawableFactory;

    iput-object v0, p0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;->e:Lcom/koushikdutta/ion/BitmapDrawableFactory;

    .line 42
    return-void
.end method
