.class final Lcom/samsung/privilege/util/DialogSerialGift$13;
.super Ljava/lang/Object;
.source "DialogSerialGift.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogSerialGift;->b(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 549
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogSerialGift$13;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogSerialGift$13;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogSerialGift$13;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    .prologue
    .line 557
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialGift$13;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 559
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialGift$13;->b:Landroid/content/Context;

    const v1, 0x7f050025

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 560
    new-instance v1, Lcom/samsung/privilege/util/DialogSerialGift$13$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogSerialGift$13$1;-><init>(Lcom/samsung/privilege/util/DialogSerialGift$13;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 577
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogSerialGift$13;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 578
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogSerialGift$13;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 579
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogSerialGift$13;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 580
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 585
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 553
    return-void
.end method
