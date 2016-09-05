.class Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$4;
.super Ljava/lang/Object;
.source "DashboardHolder_wallet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;)V
    .registers 2

    .prologue
    .line 422
    iput-object p1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$4;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 425
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$4;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    .line 426
    return-void
.end method
