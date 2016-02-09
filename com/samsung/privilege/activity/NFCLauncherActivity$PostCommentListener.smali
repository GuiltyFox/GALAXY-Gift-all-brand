.class Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener;
.super Lcom/facebook/android/BaseRequestListener;
.source "NFCLauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/NFCLauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostCommentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/NFCLauncherActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/NFCLauncherActivity;)V
    .registers 2

    .prologue
    .line 222
    iput-object p1, p0, Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener;->this$0:Lcom/samsung/privilege/activity/NFCLauncherActivity;

    invoke-direct {p0}, Lcom/facebook/android/BaseRequestListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/activity/NFCLauncherActivity;Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener;)V
    .registers 3

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener;-><init>(Lcom/samsung/privilege/activity/NFCLauncherActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener;)Lcom/samsung/privilege/activity/NFCLauncherActivity;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener;->this$0:Lcom/samsung/privilege/activity/NFCLauncherActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 226
    new-instance v0, Lcom/samsung/privilege/bean/FBError;

    invoke-direct {v0, p1}, Lcom/samsung/privilege/bean/FBError;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, "error":Lcom/samsung/privilege/bean/FBError;
    iget-boolean v2, v0, Lcom/samsung/privilege/bean/FBError;->is_error:Z

    if-nez v2, :cond_11

    .line 229
    iget-object v2, p0, Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener;->this$0:Lcom/samsung/privilege/activity/NFCLauncherActivity;

    const-string v3, "done"

    # invokes: Lcom/samsung/privilege/activity/NFCLauncherActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->access$1(Lcom/samsung/privilege/activity/NFCLauncherActivity;Ljava/lang/String;)V

    .line 245
    :cond_10
    :goto_10
    return-void

    .line 231
    :cond_11
    const-string v1, ""

    .line 232
    .local v1, "strError":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener;->this$0:Lcom/samsung/privilege/activity/NFCLauncherActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 233
    const-string v2, "OAuthException"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 234
    const-string v1, "You don\'t have permission to comment this post."

    .line 238
    :goto_29
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 239
    iget-object v2, p0, Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener;->this$0:Lcom/samsung/privilege/activity/NFCLauncherActivity;

    # invokes: Lcom/samsung/privilege/activity/NFCLauncherActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->access$1(Lcom/samsung/privilege/activity/NFCLauncherActivity;Ljava/lang/String;)V

    goto :goto_10

    .line 236
    :cond_37
    const-string v1, "Can not comment this post."

    goto :goto_29
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;Ljava/lang/Object;)V
    .registers 5
    .param p1, "e"    # Lcom/facebook/android/FacebookError;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 250
    # getter for: Lcom/samsung/privilege/activity/NFCLauncherActivity;->gHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->access$2()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener$1;-><init>(Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener;Lcom/facebook/android/FacebookError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 263
    return-void
.end method

.method public onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V
    .registers 5
    .param p1, "e"    # Ljava/io/FileNotFoundException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 268
    # getter for: Lcom/samsung/privilege/activity/NFCLauncherActivity;->gHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->access$2()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener$2;-><init>(Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener;Ljava/io/FileNotFoundException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 281
    return-void
.end method

.method public onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .registers 5
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 286
    # getter for: Lcom/samsung/privilege/activity/NFCLauncherActivity;->gHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->access$2()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener$3;-><init>(Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 299
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .registers 5
    .param p1, "e"    # Ljava/net/MalformedURLException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 304
    # getter for: Lcom/samsung/privilege/activity/NFCLauncherActivity;->gHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->access$2()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener$4;-><init>(Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener;Ljava/net/MalformedURLException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 317
    return-void
.end method
