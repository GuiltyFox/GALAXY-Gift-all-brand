.class Lcom/samsung/privilege/activity/WalletTopupCashActivity$3;
.super Landroid/os/CountDownTimer;
.source "WalletTopupCashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletTopupCashActivity;->g()V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/samsung/privilege/activity/WalletTopupCashActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletTopupCashActivity;JJLandroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 8

    .prologue
    .line 214
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$3;->c:Lcom/samsung/privilege/activity/WalletTopupCashActivity;

    iput-object p6, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$3;->a:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$3;->b:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    .prologue
    .line 223
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$3;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$3;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$3;->c:Lcom/samsung/privilege/activity/WalletTopupCashActivity;

    const v2, 0x7f0901f7

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    return-void
.end method

.method public onTick(J)V
    .registers 14

    .prologue
    const/4 v6, 0x0

    .line 216
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$3;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$3;->c:Lcom/samsung/privilege/activity/WalletTopupCashActivity;

    const v1, 0x7f0901eb

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$3;->c:Lcom/samsung/privilege/activity/WalletTopupCashActivity;

    const v2, 0x7f0901f2

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 219
    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$3;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "%d "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " %d "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v6

    const/4 v3, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    return-void
.end method
