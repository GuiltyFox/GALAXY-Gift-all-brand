.class Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$5;
.super Landroid/os/CountDownTimer;
.source "WalletCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;JJ)V
    .registers 6

    .prologue
    .line 837
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$5;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    .prologue
    .line 846
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$5;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$6$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->Q:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 847
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$5;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$6$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->R:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$5;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$6$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$6$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$6;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v2, 0x7f09038f

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 850
    return-void
.end method

.method public onTick(J)V
    .registers 14

    .prologue
    const/4 v6, 0x0

    .line 839
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$5;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$6$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 840
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$5;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$6$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v1, 0x7f090386

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 841
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$5;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$6$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$6$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$6;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v2, 0x7f09038b

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 842
    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$5;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$6$1;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$6$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$6;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity;->R:Landroid/widget/TextView;

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

    .line 843
    return-void
.end method
