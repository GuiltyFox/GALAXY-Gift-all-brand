.class public final Lrx/subscriptions/Subscriptions;
.super Ljava/lang/Object;
.source "Subscriptions.java"


# static fields
.field private static final a:Lrx/subscriptions/Subscriptions$Unsubscribed;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 121
    new-instance v0, Lrx/subscriptions/Subscriptions$Unsubscribed;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/subscriptions/Subscriptions$Unsubscribed;-><init>(Lrx/subscriptions/Subscriptions$1;)V

    sput-object v0, Lrx/subscriptions/Subscriptions;->a:Lrx/subscriptions/Subscriptions$Unsubscribed;

    return-void
.end method

.method public static a()Lrx/Subscription;
    .registers 1

    .prologue
    .line 46
    invoke-static {}, Lrx/subscriptions/BooleanSubscription;->a()Lrx/subscriptions/BooleanSubscription;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/functions/Action0;)Lrx/Subscription;
    .registers 2

    .prologue
    .line 73
    invoke-static {p0}, Lrx/subscriptions/BooleanSubscription;->a(Lrx/functions/Action0;)Lrx/subscriptions/BooleanSubscription;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lrx/Subscription;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lrx/subscriptions/Subscriptions;->a:Lrx/subscriptions/Subscriptions$Unsubscribed;

    return-object v0
.end method
