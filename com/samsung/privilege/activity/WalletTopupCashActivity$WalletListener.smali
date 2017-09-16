.class Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener;
.super Ljava/lang/Object;
.source "WalletTopupCashActivity.java"

# interfaces
.implements Lcom/bzbs/event/WalletEvents$WalletListener;


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WalletTopupCashActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/WalletTopupCashActivity;)V
    .registers 2

    .prologue
    .line 82
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener;->a:Lcom/samsung/privilege/activity/WalletTopupCashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/activity/WalletTopupCashActivity;Lcom/samsung/privilege/activity/WalletTopupCashActivity$1;)V
    .registers 3

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener;-><init>(Lcom/samsung/privilege/activity/WalletTopupCashActivity;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 85
    invoke-static {}, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPaymentSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 90
    invoke-static {}, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTopupCashSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener;->a:Lcom/samsung/privilege/activity/WalletTopupCashActivity;

    const v1, 0x7f100156

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 93
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener;->a:Lcom/samsung/privilege/activity/WalletTopupCashActivity;

    const v1, 0x7f100138

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 94
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener;->a:Lcom/samsung/privilege/activity/WalletTopupCashActivity;

    const v1, 0x7f10013b

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener;->a:Lcom/samsung/privilege/activity/WalletTopupCashActivity;

    const v1, 0x7f100262

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener;->a:Lcom/samsung/privilege/activity/WalletTopupCashActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->a(Lcom/samsung/privilege/activity/WalletTopupCashActivity;)Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener$1;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener$1;-><init>(Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener;Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 142
    invoke-static {}, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTransferSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method
