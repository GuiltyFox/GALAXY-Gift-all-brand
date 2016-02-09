.class Lcom/samsung/privilege/activity/CampaignDetailActivity$GetPointsListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "CampaignDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetPointsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V
    .registers 2

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetPointsListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$GetPointsListener;)Lcom/samsung/privilege/activity/CampaignDetailActivity;
    .registers 2

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetPointsListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 11
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 1083
    const-string v4, "campaign.detail"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(GetPointsListener|onComplete)response={"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    const/16 v4, 0xc8

    if-ne p1, v4, :cond_5c

    .line 1086
    :try_start_22
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1087
    .local v1, "points":J
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetPointsListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v2}, Lcom/samsung/privilege/UserLogin;->SetPoints(Landroid/content/Context;J)Z

    .line 1089
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v4, "#,###,###"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1090
    .local v0, "formatter":Ljava/text/DecimalFormat;
    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    .line 1092
    .local v3, "strPoints":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetPointsListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gTvPoint:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/widget/TextView;

    move-result-object v4

    if-nez v4, :cond_52

    .line 1093
    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetPointsListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetPointsListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    const v6, 0x7f3c000a

    invoke-virtual {v4, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v5, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity;Landroid/widget/TextView;)V

    .line 1096
    :cond_52
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetPointsListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    new-instance v5, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetPointsListener$1;

    invoke-direct {v5, p0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetPointsListener$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$GetPointsListener;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_5c} :catch_5d

    .line 1105
    .end local v0    # "formatter":Ljava/text/DecimalFormat;
    .end local v1    # "points":J
    .end local v3    # "strPoints":Ljava/lang/String;
    :cond_5c
    :goto_5c
    return-void

    .line 1101
    :catch_5d
    move-exception v4

    goto :goto_5c
.end method

.method public onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/io/FileNotFoundException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1109
    invoke-super {p0, p1, p2}, Lcom/samsung/privilege/util/http/HttpRQListener;->onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V

    .line 1110
    const-string v0, "campaign.detail"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(onFileNotFoundException|GetPointsListener):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    return-void
.end method

.method public onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1116
    invoke-super {p0, p1, p2}, Lcom/samsung/privilege/util/http/HttpRQListener;->onIOException(Ljava/io/IOException;Ljava/lang/Object;)V

    .line 1117
    const-string v0, "campaign.detail"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(onIOException|GetPointsListener):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/net/MalformedURLException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1123
    invoke-super {p0, p1, p2}, Lcom/samsung/privilege/util/http/HttpRQListener;->onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V

    .line 1124
    const-string v0, "campaign.detail"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(onMalformedURLException|GetPointsListener):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    return-void
.end method
