.class Lcom/samsung/privilege/activity/CardsUsedActivity$3$1;
.super Ljava/lang/Object;
.source "CardsUsedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CardsUsedActivity$3;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/CardsUsedActivity$3;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CardsUsedActivity$3;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 304
    iput-object p1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$3;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$3;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$3;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->d(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 309
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 311
    new-instance v1, Lcom/bzbs/bean/CardsList;

    invoke-direct {v1, v0}, Lcom/bzbs/bean/CardsList;-><init>(Lorg/json/JSONObject;)V

    .line 312
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$3;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$3;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->a(Lcom/samsung/privilege/activity/CardsUsedActivity;Lcom/bzbs/bean/CardsList;)Lcom/bzbs/bean/CardsList;

    .line 319
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "###,###,###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$3;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CardsUsedActivity$3;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$3;

    iget-object v2, v2, Lcom/samsung/privilege/activity/CardsUsedActivity$3;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/CardsUsedActivity;->c(Lcom/samsung/privilege/activity/CardsUsedActivity;)Lcom/bzbs/bean/CardsList;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/CardsList;->cardId:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$3;

    iget-object v3, v3, Lcom/samsung/privilege/activity/CardsUsedActivity$3;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v3}, Lcom/samsung/privilege/activity/CardsUsedActivity;->c(Lcom/samsung/privilege/activity/CardsUsedActivity;)Lcom/bzbs/bean/CardsList;

    move-result-object v3

    iget-wide v4, v3, Lcom/bzbs/bean/CardsList;->Amount:D

    invoke-virtual {v0, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 321
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$3;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CardsUsedActivity$3;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->e(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$3;

    iget-object v3, v3, Lcom/samsung/privilege/activity/CardsUsedActivity$3;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    const v4, 0x7f090387

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$3;

    iget-object v3, v3, Lcom/samsung/privilege/activity/CardsUsedActivity$3;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v3}, Lcom/samsung/privilege/activity/CardsUsedActivity;->c(Lcom/samsung/privilege/activity/CardsUsedActivity;)Lcom/bzbs/bean/CardsList;

    move-result-object v3

    iget-wide v4, v3, Lcom/bzbs/bean/CardsList;->Amount:D

    invoke-virtual {v0, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$3;

    iget-object v2, v2, Lcom/samsung/privilege/activity/CardsUsedActivity$3;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    const v3, 0x7f090369

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$3;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$3;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->f(Lcom/samsung/privilege/activity/CardsUsedActivity;)Z

    move-result v0

    if-nez v0, :cond_113

    .line 325
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$3;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$3;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->g(Lcom/samsung/privilege/activity/CardsUsedActivity;)V

    .line 326
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$3;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$3;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity;->c:Ljava/lang/String;

    if-eqz v0, :cond_113

    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$3;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$3;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity;->c:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_113

    .line 327
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$3;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$3;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$3;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CardsUsedActivity$3;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 328
    sget-object v0, Lcom/samsung/privilege/activity/CardsUsedActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "save : cache_name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$3;

    iget-object v2, v2, Lcom/samsung/privilege/activity/CardsUsedActivity$3;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    iget-object v2, v2, Lcom/samsung/privilege/activity/CardsUsedActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " response_text := "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$3;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$3;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$3$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$3;

    iget-object v2, v2, Lcom/samsung/privilege/activity/CardsUsedActivity$3;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bzbs/util/LocalFileHelper;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_113
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_113} :catch_114

    .line 335
    :cond_113
    :goto_113
    return-void

    .line 332
    :catch_114
    move-exception v0

    .line 333
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_113
.end method
