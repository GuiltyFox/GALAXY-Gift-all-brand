.class Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;
.super Ljava/lang/Object;
.source "AddMoneyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AddMoneyActivity$3;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/AddMoneyActivity$3;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AddMoneyActivity$3;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 149
    iput-object p1, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;->b:Lcom/samsung/privilege/activity/AddMoneyActivity$3;

    iput-object p2, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 17

    .prologue
    const/4 v15, 0x1

    const/4 v3, 0x0

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;->b:Lcom/samsung/privilege/activity/AddMoneyActivity$3;

    iget-object v2, v2, Lcom/samsung/privilege/activity/AddMoneyActivity$3;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/AddMoneyActivity;->a(Lcom/samsung/privilege/activity/AddMoneyActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 155
    :try_start_f
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;->a:Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "topupconfig_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;->b:Lcom/samsung/privilege/activity/AddMoneyActivity$3;

    iget-object v5, v5, Lcom/samsung/privilege/activity/AddMoneyActivity$3;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-static {v5}, Lcom/samsung/privilege/activity/AddMoneyActivity;->b(Lcom/samsung/privilege/activity/AddMoneyActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 158
    if-eqz v13, :cond_212

    .line 159
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v2, v15, :cond_212

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;->b:Lcom/samsung/privilege/activity/AddMoneyActivity$3;

    iget-object v2, v2, Lcom/samsung/privilege/activity/AddMoneyActivity$3;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    const v4, 0x7f1000c9

    invoke-virtual {v2, v4}, Lcom/samsung/privilege/activity/AddMoneyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v8, v0

    .line 163
    const-string/jumbo v10, ""

    .line 164
    const-string/jumbo v9, ""

    .line 165
    const-string/jumbo v6, ""

    .line 166
    const-string/jumbo v2, ""

    move v11, v3

    move v12, v3

    move-object v3, v6

    .line 168
    :goto_62
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v11, v4, :cond_14d

    .line 169
    invoke-virtual {v13, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 170
    const-string/jumbo v4, "id"

    invoke-static {v7, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 171
    const-string/jumbo v5, "label"

    invoke-static {v7, v5}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 172
    const-string/jumbo v6, "icon"

    invoke-static {v7, v6}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 173
    const-string/jumbo v14, "list"

    invoke-static {v7, v14}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 175
    if-nez v11, :cond_c5

    const-string/jumbo v14, "scc"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c5

    .line 176
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;->b:Lcom/samsung/privilege/activity/AddMoneyActivity$3;

    iget-object v4, v4, Lcom/samsung/privilege/activity/AddMoneyActivity$3;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    const v5, 0x7f1000c6

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/AddMoneyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 177
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;->b:Lcom/samsung/privilege/activity/AddMoneyActivity$3;

    iget-object v4, v4, Lcom/samsung/privilege/activity/AddMoneyActivity$3;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    const v5, 0x7f1000c8

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/AddMoneyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 178
    add-int/lit8 v4, v12, 0x1

    move-object v7, v2

    move-object v6, v3

    move-object v5, v9

    move v2, v4

    move-object v4, v10

    .line 168
    :goto_bc
    add-int/lit8 v3, v11, 0x1

    move v11, v3

    move-object v9, v5

    move-object v10, v4

    move v12, v2

    move-object v3, v6

    move-object v2, v7

    goto :goto_62

    .line 180
    :cond_c5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;->b:Lcom/samsung/privilege/activity/AddMoneyActivity$3;

    iget-object v2, v2, Lcom/samsung/privilege/activity/AddMoneyActivity$3;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/AddMoneyActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 181
    const v3, 0x7f04001e

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 183
    const v2, 0x7f1000d1

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    const v2, 0x7f1000ca

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/bzbs/data/AppSetting;->S:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;->b:Lcom/samsung/privilege/activity/AddMoneyActivity$3;

    iget-object v10, v10, Lcom/samsung/privilege/activity/AddMoneyActivity$3;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-static {v10}, Lcom/samsung/privilege/activity/AddMoneyActivity;->b(Lcom/samsung/privilege/activity/AddMoneyActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v10, "/"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 186
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;->b:Lcom/samsung/privilege/activity/AddMoneyActivity$3;

    iget-object v10, v10, Lcom/samsung/privilege/activity/AddMoneyActivity$3;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-virtual {v10}, Lcom/samsung/privilege/activity/AddMoneyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    sget-object v10, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v3, v10}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 188
    const v2, 0x7f1000d0

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    new-instance v2, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1$1;-><init>(Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 206
    add-int/lit8 v2, v12, 0x1

    .line 210
    goto/16 :goto_bc

    .line 214
    :cond_14d
    if-ne v12, v15, :cond_212

    .line 215
    if-eqz v2, :cond_212

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_212

    .line 216
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;->b:Lcom/samsung/privilege/activity/AddMoneyActivity$3;

    iget-object v5, v5, Lcom/samsung/privilege/activity/AddMoneyActivity$3;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/AddMoneyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/samsung/privilege/activity/AddMoneyCreditActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    const-string/jumbo v5, "issuer"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;->b:Lcom/samsung/privilege/activity/AddMoneyActivity$3;

    iget-object v6, v6, Lcom/samsung/privilege/activity/AddMoneyActivity$3;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-static {v6}, Lcom/samsung/privilege/activity/AddMoneyActivity;->b(Lcom/samsung/privilege/activity/AddMoneyActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string/jumbo v5, "cardId"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;->b:Lcom/samsung/privilege/activity/AddMoneyActivity$3;

    iget-object v6, v6, Lcom/samsung/privilege/activity/AddMoneyActivity$3;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-static {v6}, Lcom/samsung/privilege/activity/AddMoneyActivity;->c(Lcom/samsung/privilege/activity/AddMoneyActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string/jumbo v5, "channel"

    invoke-virtual {v4, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string/jumbo v5, "label"

    invoke-virtual {v4, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string/jumbo v5, "icon"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string/jumbo v3, "list_config"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;->b:Lcom/samsung/privilege/activity/AddMoneyActivity$3;

    iget-object v2, v2, Lcom/samsung/privilege/activity/AddMoneyActivity$3;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-virtual {v2, v4}, Lcom/samsung/privilege/activity/AddMoneyActivity;->startActivity(Landroid/content/Intent;)V

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Wallet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;->b:Lcom/samsung/privilege/activity/AddMoneyActivity$3;

    iget-object v3, v3, Lcom/samsung/privilege/activity/AddMoneyActivity$3;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-static {v3}, Lcom/samsung/privilege/activity/AddMoneyActivity;->b(Lcom/samsung/privilege/activity/AddMoneyActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Click "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;->b:Lcom/samsung/privilege/activity/AddMoneyActivity$3;

    iget-object v5, v5, Lcom/samsung/privilege/activity/AddMoneyActivity$3;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-static {v5}, Lcom/samsung/privilege/activity/AddMoneyActivity;->b(Lcom/samsung/privilege/activity/AddMoneyActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;->b:Lcom/samsung/privilege/activity/AddMoneyActivity$3;

    iget-object v2, v2, Lcom/samsung/privilege/activity/AddMoneyActivity$3;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/AddMoneyActivity;->finish()V
    :try_end_212
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_212} :catch_213

    .line 235
    :cond_212
    :goto_212
    return-void

    .line 232
    :catch_213
    move-exception v2

    .line 233
    invoke-static {}, Lcom/samsung/privilege/activity/AddMoneyActivity;->f()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(checkWalletCardConfig|Exception):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_212
.end method
