.class Lcom/samsung/privilege/MainActivity$4;
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

.field private final synthetic val$editOtpNumber:Landroid/widget/EditText;

.field private final synthetic val$editOtpPhoneNumber:Landroid/widget/EditText;

.field private final synthetic val$textOtpRefCode:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/MainActivity;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/MainActivity$4;->this$0:Lcom/samsung/privilege/MainActivity;

    iput-object p2, p0, Lcom/samsung/privilege/MainActivity$4;->val$textOtpRefCode:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/privilege/MainActivity$4;->val$editOtpNumber:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/samsung/privilege/MainActivity$4;->val$editOtpPhoneNumber:Landroid/widget/EditText;

    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 671
    iget-object v1, p0, Lcom/samsung/privilege/MainActivity$4;->val$textOtpRefCode:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 688
    :goto_12
    return-void

    .line 673
    :cond_13
    iget-object v1, p0, Lcom/samsung/privilege/MainActivity$4;->val$editOtpNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-gt v1, v2, :cond_2c

    .line 674
    iget-object v1, p0, Lcom/samsung/privilege/MainActivity$4;->this$0:Lcom/samsung/privilege/MainActivity;

    const-string v2, "Please enter valid OTP number!"

    # invokes: Lcom/samsung/privilege/MainActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/samsung/privilege/MainActivity;->access$4(Lcom/samsung/privilege/MainActivity;Ljava/lang/String;)V

    goto :goto_12

    .line 678
    :cond_2c
    iget-object v1, p0, Lcom/samsung/privilege/MainActivity$4;->this$0:Lcom/samsung/privilege/MainActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 679
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/samsung/privilege/MainActivity$4;->val$editOtpNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 681
    iget-object v1, p0, Lcom/samsung/privilege/MainActivity$4;->this$0:Lcom/samsung/privilege/MainActivity;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/privilege/MainActivity$4;->val$editOtpPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/MainActivity$4;->val$editOtpNumber:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/MainActivity$4;->val$textOtpRefCode:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/privilege/MainActivity;->doLoginDevice(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :try_start_64
    iget-object v1, p0, Lcom/samsung/privilege/MainActivity$4;->this$0:Lcom/samsung/privilege/MainActivity;

    # getter for: Lcom/samsung/privilege/MainActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v1}, Lcom/samsung/privilege/MainActivity;->access$12(Lcom/samsung/privilege/MainActivity;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "Login"

    const-string v3, "Click Submit OTP"

    const-string v4, ""

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_79} :catch_7a

    goto :goto_12

    .line 685
    :catch_7a
    move-exception v1

    goto :goto_12
.end method
