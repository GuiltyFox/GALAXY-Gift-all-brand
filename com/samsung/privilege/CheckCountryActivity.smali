.class public Lcom/samsung/privilege/CheckCountryActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "CheckCountryActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 16
    const-class v0, Lcom/samsung/privilege/CheckCountryActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/CheckCountryActivity;->TAG:Ljava/lang/String;

    .line 14
    return-void
.end method

.method private initialLayout()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 32
    const v5, 0x7f0c02de

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/CheckCountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 33
    .local v3, "layoutLoading":Landroid/widget/LinearLayout;
    const v5, 0x7f0c02df

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/CheckCountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 34
    .local v4, "layoutThai":Landroid/widget/LinearLayout;
    const v5, 0x7f0c02e0

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/CheckCountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 35
    .local v2, "layoutLaos":Landroid/widget/LinearLayout;
    const v5, 0x7f0c02e1

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/CheckCountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 37
    .local v1, "layoutCambodia":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 39
    invoke-virtual {p0}, Lcom/samsung/privilege/CheckCountryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "appId":Ljava/lang/String;
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 41
    if-nez v0, :cond_42

    .line 42
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 43
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 44
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 54
    :cond_41
    :goto_41
    return-void

    .line 46
    :cond_42
    const-string v5, "402705486466922"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 47
    invoke-virtual {p0, v7}, Lcom/samsung/privilege/CheckCountryActivity;->doThai(Landroid/view/View;)V

    goto :goto_41

    .line 48
    :cond_4e
    const-string v5, "768830479847872"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 49
    invoke-virtual {p0, v7}, Lcom/samsung/privilege/CheckCountryActivity;->doLaos(Landroid/view/View;)V

    goto :goto_41

    .line 50
    :cond_5a
    const-string v5, "1525635597652592"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 51
    invoke-virtual {p0, v7}, Lcom/samsung/privilege/CheckCountryActivity;->doCambodia(Landroid/view/View;)V

    goto :goto_41
.end method


# virtual methods
.method public doCambodia(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    const-string v2, "GIFTDATA"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/privilege/CheckCountryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 79
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "APPID"

    const-string v3, "1525635597652592"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/CheckCountryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/CheckCountryActivity;->startActivity(Landroid/content/Intent;)V

    .line 84
    return-void
.end method

.method public doLaos(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    const-string v2, "GIFTDATA"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/privilege/CheckCountryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 69
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "APPID"

    const-string v3, "768830479847872"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 72
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/CheckCountryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/CheckCountryActivity;->startActivity(Landroid/content/Intent;)V

    .line 74
    return-void
.end method

.method public doThai(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    const-string v2, "GIFTDATA"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/privilege/CheckCountryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 59
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "APPID"

    const-string v3, "402705486466922"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/CheckCountryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/CheckCountryActivity;->startActivity(Landroid/content/Intent;)V

    .line 64
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/privilege/CheckCountryActivity;->TAG:Ljava/lang/String;

    const-string v1, "public void onCreate(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/CheckCountryActivity;->requestWindowFeature(I)Z

    .line 24
    const v0, 0x7f0300b8

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/CheckCountryActivity;->setContentView(I)V

    .line 26
    sput-object p0, Lcom/samsung/privilege/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    .line 28
    invoke-direct {p0}, Lcom/samsung/privilege/CheckCountryActivity;->initialLayout()V

    .line 29
    return-void
.end method
