.class Lcom/samsung/privilege/holder/DashboardHolder_wallet$5$1;
.super Ljava/lang/Object;
.source "DashboardHolder_wallet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;)V
    .registers 2

    .prologue
    .line 542
    iput-object p1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .prologue
    .line 544
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 545
    return-void
.end method
