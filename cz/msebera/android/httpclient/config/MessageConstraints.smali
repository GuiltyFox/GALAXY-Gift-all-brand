.class public Lcz/msebera/android/httpclient/config/MessageConstraints;
.super Ljava/lang/Object;
.source "MessageConstraints.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final a:Lcz/msebera/android/httpclient/config/MessageConstraints;


# instance fields
.field private final b:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    new-instance v0, Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;-><init>()V

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;->a()Lcz/msebera/android/httpclient/config/MessageConstraints;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/config/MessageConstraints;->a:Lcz/msebera/android/httpclient/config/MessageConstraints;

    return-void
.end method

.method constructor <init>(II)V
    .registers 3

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcz/msebera/android/httpclient/config/MessageConstraints;->b:I

    .line 47
    iput p2, p0, Lcz/msebera/android/httpclient/config/MessageConstraints;->c:I

    .line 48
    return-void
.end method

.method public static d()Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;
    .registers 1

    .prologue
    .line 77
    new-instance v0, Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcz/msebera/android/httpclient/config/MessageConstraints;->b:I

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lcz/msebera/android/httpclient/config/MessageConstraints;->c:I

    return v0
.end method

.method protected c()Lcz/msebera/android/httpclient/config/MessageConstraints;
    .registers 2

    .prologue
    .line 60
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/config/MessageConstraints;

    return-object v0
.end method

.method protected synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/config/MessageConstraints;->c()Lcz/msebera/android/httpclient/config/MessageConstraints;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    const-string/jumbo v1, "[maxLineLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/config/MessageConstraints;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", maxHeaderCount="

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/config/MessageConstraints;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
