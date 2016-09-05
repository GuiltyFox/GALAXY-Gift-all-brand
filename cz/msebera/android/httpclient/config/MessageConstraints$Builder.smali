.class public Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;
.super Ljava/lang/Object;
.source "MessageConstraints.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput v0, p0, Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;->a:I

    .line 94
    iput v0, p0, Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;->b:I

    .line 95
    return-void
.end method


# virtual methods
.method public a(I)Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;
    .registers 2

    .prologue
    .line 98
    iput p1, p0, Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;->a:I

    .line 99
    return-object p0
.end method

.method public a()Lcz/msebera/android/httpclient/config/MessageConstraints;
    .registers 4

    .prologue
    .line 108
    new-instance v0, Lcz/msebera/android/httpclient/config/MessageConstraints;

    iget v1, p0, Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;->a:I

    iget v2, p0, Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;->b:I

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/config/MessageConstraints;-><init>(II)V

    return-object v0
.end method

.method public b(I)Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;
    .registers 2

    .prologue
    .line 103
    iput p1, p0, Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;->b:I

    .line 104
    return-object p0
.end method
