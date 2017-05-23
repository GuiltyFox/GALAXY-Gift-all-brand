.class Lcom/samsung/privilege/holder/DashboardHolder_wallet$7$1;
.super Ljava/lang/Object;
.source "DashboardHolder_wallet.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/holder/DashboardHolder_wallet$7;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$7;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/holder/DashboardHolder_wallet$7;)V
    .registers 2

    .prologue
    .line 653
    iput-object p1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$7$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 662
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 667
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4

    .prologue
    .line 656
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$7$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$7;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$7;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 657
    return-void
.end method
