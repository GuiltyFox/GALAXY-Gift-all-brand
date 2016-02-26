.class Lcom/samsung/privilege/activity/CampaignListActivity$GetPointsListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "CampaignListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetPointsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignListActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity;)V
    .registers 2

    .prologue
    .line 1935
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$GetPointsListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignListActivity$GetPointsListener;)Lcom/samsung/privilege/activity/CampaignListActivity;
    .registers 2

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$GetPointsListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 12
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 1938
    const-string v5, "CampaignListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(GetPointsListener|onComplete)response={"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    const/16 v5, 0xc8

    if-ne p1, v5, :cond_44

    .line 1941
    :try_start_22
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1942
    .local v2, "points":J
    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignListActivity$GetPointsListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2, v3}, Lcom/samsung/privilege/UserLogin;->SetPoints(Landroid/content/Context;J)Z

    .line 1944
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v5, "#,###,###"

    invoke-direct {v1, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1945
    .local v1, "formatter":Ljava/text/DecimalFormat;
    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    .line 1947
    .local v4, "strPoints":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignListActivity$GetPointsListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    new-instance v6, Lcom/samsung/privilege/activity/CampaignListActivity$GetPointsListener$1;

    invoke-direct {v6, p0, v4}, Lcom/samsung/privilege/activity/CampaignListActivity$GetPointsListener$1;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity$GetPointsListener;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/samsung/privilege/activity/CampaignListActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_44} :catch_45

    .line 1975
    .end local v1    # "formatter":Ljava/text/DecimalFormat;
    .end local v2    # "points":J
    .end local v4    # "strPoints":Ljava/lang/String;
    :cond_44
    :goto_44
    return-void

    .line 1971
    :catch_45
    move-exception v0

    .line 1972
    .local v0, "ex":Ljava/lang/Exception;
    const-string v5, "CampaignListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(GetPointsListener|Exception):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44
.end method

.method public onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/io/FileNotFoundException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1979
    invoke-super {p0, p1, p2}, Lcom/samsung/privilege/util/http/HttpRQListener;->onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V

    .line 1980
    const-string v0, "CampaignListActivity"

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

    .line 1981
    return-void
.end method

.method public onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1985
    invoke-super {p0, p1, p2}, Lcom/samsung/privilege/util/http/HttpRQListener;->onIOException(Ljava/io/IOException;Ljava/lang/Object;)V

    .line 1986
    const-string v0, "CampaignListActivity"

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

    .line 1987
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/net/MalformedURLException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 1991
    invoke-super {p0, p1, p2}, Lcom/samsung/privilege/util/http/HttpRQListener;->onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V

    .line 1992
    const-string v0, "CampaignListActivity"

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

    .line 1993
    return-void
.end method
