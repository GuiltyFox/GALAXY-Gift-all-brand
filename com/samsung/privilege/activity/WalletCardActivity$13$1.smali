.class Lcom/samsung/privilege/activity/WalletCardActivity$13$1;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$13;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/WalletCardActivity$13;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$13;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$13$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$13;

    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$13$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v0, 0x0

    .line 1125
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$13$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$13;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$13;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity;->a:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1128
    :try_start_d
    new-instance v3, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$13$1;->a:Ljava/lang/String;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v2, v0

    .line 1131
    :goto_15
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_18c

    .line 1132
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1133
    const-string/jumbo v4, "issuer"

    invoke-static {v1, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1135
    iget-object v5, p0, Lcom/samsung/privilege/activity/WalletCardActivity$13$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$13;

    iget-object v5, v5, Lcom/samsung/privilege/activity/WalletCardActivity$13;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v5}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_104

    .line 1136
    const-string/jumbo v0, "cardId"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1137
    const-string/jumbo v0, "active"

    invoke-static {v1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1138
    const-string/jumbo v6, "amount"

    invoke-static {v1, v6}, Lcom/bzbs/util/JsonUtil;->f(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v6

    .line 1139
    const-string/jumbo v8, "name"

    invoke-static {v1, v8}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1140
    const-string/jumbo v9, "description"

    invoke-static {v1, v9}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1143
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$13$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$13;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$13;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v8}, Lcom/bzbs/data/UserLogin;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1144
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$13$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$13;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$13;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 1145
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v9, "#,###,##0.00"

    invoke-direct {v1, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1146
    iget-object v9, p0, Lcom/samsung/privilege/activity/WalletCardActivity$13$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$13;

    iget-object v9, v9, Lcom/samsung/privilege/activity/WalletCardActivity$13;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v9}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v1, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v4, v1}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1148
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$13$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$13;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$13;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity;->D:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_90} :catch_162

    .line 1151
    if-ne v0, v10, :cond_104

    .line 1152
    :try_start_92
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$13$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$13;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$13;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity$13$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$13;

    iget-object v4, v4, Lcom/samsung/privilege/activity/WalletCardActivity$13;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v4}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/bzbs/data/UserLogin;->v(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1153
    if-eqz v1, :cond_109

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_109

    .line 1154
    iget-object v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity$13$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$13;

    iget-object v4, v4, Lcom/samsung/privilege/activity/WalletCardActivity$13;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v4, v4, Lcom/samsung/privilege/activity/WalletCardActivity;->i:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/privilege/activity/WalletCardActivity$13$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$13;

    iget-object v7, v7, Lcom/samsung/privilege/activity/WalletCardActivity$13;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v8, 0x7f090391

    invoke-virtual {v7, v8}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/privilege/activity/WalletCardActivity$13$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$13;

    iget-object v6, v6, Lcom/samsung/privilege/activity/WalletCardActivity$13;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v7, 0x7f090373

    invoke-virtual {v6, v7}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1159
    :goto_f3
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$13$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$13;

    iget-boolean v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$13;->a:Z

    if-ne v1, v10, :cond_183

    .line 1160
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$13$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$13;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$13;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity;->u:Landroid/widget/ScrollView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1131
    :cond_104
    :goto_104
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_15

    .line 1156
    :cond_109
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$13$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$13;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$13;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity;->i:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/privilege/activity/WalletCardActivity$13$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$13;

    iget-object v6, v6, Lcom/samsung/privilege/activity/WalletCardActivity$13;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v7, 0x7f090391

    invoke-virtual {v6, v7}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " 0.00 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/privilege/activity/WalletCardActivity$13$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$13;

    iget-object v6, v6, Lcom/samsung/privilege/activity/WalletCardActivity$13;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v7, 0x7f090373

    invoke-virtual {v6, v7}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_140} :catch_141

    goto :goto_f3

    .line 1165
    :catch_141
    move-exception v1

    .line 1166
    :try_start_142
    invoke-static {}, Lcom/samsung/privilege/activity/WalletCardActivity;->f()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ERROR:getWalletCardList:onSuccess:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_161} :catch_162

    goto :goto_104

    .line 1182
    :catch_162
    move-exception v0

    .line 1183
    invoke-static {}, Lcom/samsung/privilege/activity/WalletCardActivity;->f()Ljava/lang/String;

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

    .line 1185
    :cond_182
    :goto_182
    return-void

    .line 1162
    :cond_183
    :try_start_183
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$13$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$13;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$13;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1, v5}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)V
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_183 .. :try_end_18a} :catch_141

    goto/16 :goto_104

    .line 1171
    :cond_18c
    if-nez v0, :cond_1a2

    .line 1172
    :try_start_18e
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$13$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$13;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$13;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->v:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1173
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$13$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$13;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$13;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->x:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1176
    :cond_1a2
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$13$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$13;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$13;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->ab:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1b8

    .line 1178
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$13$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$13;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$13;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    goto :goto_182

    .line 1179
    :cond_1b8
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$13$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$13;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$13;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->ac:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_182

    .line 1180
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$13$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$13;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$13;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z
    :try_end_1cd
    .catch Ljava/lang/Exception; {:try_start_18e .. :try_end_1cd} :catch_162

    goto :goto_182
.end method
