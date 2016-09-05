.class Lcom/samsung/privilege/activity/TransactionDisplayActivity$2$1;
.super Ljava/lang/Object;
.source "TransactionDisplayActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2$1;->a:Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2$1;->a:Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;

    iget-object v0, v0, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;->b:Lcom/samsung/privilege/activity/TransactionDisplayActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2$1;->a:Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;

    iget-object v1, v1, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;->b:Lcom/samsung/privilege/activity/TransactionDisplayActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->a(Lcom/samsung/privilege/activity/TransactionDisplayActivity;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2$1;->a:Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;

    iget-object v2, v2, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->a(Lcom/samsung/privilege/activity/TransactionDisplayActivity;ZLjava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2$1;->a:Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;

    iget-object v0, v0, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;->b:Lcom/samsung/privilege/activity/TransactionDisplayActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->b(Lcom/samsung/privilege/activity/TransactionDisplayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 96
    iget-object v0, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2$1;->a:Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;

    iget-object v0, v0, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;->b:Lcom/samsung/privilege/activity/TransactionDisplayActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->b(Lcom/samsung/privilege/activity/TransactionDisplayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2$1;->a:Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;

    iget-object v1, v1, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;->b:Lcom/samsung/privilege/activity/TransactionDisplayActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->c(Lcom/samsung/privilege/activity/TransactionDisplayActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 97
    iget-object v0, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2$1;->a:Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;

    iget-object v0, v0, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;->b:Lcom/samsung/privilege/activity/TransactionDisplayActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->b(Lcom/samsung/privilege/activity/TransactionDisplayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2$1;->a:Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;

    iget-object v1, v1, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;->b:Lcom/samsung/privilege/activity/TransactionDisplayActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->c(Lcom/samsung/privilege/activity/TransactionDisplayActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 98
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 89
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 85
    return-void
.end method
