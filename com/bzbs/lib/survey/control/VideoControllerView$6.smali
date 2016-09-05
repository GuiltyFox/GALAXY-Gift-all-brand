.class Lcom/bzbs/lib/survey/control/VideoControllerView$6;
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
    .line 571
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$6;->a:Lcom/bzbs/lib/survey/control/VideoControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 573
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$6;->a:Lcom/bzbs/lib/survey/control/VideoControllerView;

    invoke-static {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->e(Lcom/bzbs/lib/survey/control/VideoControllerView;)Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    move-result-object v0

    if-nez v0, :cond_9

    .line 583
    :goto_8
    return-void

    .line 577
    :cond_9
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$6;->a:Lcom/bzbs/lib/survey/control/VideoControllerView;

    invoke-static {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->e(Lcom/bzbs/lib/survey/control/VideoControllerView;)Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;->e()I

    move-result v0

    .line 578
    add-int/lit16 v0, v0, 0x3a98

    .line 579
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$6;->a:Lcom/bzbs/lib/survey/control/VideoControllerView;

    invoke-static {v1}, Lcom/bzbs/lib/survey/control/VideoControllerView;->e(Lcom/bzbs/lib/survey/control/VideoControllerView;)Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/bzbs/lib/survey/control/VideoControllerView$MediaPlayerControl;->a(I)V

    .line 580
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$6;->a:Lcom/bzbs/lib/survey/control/VideoControllerView;

    invoke-static {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->g(Lcom/bzbs/lib/survey/control/VideoControllerView;)I

    .line 582
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$6;->a:Lcom/bzbs/lib/survey/control/VideoControllerView;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/control/VideoControllerView;->a(I)V

    goto :goto_8
.end method
