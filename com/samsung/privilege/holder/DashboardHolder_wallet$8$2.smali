.class Lcom/samsung/privilege/holder/DashboardHolder_wallet$8$2;
.super Ljava/lang/Object;
.source "DashboardHolder_wallet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/holder/DashboardHolder_wallet$8;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$8;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/holder/DashboardHolder_wallet$8;)V
    .registers 2

    .prologue
    .line 759
    iput-object p1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$8$2;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 761
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$8$2;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$8;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$8;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->l:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 764
    return-void
.end method
