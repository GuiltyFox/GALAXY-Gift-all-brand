.class Lcom/samsung/privilege/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/MainActivity;->doRequestOTP(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/MainActivity;

.field private final synthetic val$dialogOtp:Landroid/app/Dialog;

.field private final synthetic val$editOtpPhoneNumber:Landroid/widget/EditText;

.field private final synthetic val$layoutOtpNumber:Landroid/widget/RelativeLayout;

.field private final synthetic val$layoutOtpRequest:Landroid/widget/RelativeLayout;

.field private final synthetic val$layoutOtpSubmit:Landroid/widget/RelativeLayout;

.field private final synthetic val$textOtpRefCode:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/MainActivity;Landroid/widget/EditText;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/app/Dialog;)V
    .registers 8

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/MainActivity$2;->this$0:Lcom/samsung/privilege/MainActivity;

    iput-object p2, p0, Lcom/samsung/privilege/MainActivity$2;->val$editOtpPhoneNumber:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/samsung/privilege/MainActivity$2;->val$layoutOtpRequest:Landroid/widget/RelativeLayout;

    iput-object p4, p0, Lcom/samsung/privilege/MainActivity$2;->val$layoutOtpNumber:Landroid/widget/RelativeLayout;

    iput-object p5, p0, Lcom/samsung/privilege/MainActivity$2;->val$layoutOtpSubmit:Landroid/widget/RelativeLayout;

    iput-object p6, p0, Lcom/samsung/privilege/MainActivity$2;->val$textOtpRefCode:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/samsung/privilege/MainActivity$2;->val$dialogOtp:Landroid/app/Dialog;

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 13
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 522
    iget-object v4, p0, Lcom/samsung/privilege/MainActivity$2;->val$editOtpPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x9

    if-gt v4, v5, :cond_1c

    .line 523
    iget-object v4, p0, Lcom/samsung/privilege/MainActivity$2;->this$0:Lcom/samsung/privilege/MainActivity;

    const-string v5, "Please enter valid telephone number!"

    # invokes: Lcom/samsung/privilege/MainActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/samsung/privilege/MainActivity;->access$4(Lcom/samsung/privilege/MainActivity;Ljava/lang/String;)V

    .line 655
    :cond_1b
    :goto_1b
    return-void

    .line 527
    :cond_1c
    iget-object v4, p0, Lcom/samsung/privilege/MainActivity$2;->this$0:Lcom/samsung/privilege/MainActivity;

    # getter for: Lcom/samsung/privilege/MainActivity;->isRequestingOTP:Z
    invoke-static {v4}, Lcom/samsung/privilege/MainActivity;->access$10(Lcom/samsung/privilege/MainActivity;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 528
    iget-object v4, p0, Lcom/samsung/privilege/MainActivity$2;->this$0:Lcom/samsung/privilege/MainActivity;

    invoke-static {v4, v10}, Lcom/samsung/privilege/MainActivity;->access$3(Lcom/samsung/privilege/MainActivity;Z)V

    .line 530
    iget-object v4, p0, Lcom/samsung/privilege/MainActivity$2;->this$0:Lcom/samsung/privilege/MainActivity;

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 531
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Lcom/samsung/privilege/MainActivity$2;->val$editOtpPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 533
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "api/auth/otp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 534
    .local v3, "url":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "?app_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/MainActivity$2;->this$0:Lcom/samsung/privilege/MainActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 535
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "&contact_number="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/MainActivity$2;->val$editOtpPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 536
    new-instance v0, Lcom/samsung/privilege/util/DeviceHelper;

    iget-object v4, p0, Lcom/samsung/privilege/MainActivity$2;->this$0:Lcom/samsung/privilege/MainActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 537
    .local v0, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    invoke-virtual {v0}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 538
    .local v1, "device_id":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "&uuid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 539
    iget-object v4, p0, Lcom/samsung/privilege/MainActivity$2;->this$0:Lcom/samsung/privilege/MainActivity;

    # getter for: Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/privilege/MainActivity;->access$1(Lcom/samsung/privilege/MainActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "url="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v4, p0, Lcom/samsung/privilege/MainActivity$2;->this$0:Lcom/samsung/privilege/MainActivity;

    iget-object v5, p0, Lcom/samsung/privilege/MainActivity$2;->this$0:Lcom/samsung/privilege/MainActivity;

    const-string v6, ""

    iget-object v7, p0, Lcom/samsung/privilege/MainActivity$2;->this$0:Lcom/samsung/privilege/MainActivity;

    const v8, 0x7f09018d

    invoke-virtual {v7, v8}, Lcom/samsung/privilege/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v10, v9}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/MainActivity;->access$11(Lcom/samsung/privilege/MainActivity;Landroid/app/ProgressDialog;)V

    .line 542
    iget-object v4, p0, Lcom/samsung/privilege/MainActivity$2;->val$layoutOtpRequest:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 543
    iget-object v4, p0, Lcom/samsung/privilege/MainActivity$2;->val$layoutOtpNumber:Landroid/widget/RelativeLayout;

    const v5, 0x7f02007e

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 544
    iget-object v4, p0, Lcom/samsung/privilege/MainActivity$2;->val$layoutOtpSubmit:Landroid/widget/RelativeLayout;

    const v5, 0x7f02039d

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 545
    iget-object v4, p0, Lcom/samsung/privilege/MainActivity$2;->val$textOtpRefCode:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    const/4 v4, 0x0

    new-instance v5, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;

    iget-object v6, p0, Lcom/samsung/privilege/MainActivity$2;->this$0:Lcom/samsung/privilege/MainActivity;

    iget-object v7, p0, Lcom/samsung/privilege/MainActivity$2;->val$dialogOtp:Landroid/app/Dialog;

    invoke-direct {v5, v6, v7}, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;-><init>(Lcom/samsung/privilege/MainActivity;Landroid/app/Dialog;)V

    invoke-static {v3, v4, v5}, Lcom/samsung/privilege/util/http/BuzzbeesRestClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 550
    :try_start_110
    iget-object v4, p0, Lcom/samsung/privilege/MainActivity$2;->this$0:Lcom/samsung/privilege/MainActivity;

    # getter for: Lcom/samsung/privilege/MainActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v4}, Lcom/samsung/privilege/MainActivity;->access$12(Lcom/samsung/privilege/MainActivity;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v4

    const-string v5, "Login"

    const-string v6, "Click Request OTP"

    const-string v7, ""

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_125} :catch_127

    goto/16 :goto_1b

    .line 551
    :catch_127
    move-exception v4

    goto/16 :goto_1b
.end method
