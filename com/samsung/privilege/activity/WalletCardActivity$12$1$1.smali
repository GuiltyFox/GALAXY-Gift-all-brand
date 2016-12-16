.class Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$12$1;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 866
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x3e8

    .line 870
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->i(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 873
    :try_start_f
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 874
    const-string/jumbo v1, "result"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 875
    const-string/jumbo v1, "code"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 876
    const-string/jumbo v2, "expirein"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_29} :catch_10c

    move-result-wide v2

    .line 880
    :try_start_2a
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->ac:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 881
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->ad:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 882
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->X:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->af:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$1;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$1;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 905
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->ag:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$2;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$2;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 928
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->af:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->performClick()Z

    .line 930
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->ah:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;

    invoke-direct {v4, p0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$3;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1022
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->aj:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$4;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$4;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1029
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->V:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_ae

    .line 1030
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->V:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1033
    :cond_ae
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v6, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    new-instance v0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$5;

    mul-long/2addr v2, v8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$5;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;JJ)V

    .line 1047
    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1$5;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, v6, Lcom/samsung/privilege/activity/WalletCardActivity;->V:Landroid/os/CountDownTimer;
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_c3} :catch_111
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_c3} :catch_10c

    .line 1052
    :goto_c3
    :try_start_c3
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10b

    .line 1053
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity;->e:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity;->f:Landroid/widget/RelativeLayout;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Lcom/samsung/privilege/activity/WalletCardActivity;Landroid/view/View;Landroid/view/View;ZZ)V

    .line 1054
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->G:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1055
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/util/ScreenUtil;->c(Landroid/app/Activity;)V

    .line 1056
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$12$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$12;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$12;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->b(Lcom/samsung/privilege/activity/WalletCardActivity;Z)Z
    :try_end_10b
    .catch Lorg/json/JSONException; {:try_start_c3 .. :try_end_10b} :catch_10c

    .line 1061
    :cond_10b
    :goto_10b
    return-void

    .line 1058
    :catch_10c
    move-exception v0

    .line 1059
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_10b

    .line 1048
    :catch_111
    move-exception v0

    goto :goto_c3
.end method
