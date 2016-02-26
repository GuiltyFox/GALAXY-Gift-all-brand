.class Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;

    iput-object p2, p0, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler$1;->val$response_text:Ljava/lang/String;

    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 748
    iget-object v7, p0, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;->gDialogOtp:Landroid/app/Dialog;
    invoke-static {v7}, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;->access$0(Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;)Landroid/app/Dialog;

    move-result-object v7

    const v8, 0x7f0c0324

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 749
    .local v0, "editOtpNumber":Landroid/widget/EditText;
    iget-object v7, p0, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;->gDialogOtp:Landroid/app/Dialog;
    invoke-static {v7}, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;->access$0(Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;)Landroid/app/Dialog;

    move-result-object v7

    const v8, 0x7f0c0322

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 750
    .local v6, "textOtpRefCode":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;->gDialogOtp:Landroid/app/Dialog;
    invoke-static {v7}, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;->access$0(Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;)Landroid/app/Dialog;

    move-result-object v7

    const v8, 0x7f0c0323

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 751
    .local v3, "layoutOtpNumber":Landroid/widget/RelativeLayout;
    iget-object v7, p0, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;->gDialogOtp:Landroid/app/Dialog;
    invoke-static {v7}, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;->access$0(Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;)Landroid/app/Dialog;

    move-result-object v7

    const v8, 0x7f0c0320

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 752
    .local v4, "layoutOtpRequest":Landroid/widget/RelativeLayout;
    iget-object v7, p0, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;->gDialogOtp:Landroid/app/Dialog;
    invoke-static {v7}, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;->access$0(Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;)Landroid/app/Dialog;

    move-result-object v7

    const v8, 0x7f0c0327

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 753
    .local v5, "layoutOtpSubmit":Landroid/widget/RelativeLayout;
    iget-object v7, p0, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;->gDialogOtp:Landroid/app/Dialog;
    invoke-static {v7}, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;->access$0(Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;)Landroid/app/Dialog;

    move-result-object v7

    const v8, 0x7f0c0325

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 755
    .local v2, "layoutOtpCancel":Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 756
    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 757
    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 758
    const v7, 0x7f02007d

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 759
    const v7, 0x7f02039a

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 761
    new-instance v7, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler$1$1;

    invoke-direct {v7, p0, v0}, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler$1$1;-><init>(Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler$1;Landroid/widget/EditText;)V

    .line 766
    const-wide/16 v8, 0x3e8

    .line 761
    invoke-virtual {v0, v7, v8, v9}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 769
    :try_start_7a
    new-instance v1, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v1, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 770
    .local v1, "jsonRoot":Lorg/json/JSONObject;
    const-string v7, "refcode"

    invoke-static {v1, v7}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_8a} :catch_8b

    .line 774
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    :goto_8a
    return-void

    .line 771
    :catch_8b
    move-exception v7

    goto :goto_8a
.end method
