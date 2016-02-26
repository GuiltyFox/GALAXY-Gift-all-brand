.class Lcom/samsung/privilege/MainActivity$6;
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


# direct methods
.method constructor <init>(Lcom/samsung/privilege/MainActivity;Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/MainActivity$6;->this$0:Lcom/samsung/privilege/MainActivity;

    iput-object p2, p0, Lcom/samsung/privilege/MainActivity$6;->val$dialogOtp:Landroid/app/Dialog;

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 704
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity$6;->val$dialogOtp:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 707
    :try_start_5
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity$6;->this$0:Lcom/samsung/privilege/MainActivity;

    # getter for: Lcom/samsung/privilege/MainActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v0}, Lcom/samsung/privilege/MainActivity;->access$12(Lcom/samsung/privilege/MainActivity;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const-string v1, "Login"

    const-string v2, "Click Cancel OTP"

    const-string v3, ""

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1a} :catch_1b

    .line 711
    :goto_1a
    return-void

    .line 708
    :catch_1b
    move-exception v0

    goto :goto_1a
.end method
