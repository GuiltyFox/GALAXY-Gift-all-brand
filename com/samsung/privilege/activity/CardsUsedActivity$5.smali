.class Lcom/samsung/privilege/activity/CardsUsedActivity$5;
.super Landroid/os/CountDownTimer;
.source "CardsUsedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CardsUsedActivity;->countDownTimer(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CardsUsedActivity;JJ)V
    .registers 6
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/CardsUsedActivity;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 527
    iput-object p1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$5;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 536
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$5;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    # getter for: Lcom/samsung/privilege/activity/CardsUsedActivity;->tvTimer:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->access$1200(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$5;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    # getter for: Lcom/samsung/privilege/activity/CardsUsedActivity;->tvTimer:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->access$1200(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 540
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$5;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    const v2, 0x7f100140

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 541
    .local v0, "layoutCode":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 545
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$5;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    const v2, 0x7f10013b

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 547
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$5;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    # getter for: Lcom/samsung/privilege/activity/CardsUsedActivity;->tvStatus:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->access$1600(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, "TIME OUT!"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$5;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    # getter for: Lcom/samsung/privilege/activity/CardsUsedActivity;->tvStatus:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->access$1600(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 549
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$5;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    # getter for: Lcom/samsung/privilege/activity/CardsUsedActivity;->ivStatus:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->access$900(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 551
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$5;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    const v2, 0x7f100148

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 552
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$5;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    const v2, 0x7f100149

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wallet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$5;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    # getter for: Lcom/samsung/privilege/activity/CardsUsedActivity;->dash_item:Lcom/bzbs/bean/CardsList;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CardsUsedActivity;->access$300(Lcom/samsung/privilege/activity/CardsUsedActivity;)Lcom/bzbs/bean/CardsList;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/CardsList;->Issuer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "View Time Out"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    return-void
.end method

.method public onTick(J)V
    .registers 14
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 530
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$5;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    # getter for: Lcom/samsung/privilege/activity/CardsUsedActivity;->tvTimer:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->access$1200(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$5;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    const v3, 0x7f0900d4

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%d min %d sec"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    return-void
.end method
