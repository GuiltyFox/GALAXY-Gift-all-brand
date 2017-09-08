.class Lcom/samsung/privilege/util/DialogProfile$5$1;
.super Ljava/lang/Object;
.source "DialogProfile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogProfile$5;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/util/DialogProfile$5;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogProfile$5;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 243
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogProfile$5$1;->b:Lcom/samsung/privilege/util/DialogProfile$5;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogProfile$5$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v0, 0x0

    .line 247
    :try_start_2
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogProfile$5$1;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/privilege/util/DialogProfile;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/bean/SubDistrict;->GetArrayList(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 248
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 249
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 251
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 252
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move v2, v0

    .line 253
    :goto_2a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_9e

    .line 254
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/SubDistrict;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_36} :catch_1ba

    .line 257
    :try_start_36
    iget-object v1, v0, Lcom/bzbs/bean/SubDistrict;->DistrictCode:Ljava/lang/String;

    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_61

    .line 258
    invoke-virtual {v0}, Lcom/bzbs/bean/SubDistrict;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/SubDistrict;

    .line 259
    invoke-static {}, Lcom/samsung/privilege/util/DialogProfile;->d()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "1054"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_90

    .line 260
    iget-object v8, v1, Lcom/bzbs/bean/SubDistrict;->DistrictName:Ljava/lang/String;

    iput-object v8, v1, Lcom/bzbs/bean/SubDistrict;->CaptionString:Ljava/lang/String;

    .line 264
    :goto_59
    iget-object v8, v1, Lcom/bzbs/bean/SubDistrict;->DistrictCode:Ljava/lang/String;

    invoke-interface {v6, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_61} :catch_95

    .line 272
    :cond_61
    :goto_61
    :try_start_61
    iget-object v1, v0, Lcom/bzbs/bean/SubDistrict;->ProvinceCode:Ljava/lang/String;

    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    .line 273
    invoke-virtual {v0}, Lcom/bzbs/bean/SubDistrict;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/SubDistrict;

    .line 274
    invoke-static {}, Lcom/samsung/privilege/util/DialogProfile;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, "1054"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 275
    iget-object v1, v0, Lcom/bzbs/bean/SubDistrict;->ProvinceName:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/SubDistrict;->CaptionString:Ljava/lang/String;

    .line 279
    :goto_84
    iget-object v1, v0, Lcom/bzbs/bean/SubDistrict;->ProvinceCode:Ljava/lang/String;

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_8c} :catch_9c

    .line 253
    :cond_8c
    :goto_8c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2a

    .line 262
    :cond_90
    :try_start_90
    iget-object v8, v1, Lcom/bzbs/bean/SubDistrict;->DistrictName_EN:Ljava/lang/String;

    iput-object v8, v1, Lcom/bzbs/bean/SubDistrict;->CaptionString:Ljava/lang/String;
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_94} :catch_95

    goto :goto_59

    .line 267
    :catch_95
    move-exception v1

    goto :goto_61

    .line 277
    :cond_97
    :try_start_97
    iget-object v1, v0, Lcom/bzbs/bean/SubDistrict;->ProvinceName_EN:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/SubDistrict;->CaptionString:Ljava/lang/String;
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9b} :catch_9c

    goto :goto_84

    .line 282
    :catch_9c
    move-exception v0

    goto :goto_8c

    .line 287
    :cond_9e
    :try_start_9e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1bc

    .line 288
    invoke-static {}, Lcom/samsung/privilege/util/DialogProfile;->b()Z

    move-result v0

    if-ne v0, v10, :cond_11f

    .line 289
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogProfile$5$1;->b:Lcom/samsung/privilege/util/DialogProfile$5;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogProfile$5;->b:Landroid/app/Dialog;

    const v1, 0x7f10043e

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/SubDistrict;

    iget-object v1, v1, Lcom/bzbs/bean/SubDistrict;->ProvinceCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogProfile$5$1;->b:Lcom/samsung/privilege/util/DialogProfile$5;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogProfile$5;->b:Landroid/app/Dialog;

    const v1, 0x7f100440

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/SubDistrict;

    iget-object v1, v1, Lcom/bzbs/bean/SubDistrict;->DistrictCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 292
    invoke-static {}, Lcom/samsung/privilege/util/DialogProfile;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1054"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_186

    .line 293
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogProfile$5$1;->b:Lcom/samsung/privilege/util/DialogProfile$5;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogProfile$5;->b:Landroid/app/Dialog;

    const v1, 0x7f10043e

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/SubDistrict;

    iget-object v1, v1, Lcom/bzbs/bean/SubDistrict;->ProvinceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogProfile$5$1;->b:Lcom/samsung/privilege/util/DialogProfile$5;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogProfile$5;->b:Landroid/app/Dialog;

    const v1, 0x7f100440

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/SubDistrict;

    iget-object v1, v1, Lcom/bzbs/bean/SubDistrict;->DistrictName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    :cond_11f
    :goto_11f
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-static {}, Lcom/samsung/privilege/util/DialogProfile;->d()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f040127

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 302
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-static {}, Lcom/samsung/privilege/util/DialogProfile;->d()Landroid/content/Context;

    move-result-object v0

    const v6, 0x7f040127

    invoke-direct {v2, v0, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 303
    new-instance v6, Landroid/widget/ArrayAdapter;

    invoke-static {}, Lcom/samsung/privilege/util/DialogProfile;->d()Landroid/content/Context;

    move-result-object v0

    const v7, 0x7f040127

    invoke-direct {v6, v0, v7, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 305
    invoke-static {}, Lcom/samsung/privilege/util/DialogProfile;->a()Landroid/app/Dialog;

    move-result-object v0

    const v7, 0x7f100442

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 306
    new-instance v7, Lcom/samsung/privilege/util/DialogProfile$5$1$1;

    invoke-direct {v7, p0, v1, v0, v3}, Lcom/samsung/privilege/util/DialogProfile$5$1$1;-><init>(Lcom/samsung/privilege/util/DialogProfile$5$1;Landroid/widget/ArrayAdapter;Landroid/widget/TextView;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    invoke-static {}, Lcom/samsung/privilege/util/DialogProfile;->a()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f100440

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 330
    new-instance v1, Lcom/samsung/privilege/util/DialogProfile$5$1$2;

    invoke-direct {v1, p0, v2, v0, v4}, Lcom/samsung/privilege/util/DialogProfile$5$1$2;-><init>(Lcom/samsung/privilege/util/DialogProfile$5$1;Landroid/widget/ArrayAdapter;Landroid/widget/TextView;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    invoke-static {}, Lcom/samsung/privilege/util/DialogProfile;->a()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f10043e

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 354
    new-instance v1, Lcom/samsung/privilege/util/DialogProfile$5$1$3;

    invoke-direct {v1, p0, v6, v0, v5}, Lcom/samsung/privilege/util/DialogProfile$5$1$3;-><init>(Lcom/samsung/privilege/util/DialogProfile$5$1;Landroid/widget/ArrayAdapter;Landroid/widget/TextView;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_182} :catch_1ba

    .line 383
    :goto_182
    invoke-static {v10}, Lcom/samsung/privilege/util/DialogProfile;->a(Z)Z

    .line 384
    return-void

    .line 296
    :cond_186
    :try_start_186
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogProfile$5$1;->b:Lcom/samsung/privilege/util/DialogProfile$5;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogProfile$5;->b:Landroid/app/Dialog;

    const v1, 0x7f10043e

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/SubDistrict;

    iget-object v1, v1, Lcom/bzbs/bean/SubDistrict;->ProvinceName_EN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogProfile$5$1;->b:Lcom/samsung/privilege/util/DialogProfile$5;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogProfile$5;->b:Landroid/app/Dialog;

    const v1, 0x7f100440

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/SubDistrict;

    iget-object v1, v1, Lcom/bzbs/bean/SubDistrict;->DistrictName_EN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11f

    .line 379
    :catch_1ba
    move-exception v0

    goto :goto_182

    .line 377
    :cond_1bc
    invoke-static {}, Lcom/samsung/privilege/util/DialogProfile;->d()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090137

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogProfile$5$1;->b:Lcom/samsung/privilege/util/DialogProfile$5;

    iget-object v1, v1, Lcom/samsung/privilege/util/DialogProfile$5;->a:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogProfile;->a(Ljava/lang/String;Landroid/os/Handler;)V
    :try_end_1ce
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_1ce} :catch_1ba

    goto :goto_182
.end method
