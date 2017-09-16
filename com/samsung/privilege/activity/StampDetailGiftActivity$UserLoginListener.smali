.class Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;
.super Ljava/lang/Object;
.source "StampDetailGiftActivity.java"

# interfaces
.implements Lcom/bzbs/event/LoginEvents$LoginListener;


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V
    .registers 2

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;Lcom/samsung/privilege/activity/StampDetailGiftActivity$1;)V
    .registers 3

    .prologue
    .line 1069
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1166
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->b(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener$1;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1105
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->b(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener$2;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1142
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->b(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener$3;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1161
    return-void
.end method
