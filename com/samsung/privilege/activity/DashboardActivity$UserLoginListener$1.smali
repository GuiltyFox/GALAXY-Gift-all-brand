.class Lcom/samsung/privilege/activity/DashboardActivity$UserLoginListener$1;
.super Ljava/lang/Object;
.source "DashboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/DashboardActivity$UserLoginListener;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/DashboardActivity$UserLoginListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/DashboardActivity$UserLoginListener;)V
    .registers 2

    .prologue
    .line 126
    iput-object p1, p0, Lcom/samsung/privilege/activity/DashboardActivity$UserLoginListener$1;->a:Lcom/samsung/privilege/activity/DashboardActivity$UserLoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardActivity$UserLoginListener$1;->a:Lcom/samsung/privilege/activity/DashboardActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/DashboardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/DashboardActivity;->a(Lcom/samsung/privilege/activity/DashboardActivity;)V

    .line 130
    return-void
.end method
