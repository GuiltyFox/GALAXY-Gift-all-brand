.class Lcom/samsung/privilege/activity/ProfileActivity$20$1;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileActivity$20;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/ProfileActivity$20;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileActivity$20;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1721
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileActivity$20$1;->b:Lcom/samsung/privilege/activity/ProfileActivity$20;

    iput-object p2, p0, Lcom/samsung/privilege/activity/ProfileActivity$20$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1724
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/samsung/privilege/activity/ProfileActivity$20$1;->a:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1727
    iget-object v3, p0, Lcom/samsung/privilege/activity/ProfileActivity$20$1;->b:Lcom/samsung/privilege/activity/ProfileActivity$20;

    iget-object v3, v3, Lcom/samsung/privilege/activity/ProfileActivity$20;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "Token"

    invoke-static {v0, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1728
    iget-object v3, p0, Lcom/samsung/privilege/activity/ProfileActivity$20$1;->b:Lcom/samsung/privilege/activity/ProfileActivity$20;

    iget-object v3, v3, Lcom/samsung/privilege/activity/ProfileActivity$20;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "Locale"

    invoke-static {v0, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1730
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$20$1;->b:Lcom/samsung/privilege/activity/ProfileActivity$20;

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity$20;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 1732
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$20$1;->b:Lcom/samsung/privilege/activity/ProfileActivity$20;

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity$20;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    iget-object v3, p0, Lcom/samsung/privilege/activity/ProfileActivity$20$1;->b:Lcom/samsung/privilege/activity/ProfileActivity$20;

    iget-object v3, v3, Lcom/samsung/privilege/activity/ProfileActivity$20;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    const v4, 0x7f0902d1

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->b(Lcom/samsung/privilege/activity/ProfileActivity;Ljava/lang/String;)V

    .line 1735
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$20$1;->b:Lcom/samsung/privilege/activity/ProfileActivity$20;

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity$20;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/ProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1736
    iget-object v3, p0, Lcom/samsung/privilege/activity/ProfileActivity$20$1;->b:Lcom/samsung/privilege/activity/ProfileActivity$20;

    iget-object v3, v3, Lcom/samsung/privilege/activity/ProfileActivity$20;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/ProfileActivity;->finish()V

    .line 1737
    const-string/jumbo v3, "force_update"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1738
    iget-object v3, p0, Lcom/samsung/privilege/activity/ProfileActivity$20$1;->b:Lcom/samsung/privilege/activity/ProfileActivity$20;

    iget-object v3, v3, Lcom/samsung/privilege/activity/ProfileActivity$20;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-virtual {v3, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_66} :catch_c5

    .line 1757
    :cond_66
    :goto_66
    :try_start_66
    const-string/jumbo v3, ""

    .line 1758
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$20$1;->b:Lcom/samsung/privilege/activity/ProfileActivity$20;

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity$20;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    const v4, 0x7f1001be

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v4, v3

    move v3, v1

    .line 1759
    :goto_78
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_151

    .line 1760
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1761
    const v5, 0x7f1001c1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/control/toggle/ToggleButton;

    .line 1763
    invoke-virtual {v1}, Lcom/samsung/privilege/control/toggle/ToggleButton;->a()Z

    move-result v5

    if-ne v5, v2, :cond_11f

    .line 1764
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/privilege/control/toggle/ToggleButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "true]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_c0} :catch_15d

    move-result-object v1

    .line 1759
    :goto_c1
    add-int/lit8 v3, v3, 0x1

    move-object v4, v1

    goto :goto_78

    .line 1741
    :catch_c5
    move-exception v0

    move-object v3, v0

    .line 1745
    :try_start_c7
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$20$1;->b:Lcom/samsung/privilege/activity/ProfileActivity$20;

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity$20;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;)Z
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_d2} :catch_f9

    move-result v0

    if-eqz v0, :cond_11d

    move v0, v2

    .line 1751
    :goto_d6
    if-ne v0, v2, :cond_66

    .line 1752
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$20$1;->b:Lcom/samsung/privilege/activity/ProfileActivity$20;

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity$20;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->b(Lcom/samsung/privilege/activity/ProfileActivity;Ljava/lang/String;)V

    goto/16 :goto_66

    .line 1748
    :catch_f9
    move-exception v0

    .line 1749
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileActivity$20$1;->b:Lcom/samsung/privilege/activity/ProfileActivity$20;

    iget-object v4, v4, Lcom/samsung/privilege/activity/ProfileActivity$20;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-static {v4}, Lcom/samsung/privilege/activity/ProfileActivity;->b(Lcom/samsung/privilege/activity/ProfileActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception := "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11d
    move v0, v1

    goto :goto_d6

    .line 1766
    :cond_11f
    :try_start_11f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/privilege/control/toggle/ToggleButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "false]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_c1

    .line 1770
    :cond_151
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$20$1;->b:Lcom/samsung/privilege/activity/ProfileActivity$20;

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity$20;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/bzbs/data/UserLogin;->q(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_15c} :catch_15d

    .line 1774
    :goto_15c
    return-void

    .line 1771
    :catch_15d
    move-exception v0

    goto :goto_15c
.end method
