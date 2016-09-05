.class Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/facebook/login/StartActivityDelegate;


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    const-string/jumbo v0, "activity"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    iput-object p1, p0, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;->activity:Landroid/app/Activity;

    .line 521
    return-void
.end method


# virtual methods
.method public getActivityContext()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4

    .prologue
    .line 525
    iget-object v0, p0, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 526
    return-void
.end method
