.class Lcom/samsung/privilege/activity/ProfileActivity$25$1;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileActivity$25;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/ProfileActivity$25;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileActivity$25;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1471
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileActivity$25$1;->b:Lcom/samsung/privilege/activity/ProfileActivity$25;

    iput-object p2, p0, Lcom/samsung/privilege/activity/ProfileActivity$25$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1475
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity$25$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1477
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2d

    .line 1481
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$25$1;->b:Lcom/samsung/privilege/activity/ProfileActivity$25;

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity$25;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    const v1, 0x7f1001d5

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1489
    :goto_1c
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$25$1;->b:Lcom/samsung/privilege/activity/ProfileActivity$25;

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity$25;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    const v1, 0x7f1001d6

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1493
    :goto_2c
    return-void

    .line 1486
    :cond_2d
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$25$1;->b:Lcom/samsung/privilege/activity/ProfileActivity$25;

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity$25;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    const v1, 0x7f1001d5

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3d

    goto :goto_1c

    .line 1490
    :catch_3d
    move-exception v0

    .line 1491
    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity$25$1;->b:Lcom/samsung/privilege/activity/ProfileActivity$25;

    iget-object v1, v1, Lcom/samsung/privilege/activity/ProfileActivity$25;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/ProfileActivity;->d(Lcom/samsung/privilege/activity/ProfileActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(getWalletCardList|Exception):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c
.end method
