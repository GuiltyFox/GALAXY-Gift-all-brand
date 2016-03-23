.class Lcom/samsung/privilege/activity/CardsUsedActivity$2;
.super Ljava/lang/Object;
.source "CardsUsedActivity.java"

# interfaces
.implements Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CardsUsedActivity;->initialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CardsUsedActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/CardsUsedActivity;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$2;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 299
    :try_start_0
    iget-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$2;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    # getter for: Lcom/samsung/privilege/activity/CardsUsedActivity;->mHistoryAdapter:Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CardsUsedActivity;->access$200(Lcom/samsung/privilege/activity/CardsUsedActivity;)Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;->getItem(I)Lcom/bzbs/bean/HistoryCardsList;

    move-result-object v1

    .line 301
    .local v1, "objHistoryCardsList":Lcom/bzbs/bean/HistoryCardsList;
    iget v2, v1, Lcom/bzbs/bean/HistoryCardsList;->status:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10

    .line 317
    .end local v1    # "objHistoryCardsList":Lcom/bzbs/bean/HistoryCardsList;
    :cond_f
    :goto_f
    return-void

    .line 304
    .restart local v1    # "objHistoryCardsList":Lcom/bzbs/bean/HistoryCardsList;
    :cond_10
    iget-object v2, v1, Lcom/bzbs/bean/HistoryCardsList;->transactionId:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, v1, Lcom/bzbs/bean/HistoryCardsList;->transactionId:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 305
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$2;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/TransactionDisplayActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 306
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "Issuer"

    iget-object v3, v1, Lcom/bzbs/bean/HistoryCardsList;->Issuer:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string/jumbo v2, "TransactionId"

    iget-object v3, v1, Lcom/bzbs/bean/HistoryCardsList;->transactionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const-string/jumbo v2, "Message"

    iget-object v3, v1, Lcom/bzbs/bean/HistoryCardsList;->message:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    iget-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$2;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-virtual {v2, v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->startActivity(Landroid/content/Intent;)V

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Wallet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$2;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    # getter for: Lcom/samsung/privilege/activity/CardsUsedActivity;->dash_item:Lcom/bzbs/bean/CardsList;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CardsUsedActivity;->access$300(Lcom/samsung/privilege/activity/CardsUsedActivity;)Lcom/bzbs/bean/CardsList;

    move-result-object v3

    iget-object v3, v3, Lcom/bzbs/bean/CardsList;->Issuer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Click Wallet Transaction"

    invoke-static {v2, v3}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6b} :catch_6c

    goto :goto_f

    .line 314
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "objHistoryCardsList":Lcom/bzbs/bean/HistoryCardsList;
    :catch_6c
    move-exception v2

    goto :goto_f
.end method
