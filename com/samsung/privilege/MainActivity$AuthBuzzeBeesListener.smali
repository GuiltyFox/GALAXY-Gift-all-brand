.class public Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AuthBuzzeBeesListener"
.end annotation


# instance fields
.field final session:Lcom/facebook/Session;

.field final synthetic this$0:Lcom/samsung/privilege/MainActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/MainActivity;)V
    .registers 3

    .prologue
    .line 984
    iput-object p1, p0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;

    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    .line 985
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->session:Lcom/facebook/Session;

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;
    .registers 2

    .prologue
    .line 984
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 989
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;

    # getter for: Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/MainActivity;->access$1(Lcom/samsung/privilege/MainActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(AuthBuzzeBeesListener|onComplete)response_code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;

    # getter for: Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/MainActivity;->access$1(Lcom/samsung/privilege/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "----------------------------------------->"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;

    # getter for: Lcom/samsung/privilege/MainActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/privilege/MainActivity;->access$2(Lcom/samsung/privilege/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1002
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;

    # getter for: Lcom/samsung/privilege/MainActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/MainActivity;->access$5(Lcom/samsung/privilege/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;-><init>(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1143
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;

    # getter for: Lcom/samsung/privilege/MainActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/MainActivity;->access$5(Lcom/samsung/privilege/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$2;-><init>(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1149
    return-void
.end method
