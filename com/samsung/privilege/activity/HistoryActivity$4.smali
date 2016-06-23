.class Lcom/samsung/privilege/activity/HistoryActivity$4;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/HistoryActivity;->bindingEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/HistoryActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/HistoryActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/HistoryActivity;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 33
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 151
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v24, v0

    const-string/jumbo v25, "connectivity"

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/privilege/activity/HistoryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 152
    .local v7, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v24

    if-nez v24, :cond_2c

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v25, v0

    const v26, 0x7f09024b

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    .line 450
    .end local v7    # "cm":Landroid/net/ConnectivityManager;
    :cond_2b
    :goto_2b
    return-void

    .line 157
    .restart local v7    # "cm":Landroid/net/ConnectivityManager;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v24, v0

    # getter for: Lcom/samsung/privilege/activity/HistoryActivity;->mHistoryAdapter:Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;
    invoke-static/range {v24 .. v24}, Lcom/samsung/privilege/activity/HistoryActivity;->access$700(Lcom/samsung/privilege/activity/HistoryActivity;)Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;->getItem(I)Lcom/bzbs/bean/Purchasing;

    move-result-object v15

    .line 159
    .local v15, "purchasing":Lcom/bzbs/bean/Purchasing;
    if-eqz v15, :cond_2b

    .line 163
    iget-object v0, v15, Lcom/bzbs/bean/Purchasing;->Type:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string/jumbo v25, "0"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_6b

    iget-boolean v0, v15, Lcom/bzbs/bean/Purchasing;->Delivered:Z

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6b

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    # invokes: Lcom/samsung/privilege/activity/HistoryActivity;->getPurchaseItemOldApi(Lcom/bzbs/bean/Purchasing;Z)V
    invoke-static {v0, v15, v1}, Lcom/samsung/privilege/activity/HistoryActivity;->access$800(Lcom/samsung/privilege/activity/HistoryActivity;Lcom/bzbs/bean/Purchasing;Z)V

    goto :goto_2b

    .line 447
    .end local v7    # "cm":Landroid/net/ConnectivityManager;
    .end local v15    # "purchasing":Lcom/bzbs/bean/Purchasing;
    :catch_69
    move-exception v24

    goto :goto_2b

    .line 165
    .restart local v7    # "cm":Landroid/net/ConnectivityManager;
    .restart local v15    # "purchasing":Lcom/bzbs/bean/Purchasing;
    :cond_6b
    iget-object v0, v15, Lcom/bzbs/bean/Purchasing;->Type:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string/jumbo v25, "8"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_85

    iget-object v0, v15, Lcom/bzbs/bean/Purchasing;->PointType:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string/jumbo v25, "get"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2b

    .line 167
    :cond_85
    iget-object v0, v15, Lcom/bzbs/bean/Purchasing;->Type:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string/jumbo v25, "6"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_36d

    .line 168
    iget-boolean v0, v15, Lcom/bzbs/bean/Purchasing;->IsInstalledApp:Z

    move/from16 v24, v0

    if-nez v24, :cond_2b

    .line 169
    const/4 v12, 0x0

    .line 170
    .local v12, "hasApp":Z
    iget-object v0, v15, Lcom/bzbs/bean/Purchasing;->InstallPackageName:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_130

    iget-object v0, v15, Lcom/bzbs/bean/Purchasing;->InstallPackageName:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string/jumbo v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_130

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v24, v0

    iget-object v0, v15, Lcom/bzbs/bean/Purchasing;->InstallPackageName:Ljava/lang/String;

    move-object/from16 v25, v0

    # invokes: Lcom/samsung/privilege/activity/HistoryActivity;->appInstalledOrNot(Ljava/lang/String;)Z
    invoke-static/range {v24 .. v25}, Lcom/samsung/privilege/activity/HistoryActivity;->access$900(Lcom/samsung/privilege/activity/HistoryActivity;Ljava/lang/String;)Z

    move-result v12

    .line 176
    :goto_ba
    if-nez v12, :cond_132

    .line 178
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 179
    .local v5, "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v24, v0

    const v25, 0x7f090384

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v24, v0

    const v25, 0x7f09030a

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v25, v0

    const v26, 0x7f090317

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    new-instance v26, Lcom/samsung/privilege/activity/HistoryActivity$4$2;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/HistoryActivity$4$2;-><init>(Lcom/samsung/privilege/activity/HistoryActivity$4;)V

    invoke-virtual/range {v24 .. v26}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v25, v0

    const v26, 0x7f090328

    .line 184
    invoke-virtual/range {v25 .. v26}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    new-instance v26, Lcom/samsung/privilege/activity/HistoryActivity$4$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/samsung/privilege/activity/HistoryActivity$4$1;-><init>(Lcom/samsung/privilege/activity/HistoryActivity$4;Lcom/bzbs/bean/Purchasing;)V

    invoke-virtual/range {v24 .. v26}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 199
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 200
    .local v3, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2b

    .line 173
    .end local v3    # "alert":Landroid/app/AlertDialog;
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_130
    const/4 v12, 0x0

    goto :goto_ba

    .line 204
    :cond_132
    new-instance v14, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v14}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 205
    .local v14, "params":Lcom/loopj/android/http/RequestParams;
    const-string/jumbo v22, ""

    .line 207
    .local v22, "url":Ljava/lang/String;
    iget-object v0, v15, Lcom/bzbs/bean/Purchasing;->VerifyTypeAndroid:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string/jumbo v25, "manual"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_23a

    .line 208
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v25, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "api/campaign/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v15, Lcom/bzbs/bean/Purchasing;->ID:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "/verify"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 209
    const-string/jumbo v24, "token"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/privilege/activity/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :goto_184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v24, v0

    # getter for: Lcom/samsung/privilege/activity/HistoryActivity;->TAG:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/samsung/privilege/activity/HistoryActivity;->access$1000(Lcom/samsung/privilege/activity/HistoryActivity;)Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "verify url="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    new-instance v6, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v6}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 267
    .local v6, "client":Lcom/loopj/android/http/AsyncHttpClient;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v25, v0

    const-string/jumbo v26, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v27, v0

    const v28, 0x7f09026f

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    const/16 v29, 0x1

    invoke-static/range {v25 .. v29}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v25

    # setter for: Lcom/samsung/privilege/activity/HistoryActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v24 .. v25}, Lcom/samsung/privilege/activity/HistoryActivity;->access$1202(Lcom/samsung/privilege/activity/HistoryActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    :try_end_1d5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d5} :catch_69

    .line 270
    :try_start_1d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v24, v0

    # getter for: Lcom/samsung/privilege/activity/HistoryActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v24 .. v24}, Lcom/samsung/privilege/activity/HistoryActivity;->access$1200(Lcom/samsung/privilege/activity/HistoryActivity;)Landroid/app/ProgressDialog;

    move-result-object v24

    const v25, 0x102000b

    invoke-virtual/range {v24 .. v25}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 271
    .local v13, "mMessageView":Landroid/widget/TextView;
    if-eqz v13, :cond_21c

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/privilege/activity/HistoryActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/privilege/activity/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    .line 273
    .local v11, "font":Landroid/graphics/Typeface;
    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/privilege/activity/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_21c
    .catch Ljava/lang/Exception; {:try_start_1d5 .. :try_end_21c} :catch_4f8

    .line 280
    .end local v11    # "font":Landroid/graphics/Typeface;
    .end local v13    # "mMessageView":Landroid/widget/TextView;
    :cond_21c
    :goto_21c
    :try_start_21c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/privilege/activity/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    new-instance v25, Lcom/samsung/privilege/activity/HistoryActivity$4$5;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/HistoryActivity$4$5;-><init>(Lcom/samsung/privilege/activity/HistoryActivity$4;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-virtual {v6, v0, v1, v14, v2}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    goto/16 :goto_2b

    .line 211
    .end local v6    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    :cond_23a
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "{\"campaign_id\":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v15, Lcom/bzbs/bean/Purchasing;->ID:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ",\"token\":\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/privilege/activity/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "\"}"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 220
    .local v23, "valueJson":Ljava/lang/String;
    const-string/jumbo v4, ""
    :try_end_275
    .catch Ljava/lang/Exception; {:try_start_21c .. :try_end_275} :catch_69

    .line 222
    .local v4, "base64":Ljava/lang/String;
    :try_start_275
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "UTF-8"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 223
    .local v8, "data":[B
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-static {v8, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_28b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_275 .. :try_end_28b} :catch_367
    .catch Ljava/lang/Exception; {:try_start_275 .. :try_end_28b} :catch_69

    move-result-object v4

    .line 228
    .end local v8    # "data":[B
    :goto_28c
    :try_start_28c
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 229
    .local v20, "token_5_digit_last":Ljava/lang/String;
    const/16 v24, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v25

    add-int/lit8 v25, v25, -0x5

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 231
    .local v21, "token_cut_1_digit_and_5_digit_last":Ljava/lang/String;
    const-string/jumbo v10, ""

    .line 232
    .local v10, "encryptValue":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 234
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v25, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "api/main/log_verify"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 235
    const-string/jumbo v24, "encrypt"

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, " "

    const-string/jumbo v27, ""

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 238
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v24, v0

    const v25, 0x7f090384

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 239
    iget-object v0, v15, Lcom/bzbs/bean/Purchasing;->InstallingMessage:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v25, v0

    const v26, 0x7f090317

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    new-instance v26, Lcom/samsung/privilege/activity/HistoryActivity$4$4;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/HistoryActivity$4$4;-><init>(Lcom/samsung/privilege/activity/HistoryActivity$4;)V

    invoke-virtual/range {v24 .. v26}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v25, v0

    const v26, 0x7f090328

    .line 243
    invoke-virtual/range {v25 .. v26}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    new-instance v26, Lcom/samsung/privilege/activity/HistoryActivity$4$3;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/samsung/privilege/activity/HistoryActivity$4$3;-><init>(Lcom/samsung/privilege/activity/HistoryActivity$4;Lcom/bzbs/bean/Purchasing;)V

    invoke-virtual/range {v24 .. v26}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 258
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 259
    .restart local v3    # "alert":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_184

    .line 224
    .end local v3    # "alert":Landroid/app/AlertDialog;
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v10    # "encryptValue":Ljava/lang/String;
    .end local v20    # "token_5_digit_last":Ljava/lang/String;
    .end local v21    # "token_cut_1_digit_and_5_digit_last":Ljava/lang/String;
    :catch_367
    move-exception v9

    .line 225
    .local v9, "e1":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v9}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_28c

    .line 335
    .end local v4    # "base64":Ljava/lang/String;
    .end local v9    # "e1":Ljava/io/UnsupportedEncodingException;
    .end local v12    # "hasApp":Z
    .end local v14    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v22    # "url":Ljava/lang/String;
    .end local v23    # "valueJson":Ljava/lang/String;
    :cond_36d
    iget-object v0, v15, Lcom/bzbs/bean/Purchasing;->Type:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string/jumbo v25, "3"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_49f

    iget-boolean v0, v15, Lcom/bzbs/bean/Purchasing;->IsUsed:Z

    move/from16 v24, v0

    if-nez v24, :cond_49f

    iget-boolean v0, v15, Lcom/bzbs/bean/Purchasing;->Delivered:Z

    move/from16 v24, v0

    if-nez v24, :cond_49f

    .line 336
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 337
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    iget-object v0, v15, Lcom/bzbs/bean/Purchasing;->AgencyName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 338
    .local v17, "strHeader":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v15, Lcom/bzbs/bean/Purchasing;->Name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 339
    .local v18, "strMessage":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "\r\n\r\n"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 340
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v25, v0

    const v26, 0x7f0900ab

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 341
    iget v0, v15, Lcom/bzbs/bean/Purchasing;->MinutesValidAfterUsed:I

    move/from16 v24, v0

    if-lez v24, :cond_446

    .line 342
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "\r\n"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v25, v0

    const v26, 0x7f0900ac

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v15, Lcom/bzbs/bean/Purchasing;->MinutesValidAfterUsed:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v25, v0

    const v26, 0x7f0900ad

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 344
    :cond_446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v24, v0

    const v25, 0x7f090343

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 345
    .local v19, "strUse":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v24, v0

    const v25, 0x7f0900f2

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 346
    .local v16, "strCancel":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 348
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v24

    new-instance v25, Lcom/samsung/privilege/activity/HistoryActivity$4$7;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/samsung/privilege/activity/HistoryActivity$4$7;-><init>(Lcom/samsung/privilege/activity/HistoryActivity$4;Lcom/bzbs/bean/Purchasing;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v24

    new-instance v25, Lcom/samsung/privilege/activity/HistoryActivity$4$6;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/HistoryActivity$4$6;-><init>(Lcom/samsung/privilege/activity/HistoryActivity$4;)V

    .line 428
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 433
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 434
    .restart local v3    # "alert":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2b

    .line 437
    .end local v3    # "alert":Landroid/app/AlertDialog;
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v16    # "strCancel":Ljava/lang/String;
    .end local v17    # "strHeader":Ljava/lang/String;
    .end local v18    # "strMessage":Ljava/lang/String;
    .end local v19    # "strUse":Ljava/lang/String;
    :cond_49f
    iget-object v0, v15, Lcom/bzbs/bean/Purchasing;->Type:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string/jumbo v25, "3"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4c9

    iget-boolean v0, v15, Lcom/bzbs/bean/Purchasing;->IsUsed:Z

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4c9

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    # invokes: Lcom/samsung/privilege/activity/HistoryActivity;->getPurchaseItem(Lcom/bzbs/bean/Purchasing;Z)V
    invoke-static {v0, v15, v1}, Lcom/samsung/privilege/activity/HistoryActivity;->access$1400(Lcom/samsung/privilege/activity/HistoryActivity;Lcom/bzbs/bean/Purchasing;Z)V

    goto/16 :goto_2b

    .line 439
    :cond_4c9
    iget-object v0, v15, Lcom/bzbs/bean/Purchasing;->Type:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string/jumbo v25, "0"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4e7

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    # invokes: Lcom/samsung/privilege/activity/HistoryActivity;->getWinnerData(Lcom/bzbs/bean/Purchasing;Z)V
    invoke-static {v0, v15, v1}, Lcom/samsung/privilege/activity/HistoryActivity;->access$1500(Lcom/samsung/privilege/activity/HistoryActivity;Lcom/bzbs/bean/Purchasing;Z)V

    goto/16 :goto_2b

    .line 442
    :cond_4e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/HistoryActivity$4;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    # invokes: Lcom/samsung/privilege/activity/HistoryActivity;->getPurchaseItem(Lcom/bzbs/bean/Purchasing;Z)V
    invoke-static {v0, v15, v1}, Lcom/samsung/privilege/activity/HistoryActivity;->access$1400(Lcom/samsung/privilege/activity/HistoryActivity;Lcom/bzbs/bean/Purchasing;Z)V
    :try_end_4f6
    .catch Ljava/lang/Exception; {:try_start_28c .. :try_end_4f6} :catch_69

    goto/16 :goto_2b

    .line 276
    .restart local v6    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .restart local v12    # "hasApp":Z
    .restart local v14    # "params":Lcom/loopj/android/http/RequestParams;
    .restart local v22    # "url":Ljava/lang/String;
    :catch_4f8
    move-exception v24

    goto/16 :goto_21c
.end method
