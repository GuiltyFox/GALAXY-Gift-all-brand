.class Lcom/samsung/privilege/activity/HistoryActivity$4;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/HistoryActivity;->g()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/HistoryActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/HistoryActivity;)V
    .registers 2

    .prologue
    .line 152
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 155
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 156
    iget-object v2, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/HistoryActivity;->g(Lcom/samsung/privilege/activity/HistoryActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_25

    .line 157
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v4}, Lcom/samsung/privilege/activity/HistoryActivity;->g(Lcom/samsung/privilege/activity/HistoryActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 158
    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_25

    .line 466
    :cond_24
    :goto_24
    return-void

    .line 162
    :cond_25
    iget-object v2, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/samsung/privilege/activity/HistoryActivity;->a(Lcom/samsung/privilege/activity/HistoryActivity;J)J

    .line 165
    :try_start_2e
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/HistoryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 166
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_50

    .line 167
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    const v2, 0x7f090251

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_24

    .line 463
    :catch_4e
    move-exception v0

    goto :goto_24

    .line 171
    :cond_50
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryActivity;->h(Lcom/samsung/privilege/activity/HistoryActivity;)Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->a(I)Lcom/bzbs/bean/Purchasing;

    move-result-object v2

    .line 173
    if-eqz v2, :cond_24

    .line 177
    iget-object v0, v2, Lcom/bzbs/bean/Purchasing;->Type:Ljava/lang/String;

    const-string/jumbo v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    iget-boolean v0, v2, Lcom/bzbs/bean/Purchasing;->Delivered:Z

    if-ne v0, v6, :cond_72

    .line 178
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/samsung/privilege/activity/HistoryActivity;->a(Lcom/samsung/privilege/activity/HistoryActivity;Lcom/bzbs/bean/Purchasing;Z)V

    goto :goto_24

    .line 179
    :cond_72
    iget-object v0, v2, Lcom/bzbs/bean/Purchasing;->Type:Ljava/lang/String;

    const-string/jumbo v3, "8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    iget-object v0, v2, Lcom/bzbs/bean/Purchasing;->PointType:Ljava/lang/String;

    const-string/jumbo v3, "get"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 181
    :cond_88
    iget-object v0, v2, Lcom/bzbs/bean/Purchasing;->Type:Ljava/lang/String;

    const-string/jumbo v3, "6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d6

    .line 182
    iget-boolean v0, v2, Lcom/bzbs/bean/Purchasing;->IsInstalledApp:Z

    if-nez v0, :cond_24

    .line 184
    iget-object v0, v2, Lcom/bzbs/bean/Purchasing;->InstallPackageName:Ljava/lang/String;

    if-eqz v0, :cond_101

    iget-object v0, v2, Lcom/bzbs/bean/Purchasing;->InstallPackageName:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_101

    .line 185
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    iget-object v1, v2, Lcom/bzbs/bean/Purchasing;->InstallPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/HistoryActivity;->a(Lcom/samsung/privilege/activity/HistoryActivity;Ljava/lang/String;)Z

    move-result v0

    .line 190
    :goto_ae
    if-nez v0, :cond_103

    .line 192
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 193
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    const v3, 0x7f0903ed

    invoke-virtual {v1, v3}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 194
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    const v3, 0x7f090326

    invoke-virtual {v1, v3}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    const v4, 0x7f090333

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/privilege/activity/HistoryActivity$4$2;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/HistoryActivity$4$2;-><init>(Lcom/samsung/privilege/activity/HistoryActivity$4;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    const v4, 0x7f090344

    .line 198
    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/privilege/activity/HistoryActivity$4$1;

    invoke-direct {v4, p0, v2}, Lcom/samsung/privilege/activity/HistoryActivity$4$1;-><init>(Lcom/samsung/privilege/activity/HistoryActivity$4;Lcom/bzbs/bean/Purchasing;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 213
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_24

    :cond_101
    move v0, v1

    .line 187
    goto :goto_ae

    .line 218
    :cond_103
    new-instance v3, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 219
    const-string/jumbo v0, ""

    .line 221
    iget-object v0, v2, Lcom/bzbs/bean/Purchasing;->VerifyTypeAndroid:Ljava/lang/String;

    const-string/jumbo v1, "manual"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e0

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/bzbs/bean/Purchasing;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/verify"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 276
    :goto_13a
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryActivity;->i(Lcom/samsung/privilege/activity/HistoryActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "verify url="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    iget-object v2, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    const-string/jumbo v4, ""

    iget-object v5, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    const v6, 0x7f090281

    invoke-virtual {v5, v6}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v2, v4, v5, v6, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/privilege/activity/HistoryActivity;->a(Lcom/samsung/privilege/activity/HistoryActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_170} :catch_4e

    .line 280
    :try_start_170
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/HistoryActivity;->j(Lcom/samsung/privilege/activity/HistoryActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const v2, 0x102000b

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 281
    if-eqz v0, :cond_1a5

    .line 282
    iget-object v2, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/HistoryActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 283
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 284
    iget-object v2, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_1a5
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_1a5} :catch_3ed

    .line 290
    :cond_1a5
    :goto_1a5
    :try_start_1a5
    new-instance v0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    iget-object v2, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    .line 291
    invoke-virtual {v0, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 292
    invoke-virtual {v0, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 293
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 294
    invoke-virtual {v0, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    .line 295
    invoke-virtual {v1}, Lcom/samsung/privilege/activity/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 296
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/HistoryActivity$4$5;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/HistoryActivity$4$5;-><init>(Lcom/samsung/privilege/activity/HistoryActivity$4;)V

    .line 297
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_24

    .line 225
    :cond_1e0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\"campaign_id\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/bzbs/bean/Purchasing;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",\"token\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    const-string/jumbo v1, ""
    :try_end_215
    .catch Ljava/lang/Exception; {:try_start_1a5 .. :try_end_215} :catch_4e

    .line 236
    :try_start_215
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 237
    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_228
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_215 .. :try_end_228} :catch_2cf
    .catch Ljava/lang/Exception; {:try_start_215 .. :try_end_228} :catch_4e

    move-result-object v0

    .line 242
    :goto_229
    :try_start_229
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 243
    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 245
    const-string/jumbo v4, ""

    .line 246
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "api/main/log_verify"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    const-string/jumbo v4, "encrypt"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, " "

    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 251
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 252
    iget-object v4, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    const v5, 0x7f0903ed

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 253
    iget-object v4, v2, Lcom/bzbs/bean/Purchasing;->InstallingMessage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    const v6, 0x7f090333

    invoke-virtual {v5, v6}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/samsung/privilege/activity/HistoryActivity$4$4;

    invoke-direct {v6, p0}, Lcom/samsung/privilege/activity/HistoryActivity$4$4;-><init>(Lcom/samsung/privilege/activity/HistoryActivity$4;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    const v6, 0x7f090344

    .line 257
    invoke-virtual {v5, v6}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/samsung/privilege/activity/HistoryActivity$4$3;

    invoke-direct {v6, p0, v2}, Lcom/samsung/privilege/activity/HistoryActivity$4$3;-><init>(Lcom/samsung/privilege/activity/HistoryActivity$4;Lcom/bzbs/bean/Purchasing;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 272
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 273
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    move-object v1, v0

    goto/16 :goto_13a

    .line 238
    :catch_2cf
    move-exception v0

    .line 239
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_229

    .line 349
    :cond_2d6
    iget-object v0, v2, Lcom/bzbs/bean/Purchasing;->Type:Ljava/lang/String;

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3bb

    iget-boolean v0, v2, Lcom/bzbs/bean/Purchasing;->IsUsed:Z

    if-nez v0, :cond_3bb

    iget-boolean v0, v2, Lcom/bzbs/bean/Purchasing;->Delivered:Z

    if-nez v0, :cond_3bb

    .line 350
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 351
    iget-object v3, v2, Lcom/bzbs/bean/Purchasing;->AgencyName:Ljava/lang/String;

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Lcom/bzbs/bean/Purchasing;->Name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\r\n\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 354
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    const v5, 0x7f09009a

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    iget v4, v2, Lcom/bzbs/bean/Purchasing;->MinutesValidAfterUsed:I

    if-lez v4, :cond_383

    .line 356
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    const v5, 0x7f09009b

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v2, Lcom/bzbs/bean/Purchasing;->MinutesValidAfterUsed:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    const v5, 0x7f09009c

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    :cond_383
    iget-object v4, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    const v5, 0x7f090368

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 359
    iget-object v5, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    const v6, 0x7f0900e1

    invoke-virtual {v5, v6}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 360
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 362
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/samsung/privilege/activity/HistoryActivity$4$7;

    invoke-direct {v3, p0, v2}, Lcom/samsung/privilege/activity/HistoryActivity$4$7;-><init>(Lcom/samsung/privilege/activity/HistoryActivity$4;Lcom/bzbs/bean/Purchasing;)V

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/samsung/privilege/activity/HistoryActivity$4$6;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/HistoryActivity$4$6;-><init>(Lcom/samsung/privilege/activity/HistoryActivity$4;)V

    .line 444
    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 449
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 450
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_24

    .line 453
    :cond_3bb
    iget-object v0, v2, Lcom/bzbs/bean/Purchasing;->Type:Ljava/lang/String;

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d2

    iget-boolean v0, v2, Lcom/bzbs/bean/Purchasing;->IsUsed:Z

    if-ne v0, v6, :cond_3d2

    .line 454
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/samsung/privilege/activity/HistoryActivity;->b(Lcom/samsung/privilege/activity/HistoryActivity;Lcom/bzbs/bean/Purchasing;Z)V

    goto/16 :goto_24

    .line 455
    :cond_3d2
    iget-object v0, v2, Lcom/bzbs/bean/Purchasing;->Type:Ljava/lang/String;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e5

    .line 456
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/samsung/privilege/activity/HistoryActivity;->c(Lcom/samsung/privilege/activity/HistoryActivity;Lcom/bzbs/bean/Purchasing;Z)V

    goto/16 :goto_24

    .line 458
    :cond_3e5
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->a:Lcom/samsung/privilege/activity/HistoryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/samsung/privilege/activity/HistoryActivity;->b(Lcom/samsung/privilege/activity/HistoryActivity;Lcom/bzbs/bean/Purchasing;Z)V
    :try_end_3eb
    .catch Ljava/lang/Exception; {:try_start_229 .. :try_end_3eb} :catch_4e

    goto/16 :goto_24

    .line 286
    :catch_3ed
    move-exception v0

    goto/16 :goto_1a5
.end method
