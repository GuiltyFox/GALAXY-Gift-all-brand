.class public Lcom/koushikdutta/ion/gif/GifFrame;
.super Ljava/lang/Object;
.source "GifFrame.java"


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public b:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .registers 3

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/koushikdutta/ion/gif/GifFrame;->a:Landroid/graphics/Bitmap;

    .line 8
    iput p2, p0, Lcom/koushikdutta/ion/gif/GifFrame;->b:I

    .line 9
    return-void
.end method
