.class public final enum Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;
.super Ljava/lang/Enum;
.source "RESTLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/newconcepts/utils/RESTLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HTTPVerb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DELETE:Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

.field private static final synthetic ENUM$VALUES:[Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

.field public static final enum GET:Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

.field public static final enum POST:Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

.field public static final enum PUT:Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;->GET:Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

    .line 41
    new-instance v0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;->POST:Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

    .line 42
    new-instance v0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;->PUT:Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

    .line 43
    new-instance v0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;->DELETE:Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

    sget-object v1, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;->GET:Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;->POST:Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;->PUT:Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;->DELETE:Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;->ENUM$VALUES:[Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

    return-object v0
.end method

.method public static values()[Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;->ENUM$VALUES:[Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

    array-length v1, v0

    new-array v2, v1, [Lcom/samsung/privilege/newconcepts/utils/RESTLoader$HTTPVerb;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
