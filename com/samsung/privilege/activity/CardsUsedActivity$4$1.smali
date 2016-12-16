.class Lcom/samsung/privilege/activity/CardsUsedActivity$4$1;
.super Ljava/lang/Object;
.source "CardsUsedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CardsUsedActivity$4;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/CardsUsedActivity$4;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CardsUsedActivity$4;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 454
    iput-object p1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$4$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$4;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$4$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 459
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$4$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 460
    const-string/jumbo v1, "result"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 461
    const-string/jumbo v1, "code"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 462
    const-string/jumbo v2, "expirein"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    .line 464
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$4$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$4;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/samsung/privilege/activity/CardsUsedActivity;->a(Lcom/samsung/privilege/activity/CardsUsedActivity;Z)Z

    .line 467
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$4$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$4;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    const v4, 0x7f100147

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$4$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$4;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->h(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$4$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$4;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->i(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$4$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$4;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->j(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$4$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$4;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->k(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$4$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$4;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v4, "1033"

    invoke-static {v0, v4}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;Ljava/lang/String;)Z

    .line 473
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$4$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$4;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 475
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$4$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$4;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->a(Lcom/samsung/privilege/activity/CardsUsedActivity;ZLjava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$4$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$4;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->l(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$4$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$4;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->m(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 481
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$4$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$4;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->a()V

    .line 482
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$4$1;->b:Lcom/samsung/privilege/activity/CardsUsedActivity$4;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$4;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/privilege/activity/CardsUsedActivity;->a(J)V
    :try_end_b1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_b1} :catch_b2

    .line 487
    :goto_b1
    return-void

    .line 483
    :catch_b2
    move-exception v0

    .line 484
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_b1
.end method
