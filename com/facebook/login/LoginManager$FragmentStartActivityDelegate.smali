.class Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/facebook/login/StartActivityDelegate;


# instance fields
.field private final fragment:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;)V
    .registers 3

    .prologue
    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    const-string/jumbo v0, "fragment"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    iput-object p1, p0, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;->fragment:Landroid/support/v4/app/Fragment;

    .line 540
    return-void
.end method


# virtual methods
.method public getActivityContext()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4

    .prologue
    .line 544
    iget-object v0, p0, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 545
    return-void
.end method
