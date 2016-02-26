.class Lcom/samsung/privilege/activity/MainMenuFragment$4;
.super Ljava/lang/Object;
.source "MainMenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainMenuFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

.field private final synthetic val$dialogSerial:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment;Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$4;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$4;->val$dialogSerial:Landroid/app/Dialog;

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 550
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainMenuFragment$4;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1054"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_62

    .line 553
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "api/profile/me?token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/MainMenuFragment$4;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 554
    .local v2, "url":Ljava/lang/String;
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 555
    .local v1, "paramsRequestParams":Lcom/loopj/android/http/RequestParams;
    const-string v3, "locale"

    const-string v4, "1054"

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainMenuFragment$4;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "1054"

    invoke-static {v3, v4}, Lcom/samsung/privilege/UserLogin;->SetLocale(Landroid/content/Context;Ljava/lang/String;)Z

    .line 564
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 565
    .local v0, "myClient":Lcom/loopj/android/http/AsyncHttpClient;
    const v3, 0x1d4c0

    invoke-virtual {v0, v3}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 566
    new-instance v3, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;

    iget-object v4, p0, Lcom/samsung/privilege/activity/MainMenuFragment$4;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 569
    .end local v0    # "myClient":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v1    # "paramsRequestParams":Lcom/loopj/android/http/RequestParams;
    .end local v2    # "url":Ljava/lang/String;
    :cond_62
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainMenuFragment$4;->val$dialogSerial:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 570
    return-void
.end method
