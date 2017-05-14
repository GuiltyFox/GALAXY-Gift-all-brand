.class Lcom/samsung/privilege/activity/HistoryActivity$5$1;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/HistoryActivity$5;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/HistoryActivity$5;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/HistoryActivity$5;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 682
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryActivity$5$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$5;

    iput-object p2, p0, Lcom/samsung/privilege/activity/HistoryActivity$5$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 686
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$5$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 688
    new-instance v3, Lcom/bzbs/bean/Campaign;

    invoke-direct {v3}, Lcom/bzbs/bean/Campaign;-><init>()V

    .line 689
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$5$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$5;

    iget-object v1, v1, Lcom/samsung/privilege/activity/HistoryActivity$5;->a:Lcom/bzbs/bean/Purchasing;

    iget-object v1, v1, Lcom/bzbs/bean/Purchasing;->ID:Ljava/lang/String;

    iput-object v1, v3, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    .line 690
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$5$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$5;

    iget-object v1, v1, Lcom/samsung/privilege/activity/HistoryActivity$5;->a:Lcom/bzbs/bean/Purchasing;

    iget-object v1, v1, Lcom/bzbs/bean/Purchasing;->AgencyID:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/bzbs/bean/Campaign;->AgencyID:Ljava/lang/String;

    .line 691
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$5$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$5;

    iget-object v1, v1, Lcom/samsung/privilege/activity/HistoryActivity$5;->a:Lcom/bzbs/bean/Purchasing;

    iget-object v1, v1, Lcom/bzbs/bean/Purchasing;->AgencyName:Ljava/lang/String;

    iput-object v1, v3, Lcom/bzbs/bean/Campaign;->AgencyName:Ljava/lang/String;

    .line 692
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$5$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$5;

    iget-object v1, v1, Lcom/samsung/privilege/activity/HistoryActivity$5;->a:Lcom/bzbs/bean/Purchasing;

    iget-object v1, v1, Lcom/bzbs/bean/Purchasing;->Barcode:Ljava/lang/String;

    iput-object v1, v3, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    .line 693
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$5$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$5;

    iget-object v1, v1, Lcom/samsung/privilege/activity/HistoryActivity$5;->a:Lcom/bzbs/bean/Purchasing;

    iget-object v1, v1, Lcom/bzbs/bean/Purchasing;->Type:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    .line 694
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$5$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$5;

    iget-object v1, v1, Lcom/samsung/privilege/activity/HistoryActivity$5;->a:Lcom/bzbs/bean/Purchasing;

    iget-object v1, v1, Lcom/bzbs/bean/Purchasing;->CategoryID:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/bzbs/bean/Campaign;->CategoryID:Ljava/lang/String;

    .line 695
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$5$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$5;

    iget-object v1, v1, Lcom/samsung/privilege/activity/HistoryActivity$5;->a:Lcom/bzbs/bean/Purchasing;

    iget v1, v1, Lcom/bzbs/bean/Purchasing;->MinutesValidAfterUsed:I

    iput v1, v3, Lcom/bzbs/bean/Campaign;->MinutesValidAfterUsed:I

    .line 697
    const-string/jumbo v5, ""

    .line 698
    const/4 v4, 0x0

    .line 699
    const-string/jumbo v1, "WinnerMessage"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 701
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$5$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$5;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$5;->c:Lcom/samsung/privilege/activity/HistoryActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$5$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$5;

    iget-object v1, v1, Lcom/samsung/privilege/activity/HistoryActivity$5;->c:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/HistoryActivity;->k(Lcom/samsung/privilege/activity/HistoryActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/HistoryActivity$5$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$5;

    iget-object v2, v2, Lcom/samsung/privilege/activity/HistoryActivity$5;->a:Lcom/bzbs/bean/Purchasing;

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/samsung/privilege/util/DialogSerialGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/bzbs/bean/Purchasing;Lcom/bzbs/bean/Campaign;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/bean/NFCTag;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6f} :catch_8a

    .line 707
    :goto_6f
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$5$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$5;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$5;->c:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryActivity;->j(Lcom/samsung/privilege/activity/HistoryActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 709
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$5$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$5;

    iget-boolean v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$5;->b:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_89

    .line 710
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$5$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$5;

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$5;->c:Lcom/samsung/privilege/activity/HistoryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/HistoryActivity;->a(Lcom/samsung/privilege/activity/HistoryActivity;I)V

    .line 712
    :cond_89
    return-void

    .line 702
    :catch_8a
    move-exception v0

    .line 703
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 704
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$5$1;->b:Lcom/samsung/privilege/activity/HistoryActivity$5;

    iget-object v1, v1, Lcom/samsung/privilege/activity/HistoryActivity$5;->c:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v1, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6f
.end method
