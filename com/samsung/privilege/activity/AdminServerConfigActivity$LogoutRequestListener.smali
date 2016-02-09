.class Lcom/samsung/privilege/activity/AdminServerConfigActivity$LogoutRequestListener;
.super Lcom/facebook/android/BaseRequestListener;
.source "AdminServerConfigActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/AdminServerConfigActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogoutRequestListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/AdminServerConfigActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/AdminServerConfigActivity;)V
    .registers 2

    .prologue
    .line 128
    iput-object p1, p0, Lcom/samsung/privilege/activity/AdminServerConfigActivity$LogoutRequestListener;->this$0:Lcom/samsung/privilege/activity/AdminServerConfigActivity;

    invoke-direct {p0}, Lcom/facebook/android/BaseRequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 157
    return-void
.end method
