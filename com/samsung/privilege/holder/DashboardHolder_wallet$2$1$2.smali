.class Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$2;
.super Ljava/lang/Object;
.source "DashboardHolder_wallet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;)V
    .registers 2

    .prologue
    .line 474
    iput-object p1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$2;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 478
    invoke-static {}, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->b()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 479
    return-void
.end method
