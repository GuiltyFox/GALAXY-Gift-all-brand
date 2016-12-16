.class Lcom/samsung/privilege/activity/CardsUsedActivity$2;
.super Ljava/lang/Object;
.source "CardsUsedActivity.java"

# interfaces
.implements Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CardsUsedActivity;->c()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/CardsUsedActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CardsUsedActivity;)V
    .registers 2

    .prologue
    .line 261
    iput-object p1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$2;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .registers 7

    .prologue
    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$2;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->b(Lcom/samsung/privilege/activity/CardsUsedActivity;)Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;->a(I)Lcom/bzbs/bean/HistoryCardsList;

    move-result-object v0

    .line 267
    iget v1, v0, Lcom/bzbs/bean/HistoryCardsList;->status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    .line 283
    :cond_f
    :goto_f
    return-void

    .line 270
    :cond_10
    iget-object v1, v0, Lcom/bzbs/bean/HistoryCardsList;->transactionId:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/bzbs/bean/HistoryCardsList;->transactionId:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 271
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$2;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/TransactionDisplayActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    const-string/jumbo v2, "Issuer"

    iget-object v3, v0, Lcom/bzbs/bean/HistoryCardsList;->Issuer:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string/jumbo v2, "TransactionId"

    iget-object v3, v0, Lcom/bzbs/bean/HistoryCardsList;->transactionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string/jumbo v2, "Message"

    iget-object v0, v0, Lcom/bzbs/bean/HistoryCardsList;->message:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$2;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->startActivity(Landroid/content/Intent;)V

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$2;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->c(Lcom/samsung/privilege/activity/CardsUsedActivity;)Lcom/bzbs/bean/CardsList;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/CardsList;->Issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Click Wallet Transaction"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6b} :catch_6c

    goto :goto_f

    .line 280
    :catch_6c
    move-exception v0

    goto :goto_f
.end method
