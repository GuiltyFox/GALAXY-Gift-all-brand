.class Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler$1;

.field private final synthetic val$editOtpNumber:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler$1;Landroid/widget/EditText;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler$1$1;->this$2:Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler$1;

    iput-object p2, p0, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler$1$1;->val$editOtpNumber:Landroid/widget/EditText;

    .line 761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 764
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler$1$1;->val$editOtpNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 765
    return-void
.end method
