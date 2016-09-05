.class Lcom/bzbs/lib/survey/control/VideoControllerView$2;
.super Ljava/lang/Object;
.source "VideoControllerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/control/VideoControllerView;
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/lib/survey/control/VideoControllerView;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/control/VideoControllerView;)V
    .registers 2

    .prologue
    .line 415
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$2;->a:Lcom/bzbs/lib/survey/control/VideoControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 417
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$2;->a:Lcom/bzbs/lib/survey/control/VideoControllerView;

    invoke-static {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->b(Lcom/bzbs/lib/survey/control/VideoControllerView;)V

    .line 418
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$2;->a:Lcom/bzbs/lib/survey/control/VideoControllerView;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/control/VideoControllerView;->a(I)V

    .line 419
    return-void
.end method
