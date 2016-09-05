.class Lcom/bzbs/lib/survey/control/VideoControllerView$1;
.super Ljava/lang/Object;
.source "VideoControllerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/control/VideoControllerView;->a(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/lib/survey/control/VideoControllerView;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/control/VideoControllerView;)V
    .registers 2

    .prologue
    .line 165
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$1;->a:Lcom/bzbs/lib/survey/control/VideoControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/VideoControllerView$1;->a:Lcom/bzbs/lib/survey/control/VideoControllerView;

    invoke-static {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView;->a(Lcom/bzbs/lib/survey/control/VideoControllerView;)Lcom/bzbs/lib/survey/control/VideoControllerView$OnRqExitListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bzbs/lib/survey/control/VideoControllerView$OnRqExitListener;->a()V

    .line 169
    return-void
.end method
