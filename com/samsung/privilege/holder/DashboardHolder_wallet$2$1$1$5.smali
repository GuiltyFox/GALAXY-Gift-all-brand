.class Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$5;
.super Landroid/os/CountDownTimer;
.source "DashboardHolder_wallet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;JJ)V
    .registers 6

    .prologue
    .line 431
    iput-object p1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$5;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    .line 439
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$5;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->H:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$5;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->F:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$5;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->I:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 443
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$5;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->G:Landroid/widget/TextView;

    const-string/jumbo v1, "TIME OUT!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$5;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->J:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$5;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;

    iget-object v1, v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;->d:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "View Time Out"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public onTick(J)V
    .registers 14

    .prologue
    const/4 v6, 0x0

    .line 434
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$5;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1$5;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1$1;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2$1;->a:Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;->b:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->F:Landroid/widget/TextView;

    const-string/jumbo v1, "%d min %d sec"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

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

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    return-void
.end method
