
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00009117          	auipc	sp,0x9
    80000004:	96013103          	ld	sp,-1696(sp) # 80008960 <_GLOBAL_OFFSET_TABLE_+0x58>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	414050ef          	jal	ra,80005430 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:

    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    csrw sscratch, sp
    80001004:	14011073          	csrw	sscratch,sp
    sd x0, 0(sp)
    80001008:	00013023          	sd	zero,0(sp)
    sd x1, 8(sp)
    8000100c:	00113423          	sd	ra,8(sp)
    sd x2, 16(sp)
    80001010:	00213823          	sd	sp,16(sp)
    sd x3, 24(sp)
    80001014:	00313c23          	sd	gp,24(sp)
    sd x4, 32(sp)
    80001018:	02413023          	sd	tp,32(sp)
    sd x5, 40(sp)
    8000101c:	02513423          	sd	t0,40(sp)
    sd x6, 48(sp)
    80001020:	02613823          	sd	t1,48(sp)
    sd x7, 56(sp)
    80001024:	02713c23          	sd	t2,56(sp)
    sd x8, 64(sp)
    80001028:	04813023          	sd	s0,64(sp)
    sd x9, 72(sp)
    8000102c:	04913423          	sd	s1,72(sp)
    sd x10, 80(sp)
    80001030:	04a13823          	sd	a0,80(sp)
    sd x11, 88(sp)
    80001034:	04b13c23          	sd	a1,88(sp)
    sd x12, 96(sp)
    80001038:	06c13023          	sd	a2,96(sp)
    sd x13, 104(sp)
    8000103c:	06d13423          	sd	a3,104(sp)
    sd x14, 112(sp)
    80001040:	06e13823          	sd	a4,112(sp)
    sd x15, 120(sp)
    80001044:	06f13c23          	sd	a5,120(sp)
    sd x16, 128(sp)
    80001048:	09013023          	sd	a6,128(sp)
    sd x17, 136(sp)
    8000104c:	09113423          	sd	a7,136(sp)
    sd x18, 144(sp)
    80001050:	09213823          	sd	s2,144(sp)
    sd x19, 152(sp)
    80001054:	09313c23          	sd	s3,152(sp)
    sd x20, 160(sp)
    80001058:	0b413023          	sd	s4,160(sp)
    sd x21, 168(sp)
    8000105c:	0b513423          	sd	s5,168(sp)
    sd x22, 176(sp)
    80001060:	0b613823          	sd	s6,176(sp)
    sd x23, 184(sp)
    80001064:	0b713c23          	sd	s7,184(sp)
    sd x24, 192(sp)
    80001068:	0d813023          	sd	s8,192(sp)
    sd x25, 200(sp)
    8000106c:	0d913423          	sd	s9,200(sp)
    sd x26, 208(sp)
    80001070:	0da13823          	sd	s10,208(sp)
    sd x27, 216(sp)
    80001074:	0db13c23          	sd	s11,216(sp)
    sd x28, 224(sp)
    80001078:	0fc13023          	sd	t3,224(sp)
    sd x29, 232(sp)
    8000107c:	0fd13423          	sd	t4,232(sp)
    sd x30, 240(sp)
    80001080:	0fe13823          	sd	t5,240(sp)
    sd x31, 248(sp)
    80001084:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001088:	2cc030ef          	jal	ra,80004354 <_ZN5Riscv20handleSupervisorTrapEv>

    ld x0, 0(sp)
    8000108c:	00013003          	ld	zero,0(sp)
    ld x1, 8(sp)
    80001090:	00813083          	ld	ra,8(sp)
    ld x2, 16(sp)
    80001094:	01013103          	ld	sp,16(sp)
    ld x3, 24(sp)
    80001098:	01813183          	ld	gp,24(sp)
    ld x4, 32(sp)
    8000109c:	02013203          	ld	tp,32(sp)
    ld x5, 40(sp)
    800010a0:	02813283          	ld	t0,40(sp)
    ld x6, 48(sp)
    800010a4:	03013303          	ld	t1,48(sp)
    ld x7, 56(sp)
    800010a8:	03813383          	ld	t2,56(sp)
    ld x8, 64(sp)
    800010ac:	04013403          	ld	s0,64(sp)
    ld x9, 72(sp)
    800010b0:	04813483          	ld	s1,72(sp)
    ld x10, 80(sp)
    800010b4:	05013503          	ld	a0,80(sp)
    ld x11, 88(sp)
    800010b8:	05813583          	ld	a1,88(sp)
    ld x12, 96(sp)
    800010bc:	06013603          	ld	a2,96(sp)
    ld x13, 104(sp)
    800010c0:	06813683          	ld	a3,104(sp)
    ld x14, 112(sp)
    800010c4:	07013703          	ld	a4,112(sp)
    ld x15, 120(sp)
    800010c8:	07813783          	ld	a5,120(sp)
    ld x16, 128(sp)
    800010cc:	08013803          	ld	a6,128(sp)
    ld x17, 136(sp)
    800010d0:	08813883          	ld	a7,136(sp)
    ld x18, 144(sp)
    800010d4:	09013903          	ld	s2,144(sp)
    ld x19, 152(sp)
    800010d8:	09813983          	ld	s3,152(sp)
    ld x20, 160(sp)
    800010dc:	0a013a03          	ld	s4,160(sp)
    ld x21, 168(sp)
    800010e0:	0a813a83          	ld	s5,168(sp)
    ld x22, 176(sp)
    800010e4:	0b013b03          	ld	s6,176(sp)
    ld x23, 184(sp)
    800010e8:	0b813b83          	ld	s7,184(sp)
    ld x24, 192(sp)
    800010ec:	0c013c03          	ld	s8,192(sp)
    ld x25, 200(sp)
    800010f0:	0c813c83          	ld	s9,200(sp)
    ld x26, 208(sp)
    800010f4:	0d013d03          	ld	s10,208(sp)
    ld x27, 216(sp)
    800010f8:	0d813d83          	ld	s11,216(sp)
    ld x28, 224(sp)
    800010fc:	0e013e03          	ld	t3,224(sp)
    ld x29, 232(sp)
    80001100:	0e813e83          	ld	t4,232(sp)
    ld x30, 240(sp)
    80001104:	0f013f03          	ld	t5,240(sp)
    ld x31, 248(sp)
    80001108:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    8000110c:	10010113          	addi	sp,sp,256

    80001110:	10200073          	sret
	...

0000000080001120 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001120:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001124:	00313c23          	sd	gp,24(sp)
    80001128:	02413023          	sd	tp,32(sp)
    8000112c:	02513423          	sd	t0,40(sp)
    80001130:	02613823          	sd	t1,48(sp)
    80001134:	02713c23          	sd	t2,56(sp)
    80001138:	04813023          	sd	s0,64(sp)
    8000113c:	04913423          	sd	s1,72(sp)
    80001140:	04a13823          	sd	a0,80(sp)
    80001144:	04b13c23          	sd	a1,88(sp)
    80001148:	06c13023          	sd	a2,96(sp)
    8000114c:	06d13423          	sd	a3,104(sp)
    80001150:	06e13823          	sd	a4,112(sp)
    80001154:	06f13c23          	sd	a5,120(sp)
    80001158:	09013023          	sd	a6,128(sp)
    8000115c:	09113423          	sd	a7,136(sp)
    80001160:	09213823          	sd	s2,144(sp)
    80001164:	09313c23          	sd	s3,152(sp)
    80001168:	0b413023          	sd	s4,160(sp)
    8000116c:	0b513423          	sd	s5,168(sp)
    80001170:	0b613823          	sd	s6,176(sp)
    80001174:	0b713c23          	sd	s7,184(sp)
    80001178:	0d813023          	sd	s8,192(sp)
    8000117c:	0d913423          	sd	s9,200(sp)
    80001180:	0da13823          	sd	s10,208(sp)
    80001184:	0db13c23          	sd	s11,216(sp)
    80001188:	0fc13023          	sd	t3,224(sp)
    8000118c:	0fd13423          	sd	t4,232(sp)
    80001190:	0fe13823          	sd	t5,240(sp)
    80001194:	0ff13c23          	sd	t6,248(sp)
    ret
    80001198:	00008067          	ret

000000008000119c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000119c:	01813183          	ld	gp,24(sp)
    800011a0:	02013203          	ld	tp,32(sp)
    800011a4:	02813283          	ld	t0,40(sp)
    800011a8:	03013303          	ld	t1,48(sp)
    800011ac:	03813383          	ld	t2,56(sp)
    800011b0:	04013403          	ld	s0,64(sp)
    800011b4:	04813483          	ld	s1,72(sp)
    800011b8:	05013503          	ld	a0,80(sp)
    800011bc:	05813583          	ld	a1,88(sp)
    800011c0:	06013603          	ld	a2,96(sp)
    800011c4:	06813683          	ld	a3,104(sp)
    800011c8:	07013703          	ld	a4,112(sp)
    800011cc:	07813783          	ld	a5,120(sp)
    800011d0:	08013803          	ld	a6,128(sp)
    800011d4:	08813883          	ld	a7,136(sp)
    800011d8:	09013903          	ld	s2,144(sp)
    800011dc:	09813983          	ld	s3,152(sp)
    800011e0:	0a013a03          	ld	s4,160(sp)
    800011e4:	0a813a83          	ld	s5,168(sp)
    800011e8:	0b013b03          	ld	s6,176(sp)
    800011ec:	0b813b83          	ld	s7,184(sp)
    800011f0:	0c013c03          	ld	s8,192(sp)
    800011f4:	0c813c83          	ld	s9,200(sp)
    800011f8:	0d013d03          	ld	s10,208(sp)
    800011fc:	0d813d83          	ld	s11,216(sp)
    80001200:	0e013e03          	ld	t3,224(sp)
    80001204:	0e813e83          	ld	t4,232(sp)
    80001208:	0f013f03          	ld	t5,240(sp)
    8000120c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001210:	10010113          	addi	sp,sp,256
    ret
    80001214:	00008067          	ret

0000000080001218 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    #a0 - &old->Context
    #a1 - &running->Context
    sd sp, 0 * 8(a0)
    80001218:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 1 * 8(a0)
    8000121c:	00153423          	sd	ra,8(a0)

    ld sp, 0 * 8(a1)
    80001220:	0005b103          	ld	sp,0(a1)
    ld ra, 1 * 8(a1)
    80001224:	0085b083          	ld	ra,8(a1)

    ret
    80001228:	00008067          	ret

000000008000122c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>:

.global _ZN3PCB20contextSwitchExitingEPNS_7ContextE
.type _ZN3PCB20contextSwitchExitingEPNS_7ContextE, @function
_ZN3PCB20contextSwitchExitingEPNS_7ContextE:
    #a0 - &running->Context
    ld sp, 0 * 8(a0)
    8000122c:	00053103          	ld	sp,0(a0)
    ld ra, 1 * 8(a0)
    80001230:	00853083          	ld	ra,8(a0)

    80001234:	00008067          	ret

0000000080001238 <_Z22thread_dispatch_kernelv>:
//
#include "../../h/syscall_c_kernel.hpp"


void thread_dispatch_kernel()
{
    80001238:	ff010113          	addi	sp,sp,-16
    8000123c:	00813423          	sd	s0,8(sp)
    80001240:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001244:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80001248:	00000073          	ecall
}
    8000124c:	00813403          	ld	s0,8(sp)
    80001250:	01010113          	addi	sp,sp,16
    80001254:	00008067          	ret

0000000080001258 <_Z20sysCallGetCharOutputv>:

char sysCallGetCharOutput()
{
    80001258:	ff010113          	addi	sp,sp,-16
    8000125c:	00813423          	sd	s0,8(sp)
    80001260:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x43");
    80001264:	04300513          	li	a0,67

    __asm__ volatile("ecall");
    80001268:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000126c:	00050513          	mv	a0,a0
    return (char)result;
}
    80001270:	0ff57513          	andi	a0,a0,255
    80001274:	00813403          	ld	s0,8(sp)
    80001278:	01010113          	addi	sp,sp,16
    8000127c:	00008067          	ret

0000000080001280 <_Z18thread_exit_kernelv>:


int thread_exit_kernel()
{
    80001280:	ff010113          	addi	sp,sp,-16
    80001284:	00813423          	sd	s0,8(sp)
    80001288:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    8000128c:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    80001290:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001294:	00050513          	mv	a0,a0
    return result;
    80001298:	0005051b          	sext.w	a0,a0
    8000129c:	00813403          	ld	s0,8(sp)
    800012a0:	01010113          	addi	sp,sp,16
    800012a4:	00008067          	ret

00000000800012a8 <_Z6strcpyPKcPc>:
//singleton slab allocator
static slab_allocator_t* slabAllocator = nullptr;

//helping functions
void strcpy(const char* src, char* dst)
{
    800012a8:	ff010113          	addi	sp,sp,-16
    800012ac:	00813423          	sd	s0,8(sp)
    800012b0:	01010413          	addi	s0,sp,16
    while(*src != '\0')
    800012b4:	00054783          	lbu	a5,0(a0)
    800012b8:	00078a63          	beqz	a5,800012cc <_Z6strcpyPKcPc+0x24>
    {
        *dst = *src;
    800012bc:	00f58023          	sb	a5,0(a1)
        src++; dst++;
    800012c0:	00150513          	addi	a0,a0,1
    800012c4:	00158593          	addi	a1,a1,1
    while(*src != '\0')
    800012c8:	fedff06f          	j	800012b4 <_Z6strcpyPKcPc+0xc>
    }
    *dst = *src;
    800012cc:	00f58023          	sb	a5,0(a1)
}
    800012d0:	00813403          	ld	s0,8(sp)
    800012d4:	01010113          	addi	sp,sp,16
    800012d8:	00008067          	ret

00000000800012dc <_Z17destroy_slab_listPP6slab_s>:

int destroy_slab_list(slab_t** slab)
{
    800012dc:	fd010113          	addi	sp,sp,-48
    800012e0:	02113423          	sd	ra,40(sp)
    800012e4:	02813023          	sd	s0,32(sp)
    800012e8:	00913c23          	sd	s1,24(sp)
    800012ec:	01213823          	sd	s2,16(sp)
    800012f0:	01313423          	sd	s3,8(sp)
    800012f4:	01413023          	sd	s4,0(sp)
    800012f8:	03010413          	addi	s0,sp,48
    if(*slab == nullptr) return 0;
    800012fc:	00053783          	ld	a5,0(a0)
    80001300:	04078263          	beqz	a5,80001344 <_Z17destroy_slab_listPP6slab_s+0x68>
    80001304:	00050493          	mv	s1,a0
    size_t sz = (*slab)->owner->slab_size;
    80001308:	0107b783          	ld	a5,16(a5)
    8000130c:	0587b983          	ld	s3,88(a5)
    int totalBlocks = 0;
    80001310:	00000913          	li	s2,0
    while(*slab != nullptr)
    80001314:	0004b583          	ld	a1,0(s1)
    80001318:	02058863          	beqz	a1,80001348 <_Z17destroy_slab_listPP6slab_s+0x6c>
    {
        slab_t* nextSlab = (*slab)->next;
    8000131c:	0085ba03          	ld	s4,8(a1)
        buddy_free(slabAllocator->buddy, *slab, sz);
    80001320:	00098613          	mv	a2,s3
    80001324:	00007797          	auipc	a5,0x7
    80001328:	6ec7b783          	ld	a5,1772(a5) # 80008a10 <_ZL13slabAllocator>
    8000132c:	0007b503          	ld	a0,0(a5)
    80001330:	00002097          	auipc	ra,0x2
    80001334:	b14080e7          	jalr	-1260(ra) # 80002e44 <_Z10buddy_freeP14buddyAllocatorPvm>
        *slab = nextSlab;
    80001338:	0144b023          	sd	s4,0(s1)
        totalBlocks+=sz;
    8000133c:	0129893b          	addw	s2,s3,s2
    while(*slab != nullptr)
    80001340:	fd5ff06f          	j	80001314 <_Z17destroy_slab_listPP6slab_s+0x38>
    if(*slab == nullptr) return 0;
    80001344:	00000913          	li	s2,0
    }
    return totalBlocks;
}
    80001348:	00090513          	mv	a0,s2
    8000134c:	02813083          	ld	ra,40(sp)
    80001350:	02013403          	ld	s0,32(sp)
    80001354:	01813483          	ld	s1,24(sp)
    80001358:	01013903          	ld	s2,16(sp)
    8000135c:	00813983          	ld	s3,8(sp)
    80001360:	00013a03          	ld	s4,0(sp)
    80001364:	03010113          	addi	sp,sp,48
    80001368:	00008067          	ret

000000008000136c <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>:

void init_cache(kmem_cache_t* cachep, const char* cache_name, size_t slab_size, size_t obj_size, void (*ctor)(void*),void (*dtor)(void*))
{
    8000136c:	fc010113          	addi	sp,sp,-64
    80001370:	02113c23          	sd	ra,56(sp)
    80001374:	02813823          	sd	s0,48(sp)
    80001378:	02913423          	sd	s1,40(sp)
    8000137c:	03213023          	sd	s2,32(sp)
    80001380:	01313c23          	sd	s3,24(sp)
    80001384:	01413823          	sd	s4,16(sp)
    80001388:	01513423          	sd	s5,8(sp)
    8000138c:	04010413          	addi	s0,sp,64
    80001390:	00050493          	mv	s1,a0
    80001394:	00058513          	mv	a0,a1
    80001398:	00060a93          	mv	s5,a2
    8000139c:	00068a13          	mv	s4,a3
    800013a0:	00070993          	mv	s3,a4
    800013a4:	00078913          	mv	s2,a5
    strcpy(cache_name, cachep->cacheName);
    800013a8:	00048593          	mv	a1,s1
    800013ac:	00000097          	auipc	ra,0x0
    800013b0:	efc080e7          	jalr	-260(ra) # 800012a8 <_Z6strcpyPKcPc>
    cachep->slab_size = slab_size;
    800013b4:	0554bc23          	sd	s5,88(s1)
    cachep->obj_size = obj_size;
    800013b8:	0744b023          	sd	s4,96(s1)
    cachep->ctor = ctor;
    800013bc:	0734b423          	sd	s3,104(s1)
    cachep->dtor = dtor;
    800013c0:	0724b823          	sd	s2,112(s1)

    cachep->slabs_empty = cachep->slabs_partial = cachep->slabs_full = nullptr;
    800013c4:	0404b423          	sd	zero,72(s1)
    800013c8:	0404b823          	sd	zero,80(s1)
    800013cc:	0404b023          	sd	zero,64(s1)
    cachep->errors = NO_ERROR;
    800013d0:	0604ac23          	sw	zero,120(s1)
}
    800013d4:	03813083          	ld	ra,56(sp)
    800013d8:	03013403          	ld	s0,48(sp)
    800013dc:	02813483          	ld	s1,40(sp)
    800013e0:	02013903          	ld	s2,32(sp)
    800013e4:	01813983          	ld	s3,24(sp)
    800013e8:	01013a03          	ld	s4,16(sp)
    800013ec:	00813a83          	ld	s5,8(sp)
    800013f0:	04010113          	addi	sp,sp,64
    800013f4:	00008067          	ret

00000000800013f8 <_Z19slab_allocator_initP14buddyAllocator>:

slab_allocator_t* slab_allocator_init(buddyAllocator *buddy)
{
    800013f8:	fe010113          	addi	sp,sp,-32
    800013fc:	00113c23          	sd	ra,24(sp)
    80001400:	00813823          	sd	s0,16(sp)
    80001404:	00913423          	sd	s1,8(sp)
    80001408:	02010413          	addi	s0,sp,32
    slab_allocator_t* slabAllocatorLocal = (slab_allocator_t*)(buddy + 1);
    8000140c:	12050493          	addi	s1,a0,288

    slabAllocatorLocal->buddy = buddy;
    80001410:	12a53023          	sd	a0,288(a0)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    80001414:	00000793          	li	a5,0
    80001418:	0140006f          	j	8000142c <_Z19slab_allocator_initP14buddyAllocator+0x34>
        slabAllocatorLocal->cachesBuffers[i] = nullptr;
    8000141c:	00379713          	slli	a4,a5,0x3
    80001420:	00e50733          	add	a4,a0,a4
    80001424:	12073423          	sd	zero,296(a4)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    80001428:	00178793          	addi	a5,a5,1
    8000142c:	00c00713          	li	a4,12
    80001430:	fef776e3          	bgeu	a4,a5,8000141c <_Z19slab_allocator_initP14buddyAllocator+0x24>

    init_cache(&slabAllocatorLocal->cacheOfCaches, "Cache of caches", CACHE_OF_CACHES_SLAB_SIZE, sizeof(kmem_cache_t), nullptr,nullptr);
    80001434:	00000793          	li	a5,0
    80001438:	00000713          	li	a4,0
    8000143c:	08000693          	li	a3,128
    80001440:	00200613          	li	a2,2
    80001444:	00007597          	auipc	a1,0x7
    80001448:	bdc58593          	addi	a1,a1,-1060 # 80008020 <CONSOLE_STATUS+0x10>
    8000144c:	19050513          	addi	a0,a0,400
    80001450:	00000097          	auipc	ra,0x0
    80001454:	f1c080e7          	jalr	-228(ra) # 8000136c <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>

    return slabAllocatorLocal;
}
    80001458:	00048513          	mv	a0,s1
    8000145c:	01813083          	ld	ra,24(sp)
    80001460:	01013403          	ld	s0,16(sp)
    80001464:	00813483          	ld	s1,8(sp)
    80001468:	02010113          	addi	sp,sp,32
    8000146c:	00008067          	ret

0000000080001470 <_Z13checkSetIndexP6slab_si>:

bool checkSetIndex(slab_t* slab, int index)
{
    80001470:	ff010113          	addi	sp,sp,-16
    80001474:	00813423          	sd	s0,8(sp)
    80001478:	01010413          	addi	s0,sp,16
    return (uint8)slab->allocated[index / 8] & (1 << (index%8));
    8000147c:	41f5d79b          	sraiw	a5,a1,0x1f
    80001480:	01d7d79b          	srliw	a5,a5,0x1d
    80001484:	00b785bb          	addw	a1,a5,a1
    80001488:	4035d71b          	sraiw	a4,a1,0x3
    8000148c:	00e50533          	add	a0,a0,a4
    80001490:	02854503          	lbu	a0,40(a0)
    80001494:	0075f593          	andi	a1,a1,7
    80001498:	40f585bb          	subw	a1,a1,a5
    8000149c:	40b5553b          	sraw	a0,a0,a1
}
    800014a0:	00157513          	andi	a0,a0,1
    800014a4:	00813403          	ld	s0,8(sp)
    800014a8:	01010113          	addi	sp,sp,16
    800014ac:	00008067          	ret

00000000800014b0 <_Z17setAllocatedIndexP6slab_si>:

void setAllocatedIndex(slab_t* slab, int index)
{
    800014b0:	ff010113          	addi	sp,sp,-16
    800014b4:	00813423          	sd	s0,8(sp)
    800014b8:	01010413          	addi	s0,sp,16
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] | (1 << (index%8));
    800014bc:	41f5d79b          	sraiw	a5,a1,0x1f
    800014c0:	01d7d79b          	srliw	a5,a5,0x1d
    800014c4:	00b785bb          	addw	a1,a5,a1
    800014c8:	4035d71b          	sraiw	a4,a1,0x3
    800014cc:	00e50533          	add	a0,a0,a4
    800014d0:	02850703          	lb	a4,40(a0)
    800014d4:	0075f593          	andi	a1,a1,7
    800014d8:	40f585bb          	subw	a1,a1,a5
    800014dc:	00100793          	li	a5,1
    800014e0:	00b795bb          	sllw	a1,a5,a1
    800014e4:	00b765b3          	or	a1,a4,a1
    800014e8:	02b50423          	sb	a1,40(a0)
}
    800014ec:	00813403          	ld	s0,8(sp)
    800014f0:	01010113          	addi	sp,sp,16
    800014f4:	00008067          	ret

00000000800014f8 <_Z14allocateObjectP6slab_s>:

void* allocateObject(slab_t* slab)
{
    800014f8:	fd010113          	addi	sp,sp,-48
    800014fc:	02113423          	sd	ra,40(sp)
    80001500:	02813023          	sd	s0,32(sp)
    80001504:	00913c23          	sd	s1,24(sp)
    80001508:	01213823          	sd	s2,16(sp)
    8000150c:	01313423          	sd	s3,8(sp)
    80001510:	03010413          	addi	s0,sp,48
    80001514:	00050913          	mv	s2,a0
    if(slab == nullptr)
    80001518:	08050863          	beqz	a0,800015a8 <_Z14allocateObjectP6slab_s+0xb0>
        return nullptr;
    int index = -1;
    void* addr = nullptr;
    for(size_t i = 0;i < slab->numOfObjects;i++)
    8000151c:	00000493          	li	s1,0
    80001520:	01893783          	ld	a5,24(s2)
    80001524:	02f4fe63          	bgeu	s1,a5,80001560 <_Z14allocateObjectP6slab_s+0x68>
    {
        if(!checkSetIndex(slab, i))
    80001528:	0004899b          	sext.w	s3,s1
    8000152c:	00098593          	mv	a1,s3
    80001530:	00090513          	mv	a0,s2
    80001534:	00000097          	auipc	ra,0x0
    80001538:	f3c080e7          	jalr	-196(ra) # 80001470 <_Z13checkSetIndexP6slab_si>
    8000153c:	00050663          	beqz	a0,80001548 <_Z14allocateObjectP6slab_s+0x50>
    for(size_t i = 0;i < slab->numOfObjects;i++)
    80001540:	00148493          	addi	s1,s1,1
    80001544:	fddff06f          	j	80001520 <_Z14allocateObjectP6slab_s+0x28>
        {
            addr = (void*)((size_t)slab + sizeof(slab_t)+ i*slab->owner->obj_size);
    80001548:	01093783          	ld	a5,16(s2)
    8000154c:	0607b783          	ld	a5,96(a5)
    80001550:	029784b3          	mul	s1,a5,s1
    80001554:	009904b3          	add	s1,s2,s1
    80001558:	42848493          	addi	s1,s1,1064
            index = i;
            break;
    8000155c:	00c0006f          	j	80001568 <_Z14allocateObjectP6slab_s+0x70>
    void* addr = nullptr;
    80001560:	00000493          	li	s1,0
    int index = -1;
    80001564:	fff00993          	li	s3,-1
        }
    }
    if(addr == nullptr)
    80001568:	02048063          	beqz	s1,80001588 <_Z14allocateObjectP6slab_s+0x90>
        return nullptr;

    setAllocatedIndex(slab, index);
    8000156c:	00098593          	mv	a1,s3
    80001570:	00090513          	mv	a0,s2
    80001574:	00000097          	auipc	ra,0x0
    80001578:	f3c080e7          	jalr	-196(ra) # 800014b0 <_Z17setAllocatedIndexP6slab_si>
    slab->numOfAllocatedObjects++;
    8000157c:	02093783          	ld	a5,32(s2)
    80001580:	00178793          	addi	a5,a5,1
    80001584:	02f93023          	sd	a5,32(s2)

    return addr;
}
    80001588:	00048513          	mv	a0,s1
    8000158c:	02813083          	ld	ra,40(sp)
    80001590:	02013403          	ld	s0,32(sp)
    80001594:	01813483          	ld	s1,24(sp)
    80001598:	01013903          	ld	s2,16(sp)
    8000159c:	00813983          	ld	s3,8(sp)
    800015a0:	03010113          	addi	sp,sp,48
    800015a4:	00008067          	ret
        return nullptr;
    800015a8:	00050493          	mv	s1,a0
    800015ac:	fddff06f          	j	80001588 <_Z14allocateObjectP6slab_s+0x90>

00000000800015b0 <_Z4fullP6slab_s>:

bool full(slab_t* slab)
{
    800015b0:	ff010113          	addi	sp,sp,-16
    800015b4:	00813423          	sd	s0,8(sp)
    800015b8:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == slab->numOfObjects;
    800015bc:	02053783          	ld	a5,32(a0)
    800015c0:	01853503          	ld	a0,24(a0)
    800015c4:	40f50533          	sub	a0,a0,a5
}
    800015c8:	00153513          	seqz	a0,a0
    800015cc:	00813403          	ld	s0,8(sp)
    800015d0:	01010113          	addi	sp,sp,16
    800015d4:	00008067          	ret

00000000800015d8 <_Z5emptyP6slab_s>:

bool empty(slab_t* slab)
{
    800015d8:	ff010113          	addi	sp,sp,-16
    800015dc:	00813423          	sd	s0,8(sp)
    800015e0:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == 0;
    800015e4:	02053503          	ld	a0,32(a0)
}
    800015e8:	00153513          	seqz	a0,a0
    800015ec:	00813403          	ld	s0,8(sp)
    800015f0:	01010113          	addi	sp,sp,16
    800015f4:	00008067          	ret

00000000800015f8 <_Z18insertIntoSlabListP6slab_sPS0_>:

void insertIntoSlabList(slab_t* slab, slab_t** slab_head)
{
    800015f8:	ff010113          	addi	sp,sp,-16
    800015fc:	00813423          	sd	s0,8(sp)
    80001600:	01010413          	addi	s0,sp,16
    if(slab == nullptr)
    80001604:	00050e63          	beqz	a0,80001620 <_Z18insertIntoSlabListP6slab_sPS0_+0x28>
        return;
    slab->prev = nullptr;
    80001608:	00053023          	sd	zero,0(a0)
    slab->next = *slab_head;
    8000160c:	0005b783          	ld	a5,0(a1)
    80001610:	00f53423          	sd	a5,8(a0)
    if(*slab_head != nullptr)
    80001614:	00078463          	beqz	a5,8000161c <_Z18insertIntoSlabListP6slab_sPS0_+0x24>
        (*slab_head)->prev = slab;
    80001618:	00a7b023          	sd	a0,0(a5)
    *slab_head = slab;
    8000161c:	00a5b023          	sd	a0,0(a1)
}
    80001620:	00813403          	ld	s0,8(sp)
    80001624:	01010113          	addi	sp,sp,16
    80001628:	00008067          	ret

000000008000162c <_Z18removeFromSlabListP6slab_sPS0_>:

void removeFromSlabList(slab_t* slab, slab_t** slab_head)
{
    8000162c:	ff010113          	addi	sp,sp,-16
    80001630:	00813423          	sd	s0,8(sp)
    80001634:	01010413          	addi	s0,sp,16
    if(slab->prev == nullptr) //same as slab == *slab_head
    80001638:	00053783          	ld	a5,0(a0)
    8000163c:	02078663          	beqz	a5,80001668 <_Z18removeFromSlabListP6slab_sPS0_+0x3c>
        (*slab_head) = slab->next;
        slab->next = slab->prev = nullptr;
    }
    else
    {
        slab->prev->next = slab->next;
    80001640:	00853703          	ld	a4,8(a0)
    80001644:	00e7b423          	sd	a4,8(a5)
        if(slab->next) slab->next->prev = slab->prev;
    80001648:	00070663          	beqz	a4,80001654 <_Z18removeFromSlabListP6slab_sPS0_+0x28>
    8000164c:	00053783          	ld	a5,0(a0)
    80001650:	00f73023          	sd	a5,0(a4)
        slab->next = slab->prev = nullptr;
    80001654:	00053023          	sd	zero,0(a0)
    80001658:	00053423          	sd	zero,8(a0)
    }
}
    8000165c:	00813403          	ld	s0,8(sp)
    80001660:	01010113          	addi	sp,sp,16
    80001664:	00008067          	ret
        if(slab->next) slab->next->prev = nullptr;
    80001668:	00853783          	ld	a5,8(a0)
    8000166c:	00078463          	beqz	a5,80001674 <_Z18removeFromSlabListP6slab_sPS0_+0x48>
    80001670:	0007b023          	sd	zero,0(a5)
        (*slab_head) = slab->next;
    80001674:	00853783          	ld	a5,8(a0)
    80001678:	00f5b023          	sd	a5,0(a1)
        slab->next = slab->prev = nullptr;
    8000167c:	00053023          	sd	zero,0(a0)
    80001680:	00053423          	sd	zero,8(a0)
    80001684:	fd9ff06f          	j	8000165c <_Z18removeFromSlabListP6slab_sPS0_+0x30>

0000000080001688 <_Z16putPartialToFullP12kmem_cache_s>:

void putPartialToFull(kmem_cache_t* cachep)
{
    80001688:	fe010113          	addi	sp,sp,-32
    8000168c:	00113c23          	sd	ra,24(sp)
    80001690:	00813823          	sd	s0,16(sp)
    80001694:	00913423          	sd	s1,8(sp)
    80001698:	01213023          	sd	s2,0(sp)
    8000169c:	02010413          	addi	s0,sp,32
    800016a0:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_partial;
    800016a4:	05053903          	ld	s2,80(a0)
    removeFromSlabList(slab, &cachep->slabs_partial);
    800016a8:	05050593          	addi	a1,a0,80
    800016ac:	00090513          	mv	a0,s2
    800016b0:	00000097          	auipc	ra,0x0
    800016b4:	f7c080e7          	jalr	-132(ra) # 8000162c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_full);
    800016b8:	04848593          	addi	a1,s1,72
    800016bc:	00090513          	mv	a0,s2
    800016c0:	00000097          	auipc	ra,0x0
    800016c4:	f38080e7          	jalr	-200(ra) # 800015f8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    800016c8:	01813083          	ld	ra,24(sp)
    800016cc:	01013403          	ld	s0,16(sp)
    800016d0:	00813483          	ld	s1,8(sp)
    800016d4:	00013903          	ld	s2,0(sp)
    800016d8:	02010113          	addi	sp,sp,32
    800016dc:	00008067          	ret

00000000800016e0 <_Z17putEmptyToPartialP12kmem_cache_s>:

void putEmptyToPartial(kmem_cache_t* cachep)
{
    800016e0:	fe010113          	addi	sp,sp,-32
    800016e4:	00113c23          	sd	ra,24(sp)
    800016e8:	00813823          	sd	s0,16(sp)
    800016ec:	00913423          	sd	s1,8(sp)
    800016f0:	01213023          	sd	s2,0(sp)
    800016f4:	02010413          	addi	s0,sp,32
    800016f8:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_empty;
    800016fc:	04053903          	ld	s2,64(a0)
    removeFromSlabList(slab, &cachep->slabs_empty);
    80001700:	04050593          	addi	a1,a0,64
    80001704:	00090513          	mv	a0,s2
    80001708:	00000097          	auipc	ra,0x0
    8000170c:	f24080e7          	jalr	-220(ra) # 8000162c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    80001710:	05048593          	addi	a1,s1,80
    80001714:	00090513          	mv	a0,s2
    80001718:	00000097          	auipc	ra,0x0
    8000171c:	ee0080e7          	jalr	-288(ra) # 800015f8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001720:	01813083          	ld	ra,24(sp)
    80001724:	01013403          	ld	s0,16(sp)
    80001728:	00813483          	ld	s1,8(sp)
    8000172c:	00013903          	ld	s2,0(sp)
    80001730:	02010113          	addi	sp,sp,32
    80001734:	00008067          	ret

0000000080001738 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>:

void removeFullSlab(kmem_cache_t* cachep, slab_t* slab)
{
    80001738:	fe010113          	addi	sp,sp,-32
    8000173c:	00113c23          	sd	ra,24(sp)
    80001740:	00813823          	sd	s0,16(sp)
    80001744:	00913423          	sd	s1,8(sp)
    80001748:	01213023          	sd	s2,0(sp)
    8000174c:	02010413          	addi	s0,sp,32
    80001750:	00050913          	mv	s2,a0
    80001754:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_full);
    80001758:	04850593          	addi	a1,a0,72
    8000175c:	00048513          	mv	a0,s1
    80001760:	00000097          	auipc	ra,0x0
    80001764:	ecc080e7          	jalr	-308(ra) # 8000162c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    80001768:	05090593          	addi	a1,s2,80
    8000176c:	00048513          	mv	a0,s1
    80001770:	00000097          	auipc	ra,0x0
    80001774:	e88080e7          	jalr	-376(ra) # 800015f8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001778:	01813083          	ld	ra,24(sp)
    8000177c:	01013403          	ld	s0,16(sp)
    80001780:	00813483          	ld	s1,8(sp)
    80001784:	00013903          	ld	s2,0(sp)
    80001788:	02010113          	addi	sp,sp,32
    8000178c:	00008067          	ret

0000000080001790 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>:

void removePartialSlab(kmem_cache_t * cachep, slab_t* slab)
{
    80001790:	fe010113          	addi	sp,sp,-32
    80001794:	00113c23          	sd	ra,24(sp)
    80001798:	00813823          	sd	s0,16(sp)
    8000179c:	00913423          	sd	s1,8(sp)
    800017a0:	01213023          	sd	s2,0(sp)
    800017a4:	02010413          	addi	s0,sp,32
    800017a8:	00050913          	mv	s2,a0
    800017ac:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_partial);
    800017b0:	05050593          	addi	a1,a0,80
    800017b4:	00048513          	mv	a0,s1
    800017b8:	00000097          	auipc	ra,0x0
    800017bc:	e74080e7          	jalr	-396(ra) # 8000162c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_empty);
    800017c0:	04090593          	addi	a1,s2,64
    800017c4:	00048513          	mv	a0,s1
    800017c8:	00000097          	auipc	ra,0x0
    800017cc:	e30080e7          	jalr	-464(ra) # 800015f8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    800017d0:	01813083          	ld	ra,24(sp)
    800017d4:	01013403          	ld	s0,16(sp)
    800017d8:	00813483          	ld	s1,8(sp)
    800017dc:	00013903          	ld	s2,0(sp)
    800017e0:	02010113          	addi	sp,sp,32
    800017e4:	00008067          	ret

00000000800017e8 <_Z12allocateSlabP12kmem_cache_s>:

void allocateSlab(kmem_cache_t* cachep)
{
    800017e8:	fd010113          	addi	sp,sp,-48
    800017ec:	02113423          	sd	ra,40(sp)
    800017f0:	02813023          	sd	s0,32(sp)
    800017f4:	00913c23          	sd	s1,24(sp)
    800017f8:	01213823          	sd	s2,16(sp)
    800017fc:	01313423          	sd	s3,8(sp)
    80001800:	03010413          	addi	s0,sp,48
    80001804:	00050993          	mv	s3,a0
    slab_t* newSlab = (slab_t*)buddy_alloc(slabAllocator->buddy,cachep->slab_size);
    80001808:	05853583          	ld	a1,88(a0)
    8000180c:	00007797          	auipc	a5,0x7
    80001810:	2047b783          	ld	a5,516(a5) # 80008a10 <_ZL13slabAllocator>
    80001814:	0007b503          	ld	a0,0(a5)
    80001818:	00001097          	auipc	ra,0x1
    8000181c:	33c080e7          	jalr	828(ra) # 80002b54 <_Z11buddy_allocP14buddyAllocatorm>
    if(newSlab == nullptr)
    80001820:	08050c63          	beqz	a0,800018b8 <_Z12allocateSlabP12kmem_cache_s+0xd0>
    80001824:	00050493          	mv	s1,a0
        return;
    newSlab->next = cachep->slabs_empty;
    80001828:	0409b783          	ld	a5,64(s3)
    8000182c:	00f53423          	sd	a5,8(a0)
    if(cachep->slabs_empty != nullptr)
    80001830:	00078463          	beqz	a5,80001838 <_Z12allocateSlabP12kmem_cache_s+0x50>
        cachep->slabs_empty->prev = newSlab;
    80001834:	00a7b023          	sd	a0,0(a5)
    cachep->slabs_empty = newSlab;
    80001838:	0499b023          	sd	s1,64(s3)
    newSlab->prev = nullptr;
    8000183c:	0004b023          	sd	zero,0(s1)

    newSlab->numOfAllocatedObjects = 0;
    80001840:	0204b023          	sd	zero,32(s1)
    newSlab->owner = cachep;
    80001844:	0134b823          	sd	s3,16(s1)
    size_t sizeInBytes = cachep->slab_size*BLOCK_SIZE;
    80001848:	0589b683          	ld	a3,88(s3)
    8000184c:	00c69693          	slli	a3,a3,0xc
    newSlab->numOfObjects = (sizeInBytes - sizeof(slab_t)) / cachep->obj_size; // TODO can this param be in cache ?
    80001850:	bd868693          	addi	a3,a3,-1064
    80001854:	0609b783          	ld	a5,96(s3)
    80001858:	02f6d6b3          	divu	a3,a3,a5
    8000185c:	00d4bc23          	sd	a3,24(s1)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    80001860:	00000713          	li	a4,0
    80001864:	00768793          	addi	a5,a3,7
    80001868:	0037d793          	srli	a5,a5,0x3
    8000186c:	00f77a63          	bgeu	a4,a5,80001880 <_Z12allocateSlabP12kmem_cache_s+0x98>
        newSlab->allocated[i] = 0;
    80001870:	00e487b3          	add	a5,s1,a4
    80001874:	02078423          	sb	zero,40(a5)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    80001878:	00170713          	addi	a4,a4,1
    8000187c:	fe9ff06f          	j	80001864 <_Z12allocateSlabP12kmem_cache_s+0x7c>

    if(cachep->ctor != nullptr)
    80001880:	0689b783          	ld	a5,104(s3)
    80001884:	02078a63          	beqz	a5,800018b8 <_Z12allocateSlabP12kmem_cache_s+0xd0>
    {
        for(size_t i = 0;i < newSlab->numOfObjects;i++)
    80001888:	00000913          	li	s2,0
    8000188c:	0184b783          	ld	a5,24(s1)
    80001890:	02f97463          	bgeu	s2,a5,800018b8 <_Z12allocateSlabP12kmem_cache_s+0xd0>
            cachep->ctor((void*)((size_t)newSlab + sizeof(slab_t) + i*newSlab->owner->obj_size));
    80001894:	0689b783          	ld	a5,104(s3)
    80001898:	0104b703          	ld	a4,16(s1)
    8000189c:	06073503          	ld	a0,96(a4)
    800018a0:	03250533          	mul	a0,a0,s2
    800018a4:	00a48533          	add	a0,s1,a0
    800018a8:	42850513          	addi	a0,a0,1064
    800018ac:	000780e7          	jalr	a5
        for(size_t i = 0;i < newSlab->numOfObjects;i++)
    800018b0:	00190913          	addi	s2,s2,1
    800018b4:	fd9ff06f          	j	8000188c <_Z12allocateSlabP12kmem_cache_s+0xa4>
    }
}
    800018b8:	02813083          	ld	ra,40(sp)
    800018bc:	02013403          	ld	s0,32(sp)
    800018c0:	01813483          	ld	s1,24(sp)
    800018c4:	01013903          	ld	s2,16(sp)
    800018c8:	00813983          	ld	s3,8(sp)
    800018cc:	03010113          	addi	sp,sp,48
    800018d0:	00008067          	ret

00000000800018d4 <_Z18getOptimalSlabSizem>:

size_t getOptimalSlabSize(size_t obj_size)
{
    800018d4:	ff010113          	addi	sp,sp,-16
    800018d8:	00813423          	sd	s0,8(sp)
    800018dc:	01010413          	addi	s0,sp,16
    size_t bestSize = BLOCK_SIZE;
    800018e0:	000017b7          	lui	a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    800018e4:	42850713          	addi	a4,a0,1064
    800018e8:	00e7f663          	bgeu	a5,a4,800018f4 <_Z18getOptimalSlabSizem+0x20>
        bestSize<<=1;
    800018ec:	00179793          	slli	a5,a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    800018f0:	ff5ff06f          	j	800018e4 <_Z18getOptimalSlabSizem+0x10>
    size_t optimalWaste = (bestSize - sizeof(slab_t)) % obj_size;
    800018f4:	bd878813          	addi	a6,a5,-1064 # bd8 <_entry-0x7ffff428>
    800018f8:	02a87833          	remu	a6,a6,a0

    //return bestSize / BLOCK_SIZE;

    static size_t lowerConst = 1;
    static size_t highConst = 4;
    for(size_t i = lowerConst;i<=highConst;i++)
    800018fc:	00100693          	li	a3,1
    80001900:	0080006f          	j	80001908 <_Z18getOptimalSlabSizem+0x34>
    80001904:	00168693          	addi	a3,a3,1
    80001908:	00400713          	li	a4,4
    8000190c:	02d76663          	bltu	a4,a3,80001938 <_Z18getOptimalSlabSizem+0x64>
    {
        size_t newSize = bestSize << i;
    80001910:	00d79633          	sll	a2,a5,a3
        size_t newWaste = (newSize - sizeof(slab_t)) % obj_size;
    80001914:	bd860713          	addi	a4,a2,-1064
    80001918:	02a775b3          	remu	a1,a4,a0
        size_t numOfObjs = (newSize - sizeof(slab_t)) / obj_size;
    8000191c:	02a75733          	divu	a4,a4,a0
        if(newWaste < optimalWaste && numOfObjs <= MAX_NUM_OF_OBJS)
    80001920:	ff05f2e3          	bgeu	a1,a6,80001904 <_Z18getOptimalSlabSizem+0x30>
    80001924:	000028b7          	lui	a7,0x2
    80001928:	fce8eee3          	bltu	a7,a4,80001904 <_Z18getOptimalSlabSizem+0x30>
        {
            optimalWaste = newWaste;
    8000192c:	00058813          	mv	a6,a1
            bestSize = newSize;
    80001930:	00060793          	mv	a5,a2
    80001934:	fd1ff06f          	j	80001904 <_Z18getOptimalSlabSizem+0x30>
        }
    }

    return bestSize / BLOCK_SIZE;
}
    80001938:	00c7d513          	srli	a0,a5,0xc
    8000193c:	00813403          	ld	s0,8(sp)
    80001940:	01010113          	addi	sp,sp,16
    80001944:	00008067          	ret

0000000080001948 <_Z8findSlabP12kmem_cache_sPKv>:

//finds the slab where objp is
slab_t* findSlab(kmem_cache_t* cachep, const void* objp)
{
    80001948:	ff010113          	addi	sp,sp,-16
    8000194c:	00813423          	sd	s0,8(sp)
    80001950:	01010413          	addi	s0,sp,16
    80001954:	00050693          	mv	a3,a0
    if(cachep == nullptr || objp == nullptr)
    80001958:	02050c63          	beqz	a0,80001990 <_Z8findSlabP12kmem_cache_sPKv+0x48>
    8000195c:	06058a63          	beqz	a1,800019d0 <_Z8findSlabP12kmem_cache_sPKv+0x88>
        return nullptr;
    slab_t* slab = cachep->slabs_full;
    80001960:	04853503          	ld	a0,72(a0)
    80001964:	0080006f          	j	8000196c <_Z8findSlabP12kmem_cache_sPKv+0x24>
    while(slab != nullptr)
    {
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
            return slab;
        slab = slab->next;
    80001968:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    8000196c:	02050863          	beqz	a0,8000199c <_Z8findSlabP12kmem_cache_sPKv+0x54>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    80001970:	01853783          	ld	a5,24(a0)
    80001974:	01053703          	ld	a4,16(a0)
    80001978:	06073703          	ld	a4,96(a4)
    8000197c:	02e787b3          	mul	a5,a5,a4
    80001980:	00a787b3          	add	a5,a5,a0
    80001984:	42878793          	addi	a5,a5,1064
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    80001988:	feb570e3          	bgeu	a0,a1,80001968 <_Z8findSlabP12kmem_cache_sPKv+0x20>
    8000198c:	fcf5fee3          	bgeu	a1,a5,80001968 <_Z8findSlabP12kmem_cache_sPKv+0x20>
            return slab;
        slab = slab->next;
    }

    return nullptr;
}
    80001990:	00813403          	ld	s0,8(sp)
    80001994:	01010113          	addi	sp,sp,16
    80001998:	00008067          	ret
    slab = cachep->slabs_partial;
    8000199c:	0506b503          	ld	a0,80(a3)
    800019a0:	0080006f          	j	800019a8 <_Z8findSlabP12kmem_cache_sPKv+0x60>
        slab = slab->next;
    800019a4:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    800019a8:	fe0504e3          	beqz	a0,80001990 <_Z8findSlabP12kmem_cache_sPKv+0x48>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    800019ac:	01853783          	ld	a5,24(a0)
    800019b0:	01053703          	ld	a4,16(a0)
    800019b4:	06073703          	ld	a4,96(a4)
    800019b8:	02e787b3          	mul	a5,a5,a4
    800019bc:	00a787b3          	add	a5,a5,a0
    800019c0:	42878793          	addi	a5,a5,1064
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    800019c4:	feb570e3          	bgeu	a0,a1,800019a4 <_Z8findSlabP12kmem_cache_sPKv+0x5c>
    800019c8:	fcf5fee3          	bgeu	a1,a5,800019a4 <_Z8findSlabP12kmem_cache_sPKv+0x5c>
    800019cc:	fc5ff06f          	j	80001990 <_Z8findSlabP12kmem_cache_sPKv+0x48>
        return nullptr;
    800019d0:	00058513          	mv	a0,a1
    800019d4:	fbdff06f          	j	80001990 <_Z8findSlabP12kmem_cache_sPKv+0x48>

00000000800019d8 <_Z19resetAllocatedIndexP6slab_si>:

void resetAllocatedIndex(slab_t* slab, int index)
{
    800019d8:	ff010113          	addi	sp,sp,-16
    800019dc:	00813423          	sd	s0,8(sp)
    800019e0:	01010413          	addi	s0,sp,16
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] & ~(1 << (index%8));
    800019e4:	41f5d79b          	sraiw	a5,a1,0x1f
    800019e8:	01d7d79b          	srliw	a5,a5,0x1d
    800019ec:	00b785bb          	addw	a1,a5,a1
    800019f0:	4035d71b          	sraiw	a4,a1,0x3
    800019f4:	00e50533          	add	a0,a0,a4
    800019f8:	02850703          	lb	a4,40(a0)
    800019fc:	0075f593          	andi	a1,a1,7
    80001a00:	40f585bb          	subw	a1,a1,a5
    80001a04:	00100793          	li	a5,1
    80001a08:	00b795bb          	sllw	a1,a5,a1
    80001a0c:	fff5c593          	not	a1,a1
    80001a10:	00b775b3          	and	a1,a4,a1
    80001a14:	02b50423          	sb	a1,40(a0)
}
    80001a18:	00813403          	ld	s0,8(sp)
    80001a1c:	01010113          	addi	sp,sp,16
    80001a20:	00008067          	ret

0000000080001a24 <_Z13printSlabInfoP6slab_s>:

void printSlabInfo(slab_t* slab)
{
    80001a24:	fe010113          	addi	sp,sp,-32
    80001a28:	00113c23          	sd	ra,24(sp)
    80001a2c:	00813823          	sd	s0,16(sp)
    80001a30:	00913423          	sd	s1,8(sp)
    80001a34:	02010413          	addi	s0,sp,32
    80001a38:	00050493          	mv	s1,a0
    KConsole::trapPrintString("One slab info---------\n");
    80001a3c:	00006517          	auipc	a0,0x6
    80001a40:	5f450513          	addi	a0,a0,1524 # 80008030 <CONSOLE_STATUS+0x20>
    80001a44:	00002097          	auipc	ra,0x2
    80001a48:	a48080e7          	jalr	-1464(ra) # 8000348c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab address ",(size_t)slab,16);
    80001a4c:	01000613          	li	a2,16
    80001a50:	00048593          	mv	a1,s1
    80001a54:	00006517          	auipc	a0,0x6
    80001a58:	5f450513          	addi	a0,a0,1524 # 80008048 <CONSOLE_STATUS+0x38>
    80001a5c:	00002097          	auipc	ra,0x2
    80001a60:	b08080e7          	jalr	-1272(ra) # 80003564 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of allocated objects ",slab->numOfAllocatedObjects);
    80001a64:	00a00613          	li	a2,10
    80001a68:	0204b583          	ld	a1,32(s1)
    80001a6c:	00006517          	auipc	a0,0x6
    80001a70:	5ec50513          	addi	a0,a0,1516 # 80008058 <CONSOLE_STATUS+0x48>
    80001a74:	00002097          	auipc	ra,0x2
    80001a78:	af0080e7          	jalr	-1296(ra) # 80003564 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of objects ", slab->numOfObjects);
    80001a7c:	00a00613          	li	a2,10
    80001a80:	0184b583          	ld	a1,24(s1)
    80001a84:	00006517          	auipc	a0,0x6
    80001a88:	5f450513          	addi	a0,a0,1524 # 80008078 <CONSOLE_STATUS+0x68>
    80001a8c:	00002097          	auipc	ra,0x2
    80001a90:	ad8080e7          	jalr	-1320(ra) # 80003564 <_ZN8KConsole18trapPrintStringIntEPKcmi>
        KConsole::trapPrintInt(i);
        KConsole::trapPrintString(" : ");
        KConsole::trapPrintInt((size_t)slab->allocated[i], 16);
        KConsole::trapPrintString("\n");
    }*/
}
    80001a94:	01813083          	ld	ra,24(sp)
    80001a98:	01013403          	ld	s0,16(sp)
    80001a9c:	00813483          	ld	s1,8(sp)
    80001aa0:	02010113          	addi	sp,sp,32
    80001aa4:	00008067          	ret

0000000080001aa8 <_Z16free_slab_objectP6slab_sPKv>:

void free_slab_object(slab_t* slab, const void* objp)
{
    if(slab == nullptr || objp == nullptr)
    80001aa8:	12050a63          	beqz	a0,80001bdc <_Z16free_slab_objectP6slab_sPKv+0x134>
{
    80001aac:	fd010113          	addi	sp,sp,-48
    80001ab0:	02113423          	sd	ra,40(sp)
    80001ab4:	02813023          	sd	s0,32(sp)
    80001ab8:	00913c23          	sd	s1,24(sp)
    80001abc:	01213823          	sd	s2,16(sp)
    80001ac0:	01313423          	sd	s3,8(sp)
    80001ac4:	01413023          	sd	s4,0(sp)
    80001ac8:	03010413          	addi	s0,sp,48
    80001acc:	00050493          	mv	s1,a0
    80001ad0:	00058993          	mv	s3,a1
    if(slab == nullptr || objp == nullptr)
    80001ad4:	08058463          	beqz	a1,80001b5c <_Z16free_slab_objectP6slab_sPKv+0xb4>
        return;
    int indexOfObject = ((size_t)objp - sizeof(slab_t) - (size_t)slab) / slab->owner->obj_size;
    80001ad8:	40a58933          	sub	s2,a1,a0
    80001adc:	bd890913          	addi	s2,s2,-1064
    80001ae0:	01053a03          	ld	s4,16(a0)
    80001ae4:	060a3783          	ld	a5,96(s4)
    80001ae8:	02f95933          	divu	s2,s2,a5
    80001aec:	0009091b          	sext.w	s2,s2
    if((size_t)objp != (size_t)slab + sizeof(slab_t) + indexOfObject*slab->owner->obj_size) //address not allocated, random address
    80001af0:	032787b3          	mul	a5,a5,s2
    80001af4:	00f507b3          	add	a5,a0,a5
    80001af8:	42878793          	addi	a5,a5,1064
    80001afc:	06f59063          	bne	a1,a5,80001b5c <_Z16free_slab_objectP6slab_sPKv+0xb4>
        return;

    if(!checkSetIndex(slab, indexOfObject))
    80001b00:	00090593          	mv	a1,s2
    80001b04:	00000097          	auipc	ra,0x0
    80001b08:	96c080e7          	jalr	-1684(ra) # 80001470 <_Z13checkSetIndexP6slab_si>
    80001b0c:	04050863          	beqz	a0,80001b5c <_Z16free_slab_objectP6slab_sPKv+0xb4>
        return;

    kmem_cache_t* cachep = slab->owner;
    if(cachep->dtor != nullptr)
    80001b10:	070a3783          	ld	a5,112(s4)
    80001b14:	00078663          	beqz	a5,80001b20 <_Z16free_slab_objectP6slab_sPKv+0x78>
        cachep->dtor((void*)objp);
    80001b18:	00098513          	mv	a0,s3
    80001b1c:	000780e7          	jalr	a5
    if(cachep->ctor != nullptr)
    80001b20:	068a3783          	ld	a5,104(s4)
    80001b24:	00078663          	beqz	a5,80001b30 <_Z16free_slab_objectP6slab_sPKv+0x88>
        cachep->ctor((void*)objp);
    80001b28:	00098513          	mv	a0,s3
    80001b2c:	000780e7          	jalr	a5

    resetAllocatedIndex(slab, indexOfObject);
    80001b30:	00090593          	mv	a1,s2
    80001b34:	00048513          	mv	a0,s1
    80001b38:	00000097          	auipc	ra,0x0
    80001b3c:	ea0080e7          	jalr	-352(ra) # 800019d8 <_Z19resetAllocatedIndexP6slab_si>
    if(slab->numOfObjects == slab->numOfAllocatedObjects)
    80001b40:	0184b703          	ld	a4,24(s1)
    80001b44:	0204b783          	ld	a5,32(s1)
    80001b48:	02f70a63          	beq	a4,a5,80001b7c <_Z16free_slab_objectP6slab_sPKv+0xd4>
        removeFullSlab(slab->owner, slab);
        slab->numOfAllocatedObjects--;
        if(empty(slab))
            removePartialSlab(slab->owner, slab);
    }
    else if(slab->numOfAllocatedObjects == 1)
    80001b4c:	00100713          	li	a4,1
    80001b50:	06e78663          	beq	a5,a4,80001bbc <_Z16free_slab_objectP6slab_sPKv+0x114>
    {
        removePartialSlab(slab->owner, slab);
        slab->numOfAllocatedObjects--;
    }
    else
        slab->numOfAllocatedObjects--;
    80001b54:	fff78793          	addi	a5,a5,-1
    80001b58:	02f4b023          	sd	a5,32(s1)
}
    80001b5c:	02813083          	ld	ra,40(sp)
    80001b60:	02013403          	ld	s0,32(sp)
    80001b64:	01813483          	ld	s1,24(sp)
    80001b68:	01013903          	ld	s2,16(sp)
    80001b6c:	00813983          	ld	s3,8(sp)
    80001b70:	00013a03          	ld	s4,0(sp)
    80001b74:	03010113          	addi	sp,sp,48
    80001b78:	00008067          	ret
        removeFullSlab(slab->owner, slab);
    80001b7c:	00048593          	mv	a1,s1
    80001b80:	0104b503          	ld	a0,16(s1)
    80001b84:	00000097          	auipc	ra,0x0
    80001b88:	bb4080e7          	jalr	-1100(ra) # 80001738 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>
        slab->numOfAllocatedObjects--;
    80001b8c:	0204b783          	ld	a5,32(s1)
    80001b90:	fff78793          	addi	a5,a5,-1
    80001b94:	02f4b023          	sd	a5,32(s1)
        if(empty(slab))
    80001b98:	00048513          	mv	a0,s1
    80001b9c:	00000097          	auipc	ra,0x0
    80001ba0:	a3c080e7          	jalr	-1476(ra) # 800015d8 <_Z5emptyP6slab_s>
    80001ba4:	fa050ce3          	beqz	a0,80001b5c <_Z16free_slab_objectP6slab_sPKv+0xb4>
            removePartialSlab(slab->owner, slab);
    80001ba8:	00048593          	mv	a1,s1
    80001bac:	0104b503          	ld	a0,16(s1)
    80001bb0:	00000097          	auipc	ra,0x0
    80001bb4:	be0080e7          	jalr	-1056(ra) # 80001790 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
    80001bb8:	fa5ff06f          	j	80001b5c <_Z16free_slab_objectP6slab_sPKv+0xb4>
        removePartialSlab(slab->owner, slab);
    80001bbc:	00048593          	mv	a1,s1
    80001bc0:	0104b503          	ld	a0,16(s1)
    80001bc4:	00000097          	auipc	ra,0x0
    80001bc8:	bcc080e7          	jalr	-1076(ra) # 80001790 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
        slab->numOfAllocatedObjects--;
    80001bcc:	0204b783          	ld	a5,32(s1)
    80001bd0:	fff78793          	addi	a5,a5,-1
    80001bd4:	02f4b023          	sd	a5,32(s1)
    80001bd8:	f85ff06f          	j	80001b5c <_Z16free_slab_objectP6slab_sPKv+0xb4>
    80001bdc:	00008067          	ret

0000000080001be0 <_Z9kmem_initPvi>:
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n\n");
}

//slab allocator public interface-----------------------------------------------------------------------------
void kmem_init(void *space, int block_num)
{
    80001be0:	ff010113          	addi	sp,sp,-16
    80001be4:	00113423          	sd	ra,8(sp)
    80001be8:	00813023          	sd	s0,0(sp)
    80001bec:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init(space, block_num);
    80001bf0:	00001097          	auipc	ra,0x1
    80001bf4:	174080e7          	jalr	372(ra) # 80002d64 <_Z10buddy_initPvm>
    slabAllocator = slab_allocator_init(buddy);
    80001bf8:	00000097          	auipc	ra,0x0
    80001bfc:	800080e7          	jalr	-2048(ra) # 800013f8 <_Z19slab_allocator_initP14buddyAllocator>
    80001c00:	00007797          	auipc	a5,0x7
    80001c04:	e0a7b823          	sd	a0,-496(a5) # 80008a10 <_ZL13slabAllocator>
}
    80001c08:	00813083          	ld	ra,8(sp)
    80001c0c:	00013403          	ld	s0,0(sp)
    80001c10:	01010113          	addi	sp,sp,16
    80001c14:	00008067          	ret

0000000080001c18 <_Z16kmem_cache_allocP12kmem_cache_s>:
    init_cache(newCache, name, getOptimalSlabSize(size), size, ctor,dtor);
    return newCache;
}

void *kmem_cache_alloc(kmem_cache_t *cachep)
{
    80001c18:	fe010113          	addi	sp,sp,-32
    80001c1c:	00113c23          	sd	ra,24(sp)
    80001c20:	00813823          	sd	s0,16(sp)
    80001c24:	00913423          	sd	s1,8(sp)
    80001c28:	01213023          	sd	s2,0(sp)
    80001c2c:	02010413          	addi	s0,sp,32
    80001c30:	00050493          	mv	s1,a0
    if(cachep == nullptr)
    80001c34:	10050a63          	beqz	a0,80001d48 <_Z16kmem_cache_allocP12kmem_cache_s+0x130>
        return nullptr;

    if(cachep->slabs_partial != nullptr)
    80001c38:	05053503          	ld	a0,80(a0)
    80001c3c:	04051a63          	bnez	a0,80001c90 <_Z16kmem_cache_allocP12kmem_cache_s+0x78>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
        if(full(cachep->slabs_partial))
            putPartialToFull(cachep);
        return allocatedAddr;
    }
    else if(cachep->slabs_empty != nullptr)
    80001c40:	0404b503          	ld	a0,64(s1)
    80001c44:	08050a63          	beqz	a0,80001cd8 <_Z16kmem_cache_allocP12kmem_cache_s+0xc0>
    {
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001c48:	00000097          	auipc	ra,0x0
    80001c4c:	8b0080e7          	jalr	-1872(ra) # 800014f8 <_Z14allocateObjectP6slab_s>
    80001c50:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001c54:	0404b503          	ld	a0,64(s1)
    80001c58:	00000097          	auipc	ra,0x0
    80001c5c:	980080e7          	jalr	-1664(ra) # 800015d8 <_Z5emptyP6slab_s>
    80001c60:	04051663          	bnez	a0,80001cac <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        {
            putEmptyToPartial(cachep);
    80001c64:	00048513          	mv	a0,s1
    80001c68:	00000097          	auipc	ra,0x0
    80001c6c:	a78080e7          	jalr	-1416(ra) # 800016e0 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001c70:	0504b503          	ld	a0,80(s1)
    80001c74:	00000097          	auipc	ra,0x0
    80001c78:	93c080e7          	jalr	-1732(ra) # 800015b0 <_Z4fullP6slab_s>
    80001c7c:	02050863          	beqz	a0,80001cac <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
                putPartialToFull(cachep);
    80001c80:	00048513          	mv	a0,s1
    80001c84:	00000097          	auipc	ra,0x0
    80001c88:	a04080e7          	jalr	-1532(ra) # 80001688 <_Z16putPartialToFullP12kmem_cache_s>
        }
        return allocatedAddr;
    80001c8c:	0200006f          	j	80001cac <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
    80001c90:	00000097          	auipc	ra,0x0
    80001c94:	868080e7          	jalr	-1944(ra) # 800014f8 <_Z14allocateObjectP6slab_s>
    80001c98:	00050913          	mv	s2,a0
        if(full(cachep->slabs_partial))
    80001c9c:	0504b503          	ld	a0,80(s1)
    80001ca0:	00000097          	auipc	ra,0x0
    80001ca4:	910080e7          	jalr	-1776(ra) # 800015b0 <_Z4fullP6slab_s>
    80001ca8:	02051063          	bnez	a0,80001cc8 <_Z16kmem_cache_allocP12kmem_cache_s+0xb0>
                putPartialToFull(cachep);
        }
        return allocatedAddr;
    }
    return nullptr;
}
    80001cac:	00090513          	mv	a0,s2
    80001cb0:	01813083          	ld	ra,24(sp)
    80001cb4:	01013403          	ld	s0,16(sp)
    80001cb8:	00813483          	ld	s1,8(sp)
    80001cbc:	00013903          	ld	s2,0(sp)
    80001cc0:	02010113          	addi	sp,sp,32
    80001cc4:	00008067          	ret
            putPartialToFull(cachep);
    80001cc8:	00048513          	mv	a0,s1
    80001ccc:	00000097          	auipc	ra,0x0
    80001cd0:	9bc080e7          	jalr	-1604(ra) # 80001688 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001cd4:	fd9ff06f          	j	80001cac <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        allocateSlab(cachep);
    80001cd8:	00048513          	mv	a0,s1
    80001cdc:	00000097          	auipc	ra,0x0
    80001ce0:	b0c080e7          	jalr	-1268(ra) # 800017e8 <_Z12allocateSlabP12kmem_cache_s>
        if(cachep->slabs_empty == nullptr)
    80001ce4:	0404b903          	ld	s2,64(s1)
    80001ce8:	04090863          	beqz	s2,80001d38 <_Z16kmem_cache_allocP12kmem_cache_s+0x120>
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001cec:	00090513          	mv	a0,s2
    80001cf0:	00000097          	auipc	ra,0x0
    80001cf4:	808080e7          	jalr	-2040(ra) # 800014f8 <_Z14allocateObjectP6slab_s>
    80001cf8:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001cfc:	0404b503          	ld	a0,64(s1)
    80001d00:	00000097          	auipc	ra,0x0
    80001d04:	8d8080e7          	jalr	-1832(ra) # 800015d8 <_Z5emptyP6slab_s>
    80001d08:	fa0512e3          	bnez	a0,80001cac <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
            putEmptyToPartial(cachep);
    80001d0c:	00048513          	mv	a0,s1
    80001d10:	00000097          	auipc	ra,0x0
    80001d14:	9d0080e7          	jalr	-1584(ra) # 800016e0 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001d18:	0504b503          	ld	a0,80(s1)
    80001d1c:	00000097          	auipc	ra,0x0
    80001d20:	894080e7          	jalr	-1900(ra) # 800015b0 <_Z4fullP6slab_s>
    80001d24:	f80504e3          	beqz	a0,80001cac <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
                putPartialToFull(cachep);
    80001d28:	00048513          	mv	a0,s1
    80001d2c:	00000097          	auipc	ra,0x0
    80001d30:	95c080e7          	jalr	-1700(ra) # 80001688 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001d34:	f79ff06f          	j	80001cac <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
            cachep->errors|=EXPAND_ERROR;
    80001d38:	0784a783          	lw	a5,120(s1)
    80001d3c:	0017e793          	ori	a5,a5,1
    80001d40:	06f4ac23          	sw	a5,120(s1)
            return nullptr;
    80001d44:	f69ff06f          	j	80001cac <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        return nullptr;
    80001d48:	00050913          	mv	s2,a0
    80001d4c:	f61ff06f          	j	80001cac <_Z16kmem_cache_allocP12kmem_cache_s+0x94>

0000000080001d50 <_Z17kmem_cache_createPKcmPFvPvES3_>:
{
    80001d50:	fc010113          	addi	sp,sp,-64
    80001d54:	02113c23          	sd	ra,56(sp)
    80001d58:	02813823          	sd	s0,48(sp)
    80001d5c:	02913423          	sd	s1,40(sp)
    80001d60:	03213023          	sd	s2,32(sp)
    80001d64:	01313c23          	sd	s3,24(sp)
    80001d68:	01413823          	sd	s4,16(sp)
    80001d6c:	01513423          	sd	s5,8(sp)
    80001d70:	04010413          	addi	s0,sp,64
    80001d74:	00050993          	mv	s3,a0
    80001d78:	00058913          	mv	s2,a1
    80001d7c:	00060a13          	mv	s4,a2
    80001d80:	00068a93          	mv	s5,a3
    kmem_cache_t* newCache = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80001d84:	00007517          	auipc	a0,0x7
    80001d88:	c8c53503          	ld	a0,-884(a0) # 80008a10 <_ZL13slabAllocator>
    80001d8c:	07050513          	addi	a0,a0,112
    80001d90:	00000097          	auipc	ra,0x0
    80001d94:	e88080e7          	jalr	-376(ra) # 80001c18 <_Z16kmem_cache_allocP12kmem_cache_s>
    80001d98:	00050493          	mv	s1,a0
    if(newCache == nullptr)
    80001d9c:	02050863          	beqz	a0,80001dcc <_Z17kmem_cache_createPKcmPFvPvES3_+0x7c>
    init_cache(newCache, name, getOptimalSlabSize(size), size, ctor,dtor);
    80001da0:	00090513          	mv	a0,s2
    80001da4:	00000097          	auipc	ra,0x0
    80001da8:	b30080e7          	jalr	-1232(ra) # 800018d4 <_Z18getOptimalSlabSizem>
    80001dac:	00050613          	mv	a2,a0
    80001db0:	000a8793          	mv	a5,s5
    80001db4:	000a0713          	mv	a4,s4
    80001db8:	00090693          	mv	a3,s2
    80001dbc:	00098593          	mv	a1,s3
    80001dc0:	00048513          	mv	a0,s1
    80001dc4:	fffff097          	auipc	ra,0xfffff
    80001dc8:	5a8080e7          	jalr	1448(ra) # 8000136c <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>
}
    80001dcc:	00048513          	mv	a0,s1
    80001dd0:	03813083          	ld	ra,56(sp)
    80001dd4:	03013403          	ld	s0,48(sp)
    80001dd8:	02813483          	ld	s1,40(sp)
    80001ddc:	02013903          	ld	s2,32(sp)
    80001de0:	01813983          	ld	s3,24(sp)
    80001de4:	01013a03          	ld	s4,16(sp)
    80001de8:	00813a83          	ld	s5,8(sp)
    80001dec:	04010113          	addi	sp,sp,64
    80001df0:	00008067          	ret

0000000080001df4 <_Z15kmem_cache_freeP12kmem_cache_sPv>:

void kmem_cache_free(kmem_cache_t *cachep, void *objp)
{
    if(cachep == nullptr || objp == nullptr)
    80001df4:	04050663          	beqz	a0,80001e40 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x4c>
{
    80001df8:	fe010113          	addi	sp,sp,-32
    80001dfc:	00113c23          	sd	ra,24(sp)
    80001e00:	00813823          	sd	s0,16(sp)
    80001e04:	00913423          	sd	s1,8(sp)
    80001e08:	02010413          	addi	s0,sp,32
    80001e0c:	00058493          	mv	s1,a1
    if(cachep == nullptr || objp == nullptr)
    80001e10:	00058e63          	beqz	a1,80001e2c <_Z15kmem_cache_freeP12kmem_cache_sPv+0x38>
        return;
    slab_t* slab = findSlab(cachep, objp);
    80001e14:	00000097          	auipc	ra,0x0
    80001e18:	b34080e7          	jalr	-1228(ra) # 80001948 <_Z8findSlabP12kmem_cache_sPKv>
    if(slab == nullptr) return;
    80001e1c:	00050863          	beqz	a0,80001e2c <_Z15kmem_cache_freeP12kmem_cache_sPv+0x38>

    free_slab_object(slab, objp);
    80001e20:	00048593          	mv	a1,s1
    80001e24:	00000097          	auipc	ra,0x0
    80001e28:	c84080e7          	jalr	-892(ra) # 80001aa8 <_Z16free_slab_objectP6slab_sPKv>
}
    80001e2c:	01813083          	ld	ra,24(sp)
    80001e30:	01013403          	ld	s0,16(sp)
    80001e34:	00813483          	ld	s1,8(sp)
    80001e38:	02010113          	addi	sp,sp,32
    80001e3c:	00008067          	ret
    80001e40:	00008067          	ret

0000000080001e44 <_Z15kmem_cache_infoP12kmem_cache_s>:

//TODO what needs to be printed
void kmem_cache_info(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    80001e44:	14050c63          	beqz	a0,80001f9c <_Z15kmem_cache_infoP12kmem_cache_s+0x158>
{
    80001e48:	fe010113          	addi	sp,sp,-32
    80001e4c:	00113c23          	sd	ra,24(sp)
    80001e50:	00813823          	sd	s0,16(sp)
    80001e54:	00913423          	sd	s1,8(sp)
    80001e58:	01213023          	sd	s2,0(sp)
    80001e5c:	02010413          	addi	s0,sp,32
    80001e60:	00050913          	mv	s2,a0
        return;
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n");
    80001e64:	00006517          	auipc	a0,0x6
    80001e68:	22c50513          	addi	a0,a0,556 # 80008090 <CONSOLE_STATUS+0x80>
    80001e6c:	00001097          	auipc	ra,0x1
    80001e70:	620080e7          	jalr	1568(ra) # 8000348c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Kmem Cache Info-------------------------------------\n");
    80001e74:	00006517          	auipc	a0,0x6
    80001e78:	22c50513          	addi	a0,a0,556 # 800080a0 <CONSOLE_STATUS+0x90>
    80001e7c:	00001097          	auipc	ra,0x1
    80001e80:	610080e7          	jalr	1552(ra) # 8000348c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache Name ");
    80001e84:	00006517          	auipc	a0,0x6
    80001e88:	25450513          	addi	a0,a0,596 # 800080d8 <CONSOLE_STATUS+0xc8>
    80001e8c:	00001097          	auipc	ra,0x1
    80001e90:	600080e7          	jalr	1536(ra) # 8000348c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString(cachep->cacheName); KConsole::trapPrintString("\n");
    80001e94:	00090513          	mv	a0,s2
    80001e98:	00001097          	auipc	ra,0x1
    80001e9c:	5f4080e7          	jalr	1524(ra) # 8000348c <_ZN8KConsole15trapPrintStringEPKc>
    80001ea0:	00006517          	auipc	a0,0x6
    80001ea4:	2e050513          	addi	a0,a0,736 # 80008180 <CONSOLE_STATUS+0x170>
    80001ea8:	00001097          	auipc	ra,0x1
    80001eac:	5e4080e7          	jalr	1508(ra) # 8000348c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Cache slab size in blocks ", cachep->slab_size);
    80001eb0:	00a00613          	li	a2,10
    80001eb4:	05893583          	ld	a1,88(s2)
    80001eb8:	00006517          	auipc	a0,0x6
    80001ebc:	23050513          	addi	a0,a0,560 # 800080e8 <CONSOLE_STATUS+0xd8>
    80001ec0:	00001097          	auipc	ra,0x1
    80001ec4:	6a4080e7          	jalr	1700(ra) # 80003564 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Cache obj size in bytes ", cachep->obj_size);
    80001ec8:	00a00613          	li	a2,10
    80001ecc:	06093583          	ld	a1,96(s2)
    80001ed0:	00006517          	auipc	a0,0x6
    80001ed4:	23850513          	addi	a0,a0,568 # 80008108 <CONSOLE_STATUS+0xf8>
    80001ed8:	00001097          	auipc	ra,0x1
    80001edc:	68c080e7          	jalr	1676(ra) # 80003564 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    
    KConsole::trapPrintString("Slabs info-------------------\n");
    80001ee0:	00006517          	auipc	a0,0x6
    80001ee4:	24850513          	addi	a0,a0,584 # 80008128 <CONSOLE_STATUS+0x118>
    80001ee8:	00001097          	auipc	ra,0x1
    80001eec:	5a4080e7          	jalr	1444(ra) # 8000348c <_ZN8KConsole15trapPrintStringEPKc>

    KConsole::trapPrintString("Full slabs\n");
    80001ef0:	00006517          	auipc	a0,0x6
    80001ef4:	25850513          	addi	a0,a0,600 # 80008148 <CONSOLE_STATUS+0x138>
    80001ef8:	00001097          	auipc	ra,0x1
    80001efc:	594080e7          	jalr	1428(ra) # 8000348c <_ZN8KConsole15trapPrintStringEPKc>
    slab_t* slab = cachep->slabs_full;
    80001f00:	04893483          	ld	s1,72(s2)
    while(slab != nullptr)
    80001f04:	00048c63          	beqz	s1,80001f1c <_Z15kmem_cache_infoP12kmem_cache_s+0xd8>
    {
        printSlabInfo(slab);
    80001f08:	00048513          	mv	a0,s1
    80001f0c:	00000097          	auipc	ra,0x0
    80001f10:	b18080e7          	jalr	-1256(ra) # 80001a24 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001f14:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001f18:	fedff06f          	j	80001f04 <_Z15kmem_cache_infoP12kmem_cache_s+0xc0>
    }

    KConsole::trapPrintString("Partial slabs\n");
    80001f1c:	00006517          	auipc	a0,0x6
    80001f20:	23c50513          	addi	a0,a0,572 # 80008158 <CONSOLE_STATUS+0x148>
    80001f24:	00001097          	auipc	ra,0x1
    80001f28:	568080e7          	jalr	1384(ra) # 8000348c <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_partial;
    80001f2c:	05093483          	ld	s1,80(s2)
    while(slab != nullptr)
    80001f30:	00048c63          	beqz	s1,80001f48 <_Z15kmem_cache_infoP12kmem_cache_s+0x104>
    {
        printSlabInfo(slab);
    80001f34:	00048513          	mv	a0,s1
    80001f38:	00000097          	auipc	ra,0x0
    80001f3c:	aec080e7          	jalr	-1300(ra) # 80001a24 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001f40:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001f44:	fedff06f          	j	80001f30 <_Z15kmem_cache_infoP12kmem_cache_s+0xec>
    }

    KConsole::trapPrintString("Empty slabs\n");
    80001f48:	00006517          	auipc	a0,0x6
    80001f4c:	22050513          	addi	a0,a0,544 # 80008168 <CONSOLE_STATUS+0x158>
    80001f50:	00001097          	auipc	ra,0x1
    80001f54:	53c080e7          	jalr	1340(ra) # 8000348c <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_empty;
    80001f58:	04093483          	ld	s1,64(s2)
    while(slab != nullptr)
    80001f5c:	00048c63          	beqz	s1,80001f74 <_Z15kmem_cache_infoP12kmem_cache_s+0x130>
    {
        printSlabInfo(slab);
    80001f60:	00048513          	mv	a0,s1
    80001f64:	00000097          	auipc	ra,0x0
    80001f68:	ac0080e7          	jalr	-1344(ra) # 80001a24 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001f6c:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001f70:	fedff06f          	j	80001f5c <_Z15kmem_cache_infoP12kmem_cache_s+0x118>
    }

    KConsole::trapPrintString("\n\n\n\n\n\n\n\n");
    80001f74:	00006517          	auipc	a0,0x6
    80001f78:	11c50513          	addi	a0,a0,284 # 80008090 <CONSOLE_STATUS+0x80>
    80001f7c:	00001097          	auipc	ra,0x1
    80001f80:	510080e7          	jalr	1296(ra) # 8000348c <_ZN8KConsole15trapPrintStringEPKc>
}
    80001f84:	01813083          	ld	ra,24(sp)
    80001f88:	01013403          	ld	s0,16(sp)
    80001f8c:	00813483          	ld	s1,8(sp)
    80001f90:	00013903          	ld	s2,0(sp)
    80001f94:	02010113          	addi	sp,sp,32
    80001f98:	00008067          	ret
    80001f9c:	00008067          	ret

0000000080001fa0 <_Z22printSlabAllocatorInfov>:
{
    80001fa0:	fe010113          	addi	sp,sp,-32
    80001fa4:	00113c23          	sd	ra,24(sp)
    80001fa8:	00813823          	sd	s0,16(sp)
    80001fac:	00913423          	sd	s1,8(sp)
    80001fb0:	02010413          	addi	s0,sp,32
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n\n");
    80001fb4:	00006517          	auipc	a0,0x6
    80001fb8:	1c450513          	addi	a0,a0,452 # 80008178 <CONSOLE_STATUS+0x168>
    80001fbc:	00001097          	auipc	ra,0x1
    80001fc0:	4d0080e7          	jalr	1232(ra) # 8000348c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Slab allocator info----------------------------------------------------------\n");
    80001fc4:	00006517          	auipc	a0,0x6
    80001fc8:	1c450513          	addi	a0,a0,452 # 80008188 <CONSOLE_STATUS+0x178>
    80001fcc:	00001097          	auipc	ra,0x1
    80001fd0:	4c0080e7          	jalr	1216(ra) # 8000348c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab allocator buddy address ", (size_t)slabAllocator->buddy,16);
    80001fd4:	00007497          	auipc	s1,0x7
    80001fd8:	a3c48493          	addi	s1,s1,-1476 # 80008a10 <_ZL13slabAllocator>
    80001fdc:	0004b783          	ld	a5,0(s1)
    80001fe0:	01000613          	li	a2,16
    80001fe4:	0007b583          	ld	a1,0(a5)
    80001fe8:	00006517          	auipc	a0,0x6
    80001fec:	1f050513          	addi	a0,a0,496 # 800081d8 <CONSOLE_STATUS+0x1c8>
    80001ff0:	00001097          	auipc	ra,0x1
    80001ff4:	574080e7          	jalr	1396(ra) # 80003564 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Slab allocator address ", (size_t)slabAllocator, 16);
    80001ff8:	01000613          	li	a2,16
    80001ffc:	0004b583          	ld	a1,0(s1)
    80002000:	00006517          	auipc	a0,0x6
    80002004:	1f850513          	addi	a0,a0,504 # 800081f8 <CONSOLE_STATUS+0x1e8>
    80002008:	00001097          	auipc	ra,0x1
    8000200c:	55c080e7          	jalr	1372(ra) # 80003564 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintString("Cache of caches info\n");
    80002010:	00006517          	auipc	a0,0x6
    80002014:	20050513          	addi	a0,a0,512 # 80008210 <CONSOLE_STATUS+0x200>
    80002018:	00001097          	auipc	ra,0x1
    8000201c:	474080e7          	jalr	1140(ra) # 8000348c <_ZN8KConsole15trapPrintStringEPKc>
    kmem_cache_info(&slabAllocator->cacheOfCaches);
    80002020:	0004b503          	ld	a0,0(s1)
    80002024:	07050513          	addi	a0,a0,112
    80002028:	00000097          	auipc	ra,0x0
    8000202c:	e1c080e7          	jalr	-484(ra) # 80001e44 <_Z15kmem_cache_infoP12kmem_cache_s>
    KConsole::trapPrintString("Caches for buffers\n");
    80002030:	00006517          	auipc	a0,0x6
    80002034:	1f850513          	addi	a0,a0,504 # 80008228 <CONSOLE_STATUS+0x218>
    80002038:	00001097          	auipc	ra,0x1
    8000203c:	454080e7          	jalr	1108(ra) # 8000348c <_ZN8KConsole15trapPrintStringEPKc>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80002040:	00000493          	li	s1,0
    80002044:	0100006f          	j	80002054 <_Z22printSlabAllocatorInfov+0xb4>
            kmem_cache_info(slabAllocator->cachesBuffers[i]);
    80002048:	00000097          	auipc	ra,0x0
    8000204c:	dfc080e7          	jalr	-516(ra) # 80001e44 <_Z15kmem_cache_infoP12kmem_cache_s>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80002050:	00148493          	addi	s1,s1,1
    80002054:	00c00793          	li	a5,12
    80002058:	0297e063          	bltu	a5,s1,80002078 <_Z22printSlabAllocatorInfov+0xd8>
        if(slabAllocator->cachesBuffers[i] != nullptr)
    8000205c:	00349793          	slli	a5,s1,0x3
    80002060:	00007717          	auipc	a4,0x7
    80002064:	9b073703          	ld	a4,-1616(a4) # 80008a10 <_ZL13slabAllocator>
    80002068:	00f707b3          	add	a5,a4,a5
    8000206c:	0087b503          	ld	a0,8(a5)
    80002070:	fc051ce3          	bnez	a0,80002048 <_Z22printSlabAllocatorInfov+0xa8>
    80002074:	fddff06f          	j	80002050 <_Z22printSlabAllocatorInfov+0xb0>
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n\n");
    80002078:	00006517          	auipc	a0,0x6
    8000207c:	10050513          	addi	a0,a0,256 # 80008178 <CONSOLE_STATUS+0x168>
    80002080:	00001097          	auipc	ra,0x1
    80002084:	40c080e7          	jalr	1036(ra) # 8000348c <_ZN8KConsole15trapPrintStringEPKc>
}
    80002088:	01813083          	ld	ra,24(sp)
    8000208c:	01013403          	ld	s0,16(sp)
    80002090:	00813483          	ld	s1,8(sp)
    80002094:	02010113          	addi	sp,sp,32
    80002098:	00008067          	ret

000000008000209c <_Z7kmallocm>:

void *kmalloc(size_t size)
{
    8000209c:	fd010113          	addi	sp,sp,-48
    800020a0:	02113423          	sd	ra,40(sp)
    800020a4:	02813023          	sd	s0,32(sp)
    800020a8:	00913c23          	sd	s1,24(sp)
    800020ac:	01213823          	sd	s2,16(sp)
    800020b0:	01313423          	sd	s3,8(sp)
    800020b4:	03010413          	addi	s0,sp,48
    size_t level = getDeg2Ceil(size);
    800020b8:	00001097          	auipc	ra,0x1
    800020bc:	920080e7          	jalr	-1760(ra) # 800029d8 <_Z11getDeg2Ceilm>
    if(level < CACHE_BUFFER_SMALL)
    800020c0:	00400793          	li	a5,4
    800020c4:	00a7fa63          	bgeu	a5,a0,800020d8 <_Z7kmallocm+0x3c>
        level = CACHE_BUFFER_SMALL;
    if(level > CACHE_BUFFER_BIG)
    800020c8:	01100793          	li	a5,17
    800020cc:	00a7f863          	bgeu	a5,a0,800020dc <_Z7kmallocm+0x40>
        return nullptr;
    800020d0:	00000913          	li	s2,0
    800020d4:	04c0006f          	j	80002120 <_Z7kmallocm+0x84>
        level = CACHE_BUFFER_SMALL;
    800020d8:	00500513          	li	a0,5
    size = (1 << level);
    800020dc:	00100693          	li	a3,1
    800020e0:	00a699bb          	sllw	s3,a3,a0
    size_t index = level - CACHE_BUFFER_SMALL;
    800020e4:	ffb50493          	addi	s1,a0,-5
    if(slabAllocator->cachesBuffers[index] == nullptr)
    800020e8:	00007917          	auipc	s2,0x7
    800020ec:	92893903          	ld	s2,-1752(s2) # 80008a10 <_ZL13slabAllocator>
    800020f0:	00349793          	slli	a5,s1,0x3
    800020f4:	00f907b3          	add	a5,s2,a5
    800020f8:	0087b783          	ld	a5,8(a5)
    800020fc:	04078263          	beqz	a5,80002140 <_Z7kmallocm+0xa4>
        if(slabAllocator->cachesBuffers[index] == nullptr)
            return nullptr;
        init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", getOptimalSlabSize(size), size, nullptr,nullptr);
    }

    return kmem_cache_alloc(slabAllocator->cachesBuffers[index]);
    80002100:	00349513          	slli	a0,s1,0x3
    80002104:	00007497          	auipc	s1,0x7
    80002108:	90c4b483          	ld	s1,-1780(s1) # 80008a10 <_ZL13slabAllocator>
    8000210c:	00a48533          	add	a0,s1,a0
    80002110:	00853503          	ld	a0,8(a0)
    80002114:	00000097          	auipc	ra,0x0
    80002118:	b04080e7          	jalr	-1276(ra) # 80001c18 <_Z16kmem_cache_allocP12kmem_cache_s>
    8000211c:	00050913          	mv	s2,a0
}
    80002120:	00090513          	mv	a0,s2
    80002124:	02813083          	ld	ra,40(sp)
    80002128:	02013403          	ld	s0,32(sp)
    8000212c:	01813483          	ld	s1,24(sp)
    80002130:	01013903          	ld	s2,16(sp)
    80002134:	00813983          	ld	s3,8(sp)
    80002138:	03010113          	addi	sp,sp,48
    8000213c:	00008067          	ret
        slabAllocator->cachesBuffers[index] = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80002140:	07090513          	addi	a0,s2,112
    80002144:	00000097          	auipc	ra,0x0
    80002148:	ad4080e7          	jalr	-1324(ra) # 80001c18 <_Z16kmem_cache_allocP12kmem_cache_s>
    8000214c:	00349713          	slli	a4,s1,0x3
    80002150:	00e90933          	add	s2,s2,a4
    80002154:	00a93423          	sd	a0,8(s2)
        if(slabAllocator->cachesBuffers[index] == nullptr)
    80002158:	00007797          	auipc	a5,0x7
    8000215c:	8b87b783          	ld	a5,-1864(a5) # 80008a10 <_ZL13slabAllocator>
    80002160:	00e787b3          	add	a5,a5,a4
    80002164:	0087b903          	ld	s2,8(a5)
    80002168:	fa090ce3          	beqz	s2,80002120 <_Z7kmallocm+0x84>
        init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", getOptimalSlabSize(size), size, nullptr,nullptr);
    8000216c:	00098513          	mv	a0,s3
    80002170:	fffff097          	auipc	ra,0xfffff
    80002174:	764080e7          	jalr	1892(ra) # 800018d4 <_Z18getOptimalSlabSizem>
    80002178:	00050613          	mv	a2,a0
    8000217c:	00000793          	li	a5,0
    80002180:	00000713          	li	a4,0
    80002184:	00098693          	mv	a3,s3
    80002188:	00006597          	auipc	a1,0x6
    8000218c:	0b858593          	addi	a1,a1,184 # 80008240 <CONSOLE_STATUS+0x230>
    80002190:	00090513          	mv	a0,s2
    80002194:	fffff097          	auipc	ra,0xfffff
    80002198:	1d8080e7          	jalr	472(ra) # 8000136c <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>
    8000219c:	f65ff06f          	j	80002100 <_Z7kmallocm+0x64>

00000000800021a0 <_Z5kfreePKv>:

void kfree(const void *objp)
{
    if(objp == nullptr)
    800021a0:	08050263          	beqz	a0,80002224 <_Z5kfreePKv+0x84>
{
    800021a4:	fe010113          	addi	sp,sp,-32
    800021a8:	00113c23          	sd	ra,24(sp)
    800021ac:	00813823          	sd	s0,16(sp)
    800021b0:	00913423          	sd	s1,8(sp)
    800021b4:	01213023          	sd	s2,0(sp)
    800021b8:	02010413          	addi	s0,sp,32
    800021bc:	00050913          	mv	s2,a0
        return;
    slab_t* slab = nullptr;
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    800021c0:	00000493          	li	s1,0
    slab_t* slab = nullptr;
    800021c4:	00000513          	li	a0,0
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    800021c8:	00c00793          	li	a5,12
    800021cc:	0297e863          	bltu	a5,s1,800021fc <_Z5kfreePKv+0x5c>
    {
        slab = findSlab(slabAllocator->cachesBuffers[i], objp);
    800021d0:	00349793          	slli	a5,s1,0x3
    800021d4:	00007717          	auipc	a4,0x7
    800021d8:	83c73703          	ld	a4,-1988(a4) # 80008a10 <_ZL13slabAllocator>
    800021dc:	00f707b3          	add	a5,a4,a5
    800021e0:	00090593          	mv	a1,s2
    800021e4:	0087b503          	ld	a0,8(a5)
    800021e8:	fffff097          	auipc	ra,0xfffff
    800021ec:	760080e7          	jalr	1888(ra) # 80001948 <_Z8findSlabP12kmem_cache_sPKv>
        if(slab != nullptr) break;
    800021f0:	00051663          	bnez	a0,800021fc <_Z5kfreePKv+0x5c>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    800021f4:	00148493          	addi	s1,s1,1
    800021f8:	fd1ff06f          	j	800021c8 <_Z5kfreePKv+0x28>
    }
    if(slab != nullptr)
    800021fc:	00050863          	beqz	a0,8000220c <_Z5kfreePKv+0x6c>
    {
        free_slab_object(slab, objp);
    80002200:	00090593          	mv	a1,s2
    80002204:	00000097          	auipc	ra,0x0
    80002208:	8a4080e7          	jalr	-1884(ra) # 80001aa8 <_Z16free_slab_objectP6slab_sPKv>
    }
}
    8000220c:	01813083          	ld	ra,24(sp)
    80002210:	01013403          	ld	s0,16(sp)
    80002214:	00813483          	ld	s1,8(sp)
    80002218:	00013903          	ld	s2,0(sp)
    8000221c:	02010113          	addi	sp,sp,32
    80002220:	00008067          	ret
    80002224:	00008067          	ret

0000000080002228 <_Z18kmem_cache_destroyP12kmem_cache_s>:

void kmem_cache_destroy(kmem_cache_t *cachep)
{
    80002228:	fe010113          	addi	sp,sp,-32
    8000222c:	00113c23          	sd	ra,24(sp)
    80002230:	00813823          	sd	s0,16(sp)
    80002234:	00913423          	sd	s1,8(sp)
    80002238:	02010413          	addi	s0,sp,32
    8000223c:	00050493          	mv	s1,a0
    //if(cachep->slabs_partial != nullptr || cachep->slabs_full != nullptr)
    //{
    //    cachep->errors|=DESTROY_ERROR;
    //    return;
    //}
    destroy_slab_list(&cachep->slabs_empty);
    80002240:	04050513          	addi	a0,a0,64
    80002244:	fffff097          	auipc	ra,0xfffff
    80002248:	098080e7          	jalr	152(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    destroy_slab_list(&cachep->slabs_partial);
    8000224c:	05048513          	addi	a0,s1,80
    80002250:	fffff097          	auipc	ra,0xfffff
    80002254:	08c080e7          	jalr	140(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    destroy_slab_list(&cachep->slabs_full);
    80002258:	04848513          	addi	a0,s1,72
    8000225c:	fffff097          	auipc	ra,0xfffff
    80002260:	080080e7          	jalr	128(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    kmem_cache_free(&slabAllocator->cacheOfCaches,cachep);
    80002264:	00048593          	mv	a1,s1
    80002268:	00006517          	auipc	a0,0x6
    8000226c:	7a853503          	ld	a0,1960(a0) # 80008a10 <_ZL13slabAllocator>
    80002270:	07050513          	addi	a0,a0,112
    80002274:	00000097          	auipc	ra,0x0
    80002278:	b80080e7          	jalr	-1152(ra) # 80001df4 <_Z15kmem_cache_freeP12kmem_cache_sPv>
}
    8000227c:	01813083          	ld	ra,24(sp)
    80002280:	01013403          	ld	s0,16(sp)
    80002284:	00813483          	ld	s1,8(sp)
    80002288:	02010113          	addi	sp,sp,32
    8000228c:	00008067          	ret

0000000080002290 <_Z17kmem_cache_shrinkP12kmem_cache_s>:

int kmem_cache_shrink(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    80002290:	02050863          	beqz	a0,800022c0 <_Z17kmem_cache_shrinkP12kmem_cache_s+0x30>
{
    80002294:	ff010113          	addi	sp,sp,-16
    80002298:	00113423          	sd	ra,8(sp)
    8000229c:	00813023          	sd	s0,0(sp)
    800022a0:	01010413          	addi	s0,sp,16
        return 0;
    int totalBlocks = destroy_slab_list(&cachep->slabs_empty);
    800022a4:	04050513          	addi	a0,a0,64
    800022a8:	fffff097          	auipc	ra,0xfffff
    800022ac:	034080e7          	jalr	52(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    return totalBlocks;
}
    800022b0:	00813083          	ld	ra,8(sp)
    800022b4:	00013403          	ld	s0,0(sp)
    800022b8:	01010113          	addi	sp,sp,16
    800022bc:	00008067          	ret
        return 0;
    800022c0:	00000513          	li	a0,0
}
    800022c4:	00008067          	ret

00000000800022c8 <_Z16kmem_cache_errorP12kmem_cache_s>:

int kmem_cache_error(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    800022c8:	06050a63          	beqz	a0,8000233c <_Z16kmem_cache_errorP12kmem_cache_s+0x74>
{
    800022cc:	fe010113          	addi	sp,sp,-32
    800022d0:	00113c23          	sd	ra,24(sp)
    800022d4:	00813823          	sd	s0,16(sp)
    800022d8:	00913423          	sd	s1,8(sp)
    800022dc:	02010413          	addi	s0,sp,32
    800022e0:	00050493          	mv	s1,a0
        return 0;

    if(cachep->errors & EXPAND_ERROR)
    800022e4:	07852783          	lw	a5,120(a0)
    800022e8:	0017f793          	andi	a5,a5,1
    800022ec:	02079463          	bnez	a5,80002314 <_Z16kmem_cache_errorP12kmem_cache_s+0x4c>
        KConsole::trapPrintString("EXPAND ERROR\n");
    if(cachep->errors & DESTROY_ERROR)
    800022f0:	0784a783          	lw	a5,120(s1)
    800022f4:	0027f793          	andi	a5,a5,2
    800022f8:	02079863          	bnez	a5,80002328 <_Z16kmem_cache_errorP12kmem_cache_s+0x60>
        KConsole::trapPrintString("DESTROY ERROR");

    return cachep->errors;
    800022fc:	0784a503          	lw	a0,120(s1)
}
    80002300:	01813083          	ld	ra,24(sp)
    80002304:	01013403          	ld	s0,16(sp)
    80002308:	00813483          	ld	s1,8(sp)
    8000230c:	02010113          	addi	sp,sp,32
    80002310:	00008067          	ret
        KConsole::trapPrintString("EXPAND ERROR\n");
    80002314:	00006517          	auipc	a0,0x6
    80002318:	f4450513          	addi	a0,a0,-188 # 80008258 <CONSOLE_STATUS+0x248>
    8000231c:	00001097          	auipc	ra,0x1
    80002320:	170080e7          	jalr	368(ra) # 8000348c <_ZN8KConsole15trapPrintStringEPKc>
    80002324:	fcdff06f          	j	800022f0 <_Z16kmem_cache_errorP12kmem_cache_s+0x28>
        KConsole::trapPrintString("DESTROY ERROR");
    80002328:	00006517          	auipc	a0,0x6
    8000232c:	f4050513          	addi	a0,a0,-192 # 80008268 <CONSOLE_STATUS+0x258>
    80002330:	00001097          	auipc	ra,0x1
    80002334:	15c080e7          	jalr	348(ra) # 8000348c <_ZN8KConsole15trapPrintStringEPKc>
    80002338:	fc5ff06f          	j	800022fc <_Z16kmem_cache_errorP12kmem_cache_s+0x34>
        return 0;
    8000233c:	00000513          	li	a0,0
}
    80002340:	00008067          	ret

0000000080002344 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    80002344:	ff010113          	addi	sp,sp,-16
    80002348:	00113423          	sd	ra,8(sp)
    8000234c:	00813023          	sd	s0,0(sp)
    80002350:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80002354:	00002097          	auipc	ra,0x2
    80002358:	9c0080e7          	jalr	-1600(ra) # 80003d14 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    8000235c:	00006797          	auipc	a5,0x6
    80002360:	6bc7b783          	ld	a5,1724(a5) # 80008a18 <_ZN3PCB7runningE>
    80002364:	0287b703          	ld	a4,40(a5)
    80002368:	0307b503          	ld	a0,48(a5)
    8000236c:	000700e7          	jalr	a4

    thread_exit_kernel();
    80002370:	fffff097          	auipc	ra,0xfffff
    80002374:	f10080e7          	jalr	-240(ra) # 80001280 <_Z18thread_exit_kernelv>
}
    80002378:	00813083          	ld	ra,8(sp)
    8000237c:	00013403          	ld	s0,0(sp)
    80002380:	01010113          	addi	sp,sp,16
    80002384:	00008067          	ret

0000000080002388 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    80002388:	ff010113          	addi	sp,sp,-16
    8000238c:	00813423          	sd	s0,8(sp)
    80002390:	01010413          	addi	s0,sp,16
    })
    80002394:	00050023          	sb	zero,0(a0)
    80002398:	00e53c23          	sd	a4,24(a0)
    8000239c:	02053023          	sd	zero,32(a0)
    800023a0:	02b53423          	sd	a1,40(a0)
    800023a4:	02c53823          	sd	a2,48(a0)
    800023a8:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    800023ac:	000017b7          	lui	a5,0x1
    800023b0:	00f686b3          	add	a3,a3,a5
    })
    800023b4:	04d53423          	sd	a3,72(a0)
    800023b8:	00000797          	auipc	a5,0x0
    800023bc:	f8c78793          	addi	a5,a5,-116 # 80002344 <_ZN3PCB6runnerEv>
    800023c0:	04f53823          	sd	a5,80(a0)
    800023c4:	04050c23          	sb	zero,88(a0)
    nextPCB = 0;
    800023c8:	00053423          	sd	zero,8(a0)
}
    800023cc:	00813403          	ld	s0,8(sp)
    800023d0:	01010113          	addi	sp,sp,16
    800023d4:	00008067          	ret

00000000800023d8 <_ZN3PCB5startEv>:
{
    800023d8:	ff010113          	addi	sp,sp,-16
    800023dc:	00113423          	sd	ra,8(sp)
    800023e0:	00813023          	sd	s0,0(sp)
    800023e4:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    800023e8:	00001097          	auipc	ra,0x1
    800023ec:	35c080e7          	jalr	860(ra) # 80003744 <_ZN9Scheduler3putEP3PCB>
}
    800023f0:	00813083          	ld	ra,8(sp)
    800023f4:	00013403          	ld	s0,0(sp)
    800023f8:	01010113          	addi	sp,sp,16
    800023fc:	00008067          	ret

0000000080002400 <_ZN3PCBnwEm>:
    Riscv::changePrivMode();

    PCB::contextSwitch(&old->context, &running->context);
}

void *PCB::operator new(size_t size) {
    80002400:	ff010113          	addi	sp,sp,-16
    80002404:	00113423          	sd	ra,8(sp)
    80002408:	00813023          	sd	s0,0(sp)
    8000240c:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::pcbCache);
    80002410:	00006797          	auipc	a5,0x6
    80002414:	5a07b783          	ld	a5,1440(a5) # 800089b0 <_GLOBAL_OFFSET_TABLE_+0xa8>
    80002418:	0007b503          	ld	a0,0(a5)
    8000241c:	fffff097          	auipc	ra,0xfffff
    80002420:	7fc080e7          	jalr	2044(ra) # 80001c18 <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    80002424:	00813083          	ld	ra,8(sp)
    80002428:	00013403          	ld	s0,0(sp)
    8000242c:	01010113          	addi	sp,sp,16
    80002430:	00008067          	ret

0000000080002434 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80002434:	ff010113          	addi	sp,sp,-16
    80002438:	00113423          	sd	ra,8(sp)
    8000243c:	00813023          	sd	s0,0(sp)
    80002440:	01010413          	addi	s0,sp,16
    80002444:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::pcbCache, p);
    80002448:	00006797          	auipc	a5,0x6
    8000244c:	5687b783          	ld	a5,1384(a5) # 800089b0 <_GLOBAL_OFFSET_TABLE_+0xa8>
    80002450:	0007b503          	ld	a0,0(a5)
    80002454:	00000097          	auipc	ra,0x0
    80002458:	9a0080e7          	jalr	-1632(ra) # 80001df4 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    8000245c:	00813083          	ld	ra,8(sp)
    80002460:	00013403          	ld	s0,0(sp)
    80002464:	01010113          	addi	sp,sp,16
    80002468:	00008067          	ret

000000008000246c <_ZN3PCBD1Ev>:

PCB::~PCB()
    8000246c:	ff010113          	addi	sp,sp,-16
    80002470:	00113423          	sd	ra,8(sp)
    80002474:	00813023          	sd	s0,0(sp)
    80002478:	01010413          	addi	s0,sp,16
{
    MemoryAllocator::kfree(beginSP);
    8000247c:	03853503          	ld	a0,56(a0)
    80002480:	00002097          	auipc	ra,0x2
    80002484:	600080e7          	jalr	1536(ra) # 80004a80 <_ZN15MemoryAllocator5kfreeEPv>
}
    80002488:	00813083          	ld	ra,8(sp)
    8000248c:	00013403          	ld	s0,0(sp)
    80002490:	01010113          	addi	sp,sp,16
    80002494:	00008067          	ret

0000000080002498 <_ZN3PCB8dispatchEv>:
{
    80002498:	fe010113          	addi	sp,sp,-32
    8000249c:	00113c23          	sd	ra,24(sp)
    800024a0:	00813823          	sd	s0,16(sp)
    800024a4:	00913423          	sd	s1,8(sp)
    800024a8:	01213023          	sd	s2,0(sp)
    800024ac:	02010413          	addi	s0,sp,32
    PCB* old = running;
    800024b0:	00006497          	auipc	s1,0x6
    800024b4:	5684b483          	ld	s1,1384(s1) # 80008a18 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    800024b8:	0404a783          	lw	a5,64(s1)
    if(old->getState() == PCB::RUNNING)
    800024bc:	00100713          	li	a4,1
    800024c0:	04e78e63          	beq	a5,a4,8000251c <_ZN3PCB8dispatchEv+0x84>
    else if(old->getState() == PCB::FINISHED) // TODO test it
    800024c4:	00300713          	li	a4,3
    800024c8:	06e78263          	beq	a5,a4,8000252c <_ZN3PCB8dispatchEv+0x94>
    PCB::running = Scheduler::get();
    800024cc:	00001097          	auipc	ra,0x1
    800024d0:	2cc080e7          	jalr	716(ra) # 80003798 <_ZN9Scheduler3getEv>
    800024d4:	00006917          	auipc	s2,0x6
    800024d8:	54490913          	addi	s2,s2,1348 # 80008a18 <_ZN3PCB7runningE>
    800024dc:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    800024e0:	00100793          	li	a5,1
    800024e4:	04f52023          	sw	a5,64(a0)
    Riscv::changePrivMode();
    800024e8:	00002097          	auipc	ra,0x2
    800024ec:	e2c080e7          	jalr	-468(ra) # 80004314 <_ZN5Riscv14changePrivModeEv>
    PCB::contextSwitch(&old->context, &running->context);
    800024f0:	00093583          	ld	a1,0(s2)
    800024f4:	04858593          	addi	a1,a1,72
    800024f8:	04848513          	addi	a0,s1,72
    800024fc:	fffff097          	auipc	ra,0xfffff
    80002500:	d1c080e7          	jalr	-740(ra) # 80001218 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    80002504:	01813083          	ld	ra,24(sp)
    80002508:	01013403          	ld	s0,16(sp)
    8000250c:	00813483          	ld	s1,8(sp)
    80002510:	00013903          	ld	s2,0(sp)
    80002514:	02010113          	addi	sp,sp,32
    80002518:	00008067          	ret
        Scheduler::put(old);
    8000251c:	00048513          	mv	a0,s1
    80002520:	00001097          	auipc	ra,0x1
    80002524:	224080e7          	jalr	548(ra) # 80003744 <_ZN9Scheduler3putEP3PCB>
    80002528:	fa5ff06f          	j	800024cc <_ZN3PCB8dispatchEv+0x34>
        delete old;
    8000252c:	fa0480e3          	beqz	s1,800024cc <_ZN3PCB8dispatchEv+0x34>
    80002530:	00048513          	mv	a0,s1
    80002534:	00000097          	auipc	ra,0x0
    80002538:	f38080e7          	jalr	-200(ra) # 8000246c <_ZN3PCBD1Ev>
    8000253c:	00048513          	mv	a0,s1
    80002540:	00000097          	auipc	ra,0x0
    80002544:	ef4080e7          	jalr	-268(ra) # 80002434 <_ZN3PCBdlEPv>
    80002548:	f85ff06f          	j	800024cc <_ZN3PCB8dispatchEv+0x34>

000000008000254c <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    8000254c:	fe010113          	addi	sp,sp,-32
    80002550:	00113c23          	sd	ra,24(sp)
    80002554:	00813823          	sd	s0,16(sp)
    80002558:	00913423          	sd	s1,8(sp)
    8000255c:	01213023          	sd	s2,0(sp)
    80002560:	02010413          	addi	s0,sp,32
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    80002564:	06000513          	li	a0,96
    80002568:	00000097          	auipc	ra,0x0
    8000256c:	e98080e7          	jalr	-360(ra) # 80002400 <_ZN3PCBnwEm>
    80002570:	00050493          	mv	s1,a0
    80002574:	00050e63          	beqz	a0,80002590 <_ZN3PCB10initializeEv+0x44>
    80002578:	00000713          	li	a4,0
    8000257c:	00000693          	li	a3,0
    80002580:	00000613          	li	a2,0
    80002584:	00000593          	li	a1,0
    80002588:	00000097          	auipc	ra,0x0
    8000258c:	e00080e7          	jalr	-512(ra) # 80002388 <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    80002590:	00100793          	li	a5,1
    80002594:	00f48023          	sb	a5,0(s1)
    PCB::running = mainSystem;
    80002598:	00006797          	auipc	a5,0x6
    8000259c:	4897b023          	sd	s1,1152(a5) # 80008a18 <_ZN3PCB7runningE>
    800025a0:	00100793          	li	a5,1
    800025a4:	04f4a023          	sw	a5,64(s1)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0,
                              kmalloc(DEFAULT_STACK_SIZE),
    800025a8:	00001537          	lui	a0,0x1
    800025ac:	00000097          	auipc	ra,0x0
    800025b0:	af0080e7          	jalr	-1296(ra) # 8000209c <_Z7kmallocm>
    800025b4:	00050913          	mv	s2,a0
//                              MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),
                              DEFAULT_TIME_SLICE);
    800025b8:	06000513          	li	a0,96
    800025bc:	00000097          	auipc	ra,0x0
    800025c0:	e44080e7          	jalr	-444(ra) # 80002400 <_ZN3PCBnwEm>
    800025c4:	00050493          	mv	s1,a0
    800025c8:	02050063          	beqz	a0,800025e8 <_ZN3PCB10initializeEv+0x9c>
    800025cc:	00200713          	li	a4,2
    800025d0:	00090693          	mv	a3,s2
    800025d4:	00000613          	li	a2,0
    800025d8:	00006597          	auipc	a1,0x6
    800025dc:	3985b583          	ld	a1,920(a1) # 80008970 <_GLOBAL_OFFSET_TABLE_+0x68>
    800025e0:	00000097          	auipc	ra,0x0
    800025e4:	da8080e7          	jalr	-600(ra) # 80002388 <_ZN3PCBC1EPFvPvES0_S0_m>
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0,
    800025e8:	00006797          	auipc	a5,0x6
    800025ec:	43078793          	addi	a5,a5,1072 # 80008a18 <_ZN3PCB7runningE>
    800025f0:	0097b423          	sd	s1,8(a5)
    PCB::consolePCB->systemThread = true;
    800025f4:	00100713          	li	a4,1
    800025f8:	00e48023          	sb	a4,0(s1)
    PCB::consolePCB->start();
    800025fc:	0087b503          	ld	a0,8(a5)
    80002600:	00000097          	auipc	ra,0x0
    80002604:	dd8080e7          	jalr	-552(ra) # 800023d8 <_ZN3PCB5startEv>
    PCB::userPCB = new PCB(&PCBWrapperUser::userMainWrapper, 0,
//                           kmalloc(DEFAULT_STACK_SIZE),
                           MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),
    80002608:	00001537          	lui	a0,0x1
    8000260c:	00002097          	auipc	ra,0x2
    80002610:	404080e7          	jalr	1028(ra) # 80004a10 <_ZN15MemoryAllocator7kmallocEm>
    80002614:	00050913          	mv	s2,a0
                           DEFAULT_TIME_SLICE);
    80002618:	06000513          	li	a0,96
    8000261c:	00000097          	auipc	ra,0x0
    80002620:	de4080e7          	jalr	-540(ra) # 80002400 <_ZN3PCBnwEm>
    80002624:	00050493          	mv	s1,a0
    80002628:	02050063          	beqz	a0,80002648 <_ZN3PCB10initializeEv+0xfc>
    8000262c:	00200713          	li	a4,2
    80002630:	00090693          	mv	a3,s2
    80002634:	00000613          	li	a2,0
    80002638:	00006597          	auipc	a1,0x6
    8000263c:	3405b583          	ld	a1,832(a1) # 80008978 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002640:	00000097          	auipc	ra,0x0
    80002644:	d48080e7          	jalr	-696(ra) # 80002388 <_ZN3PCBC1EPFvPvES0_S0_m>
    PCB::userPCB = new PCB(&PCBWrapperUser::userMainWrapper, 0,
    80002648:	00006797          	auipc	a5,0x6
    8000264c:	3e97b023          	sd	s1,992(a5) # 80008a28 <_ZN3PCB7userPCBE>
    PCB::userPCB->start();
    80002650:	00048513          	mv	a0,s1
    80002654:	00000097          	auipc	ra,0x0
    80002658:	d84080e7          	jalr	-636(ra) # 800023d8 <_ZN3PCB5startEv>
}
    8000265c:	01813083          	ld	ra,24(sp)
    80002660:	01013403          	ld	s0,16(sp)
    80002664:	00813483          	ld	s1,8(sp)
    80002668:	00013903          	ld	s2,0(sp)
    8000266c:	02010113          	addi	sp,sp,32
    80002670:	00008067          	ret

0000000080002674 <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    80002674:	ff010113          	addi	sp,sp,-16
    80002678:	00813423          	sd	s0,8(sp)
    8000267c:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    80002680:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    80002684:	ffd50513          	addi	a0,a0,-3
}
    80002688:	00153513          	seqz	a0,a0
    8000268c:	00813403          	ld	s0,8(sp)
    80002690:	01010113          	addi	sp,sp,16
    80002694:	00008067          	ret

0000000080002698 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    80002698:	ff010113          	addi	sp,sp,-16
    8000269c:	00113423          	sd	ra,8(sp)
    800026a0:	00813023          	sd	s0,0(sp)
    800026a4:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    800026a8:	00006797          	auipc	a5,0x6
    800026ac:	37078793          	addi	a5,a5,880 # 80008a18 <_ZN3PCB7runningE>
    800026b0:	0007bc23          	sd	zero,24(a5)
    PCB::running->setState(PCB::FINISHED);
    800026b4:	0007b783          	ld	a5,0(a5)
    800026b8:	00300713          	li	a4,3
    800026bc:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    800026c0:	00000097          	auipc	ra,0x0
    800026c4:	dd8080e7          	jalr	-552(ra) # 80002498 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    800026c8:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800026cc:	00002097          	auipc	ra,0x2
    800026d0:	c10080e7          	jalr	-1008(ra) # 800042dc <_ZN5Riscv13w_a0_sscratchEv>
}
    800026d4:	00813083          	ld	ra,8(sp)
    800026d8:	00013403          	ld	s0,0(sp)
    800026dc:	01010113          	addi	sp,sp,16
    800026e0:	00008067          	ret

00000000800026e4 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    800026e4:	ff010113          	addi	sp,sp,-16
    800026e8:	00113423          	sd	ra,8(sp)
    800026ec:	00813023          	sd	s0,0(sp)
    800026f0:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    800026f4:	00006797          	auipc	a5,0x6
    800026f8:	3207be23          	sd	zero,828(a5) # 80008a30 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    800026fc:	00000097          	auipc	ra,0x0
    80002700:	d9c080e7          	jalr	-612(ra) # 80002498 <_ZN3PCB8dispatchEv>
}
    80002704:	00813083          	ld	ra,8(sp)
    80002708:	00013403          	ld	s0,0(sp)
    8000270c:	01010113          	addi	sp,sp,16
    80002710:	00008067          	ret

0000000080002714 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002714:	ff010113          	addi	sp,sp,-16
    80002718:	00113423          	sd	ra,8(sp)
    8000271c:	00813023          	sd	s0,0(sp)
    80002720:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002724:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    80002728:	00006717          	auipc	a4,0x6
    8000272c:	2f070713          	addi	a4,a4,752 # 80008a18 <_ZN3PCB7runningE>
    80002730:	00073c23          	sd	zero,24(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80002734:	00073703          	ld	a4,0(a4)
    80002738:	00006697          	auipc	a3,0x6
    8000273c:	2306b683          	ld	a3,560(a3) # 80008968 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002740:	0006b683          	ld	a3,0(a3)
    80002744:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002748:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    8000274c:	00001097          	auipc	ra,0x1
    80002750:	e7c080e7          	jalr	-388(ra) # 800035c8 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002754:	00000097          	auipc	ra,0x0
    80002758:	d44080e7          	jalr	-700(ra) # 80002498 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    8000275c:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002760:	00002097          	auipc	ra,0x2
    80002764:	b7c080e7          	jalr	-1156(ra) # 800042dc <_ZN5Riscv13w_a0_sscratchEv>
}
    80002768:	00813083          	ld	ra,8(sp)
    8000276c:	00013403          	ld	s0,0(sp)
    80002770:	01010113          	addi	sp,sp,16
    80002774:	00008067          	ret

0000000080002778 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    80002778:	fd010113          	addi	sp,sp,-48
    8000277c:	02113423          	sd	ra,40(sp)
    80002780:	02813023          	sd	s0,32(sp)
    80002784:	00913c23          	sd	s1,24(sp)
    80002788:	01213823          	sd	s2,16(sp)
    8000278c:	01313423          	sd	s3,8(sp)
    80002790:	01413023          	sd	s4,0(sp)
    80002794:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002798:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    8000279c:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    800027a0:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args,
                          //stack_space,
                          (void *) PCB::savedRegA4,
                          DEFAULT_TIME_SLICE);
    800027a4:	06000513          	li	a0,96
    800027a8:	00000097          	auipc	ra,0x0
    800027ac:	c58080e7          	jalr	-936(ra) # 80002400 <_ZN3PCBnwEm>
    800027b0:	00050493          	mv	s1,a0
    800027b4:	02050063          	beqz	a0,800027d4 <_ZN3PCB19threadCreateHandlerEv+0x5c>
    800027b8:	00200713          	li	a4,2
    800027bc:	00006697          	auipc	a3,0x6
    800027c0:	27c6b683          	ld	a3,636(a3) # 80008a38 <_ZN3PCB10savedRegA4E>
    800027c4:	000a0613          	mv	a2,s4
    800027c8:	00098593          	mv	a1,s3
    800027cc:	00000097          	auipc	ra,0x0
    800027d0:	bbc080e7          	jalr	-1092(ra) # 80002388 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    800027d4:	00993023          	sd	s1,0(s2)

    if (newPCB == nullptr) {
    800027d8:	02048e63          	beqz	s1,80002814 <_ZN3PCB19threadCreateHandlerEv+0x9c>
        __asm__ volatile("li a0, 0x01");
    }
    else
    {
        newPCB->start();
    800027dc:	00048513          	mv	a0,s1
    800027e0:	00000097          	auipc	ra,0x0
    800027e4:	bf8080e7          	jalr	-1032(ra) # 800023d8 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    800027e8:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    800027ec:	00002097          	auipc	ra,0x2
    800027f0:	af0080e7          	jalr	-1296(ra) # 800042dc <_ZN5Riscv13w_a0_sscratchEv>
}
    800027f4:	02813083          	ld	ra,40(sp)
    800027f8:	02013403          	ld	s0,32(sp)
    800027fc:	01813483          	ld	s1,24(sp)
    80002800:	01013903          	ld	s2,16(sp)
    80002804:	00813983          	ld	s3,8(sp)
    80002808:	00013a03          	ld	s4,0(sp)
    8000280c:	03010113          	addi	sp,sp,48
    80002810:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    80002814:	00100513          	li	a0,1
    80002818:	fd5ff06f          	j	800027ec <_ZN3PCB19threadCreateHandlerEv+0x74>

000000008000281c <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    8000281c:	ff010113          	addi	sp,sp,-16
    80002820:	00113423          	sd	ra,8(sp)
    80002824:	00813023          	sd	s0,0(sp)
    80002828:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    8000282c:	00058513          	mv	a0,a1
    if(pcb != nullptr)
    80002830:	02050463          	beqz	a0,80002858 <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80002834:	00000097          	auipc	ra,0x0
    80002838:	ba4080e7          	jalr	-1116(ra) # 800023d8 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    8000283c:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x01");
    }
    Riscv::w_a0_sscratch();
    80002840:	00002097          	auipc	ra,0x2
    80002844:	a9c080e7          	jalr	-1380(ra) # 800042dc <_ZN5Riscv13w_a0_sscratchEv>
}
    80002848:	00813083          	ld	ra,8(sp)
    8000284c:	00013403          	ld	s0,0(sp)
    80002850:	01010113          	addi	sp,sp,16
    80002854:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    80002858:	00100513          	li	a0,1
    8000285c:	fe5ff06f          	j	80002840 <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080002860 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002860:	fd010113          	addi	sp,sp,-48
    80002864:	02113423          	sd	ra,40(sp)
    80002868:	02813023          	sd	s0,32(sp)
    8000286c:	00913c23          	sd	s1,24(sp)
    80002870:	01213823          	sd	s2,16(sp)
    80002874:	01313423          	sd	s3,8(sp)
    80002878:	01413023          	sd	s4,0(sp)
    8000287c:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002880:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002884:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002888:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args,
                          //stack_space,
                          (void *) PCB::savedRegA4,
                          DEFAULT_TIME_SLICE);
    8000288c:	06000513          	li	a0,96
    80002890:	00000097          	auipc	ra,0x0
    80002894:	b70080e7          	jalr	-1168(ra) # 80002400 <_ZN3PCBnwEm>
    80002898:	00050493          	mv	s1,a0
    8000289c:	02050063          	beqz	a0,800028bc <_ZN3PCB20threadMakePCBHandlerEv+0x5c>
    800028a0:	00200713          	li	a4,2
    800028a4:	00006697          	auipc	a3,0x6
    800028a8:	1946b683          	ld	a3,404(a3) # 80008a38 <_ZN3PCB10savedRegA4E>
    800028ac:	000a0613          	mv	a2,s4
    800028b0:	00098593          	mv	a1,s3
    800028b4:	00000097          	auipc	ra,0x0
    800028b8:	ad4080e7          	jalr	-1324(ra) # 80002388 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    800028bc:	00993023          	sd	s1,0(s2)

    if (newPCB == nullptr)
    800028c0:	02048863          	beqz	s1,800028f0 <_ZN3PCB20threadMakePCBHandlerEv+0x90>
    {
        __asm__ volatile("li a0, 0x01");
    }
    else
        __asm__ volatile("li a0, 0");
    800028c4:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800028c8:	00002097          	auipc	ra,0x2
    800028cc:	a14080e7          	jalr	-1516(ra) # 800042dc <_ZN5Riscv13w_a0_sscratchEv>
}
    800028d0:	02813083          	ld	ra,40(sp)
    800028d4:	02013403          	ld	s0,32(sp)
    800028d8:	01813483          	ld	s1,24(sp)
    800028dc:	01013903          	ld	s2,16(sp)
    800028e0:	00813983          	ld	s3,8(sp)
    800028e4:	00013a03          	ld	s4,0(sp)
    800028e8:	03010113          	addi	sp,sp,48
    800028ec:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    800028f0:	00100513          	li	a0,1
    800028f4:	fd5ff06f          	j	800028c8 <_ZN3PCB20threadMakePCBHandlerEv+0x68>

00000000800028f8 <_ZN3PCB19threadDelPCBHandlerEv>:

void PCB::threadDelPCBHandler()
{
    800028f8:	fe010113          	addi	sp,sp,-32
    800028fc:	00113c23          	sd	ra,24(sp)
    80002900:	00813823          	sd	s0,16(sp)
    80002904:	00913423          	sd	s1,8(sp)
    80002908:	02010413          	addi	s0,sp,32
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    8000290c:	00058493          	mv	s1,a1
    if(pcb != nullptr)
    80002910:	02048e63          	beqz	s1,8000294c <_ZN3PCB19threadDelPCBHandlerEv+0x54>
    {
        delete pcb;
    80002914:	00048513          	mv	a0,s1
    80002918:	00000097          	auipc	ra,0x0
    8000291c:	b54080e7          	jalr	-1196(ra) # 8000246c <_ZN3PCBD1Ev>
    80002920:	00048513          	mv	a0,s1
    80002924:	00000097          	auipc	ra,0x0
    80002928:	b10080e7          	jalr	-1264(ra) # 80002434 <_ZN3PCBdlEPv>
        __asm__ volatile("li a0, 0x0");
    8000292c:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x1");
    }
    Riscv::w_a0_sscratch();
    80002930:	00002097          	auipc	ra,0x2
    80002934:	9ac080e7          	jalr	-1620(ra) # 800042dc <_ZN5Riscv13w_a0_sscratchEv>
}
    80002938:	01813083          	ld	ra,24(sp)
    8000293c:	01013403          	ld	s0,16(sp)
    80002940:	00813483          	ld	s1,8(sp)
    80002944:	02010113          	addi	sp,sp,32
    80002948:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    8000294c:	00100513          	li	a0,1
    80002950:	fe1ff06f          	j	80002930 <_ZN3PCB19threadDelPCBHandlerEv+0x38>

0000000080002954 <_Z12getBlockAddrm>:
    addBlocks(buddy, addr, level); //adds free blocks
    buddy->numOfFreeBlocks += (1 << level);
}

size_t getBlockAddr(size_t addr)
{
    80002954:	ff010113          	addi	sp,sp,-16
    80002958:	00813423          	sd	s0,8(sp)
    8000295c:	01010413          	addi	s0,sp,16
    size_t mask = ((size_t)-1) << BLOCK_SIZE_POWER_2;
    return addr & mask;
}
    80002960:	fffff7b7          	lui	a5,0xfffff
    80002964:	00f57533          	and	a0,a0,a5
    80002968:	00813403          	ld	s0,8(sp)
    8000296c:	01010113          	addi	sp,sp,16
    80002970:	00008067          	ret

0000000080002974 <_Z16getNextBlockAddrm>:
size_t getNextBlockAddr(size_t addr)
{
    80002974:	ff010113          	addi	sp,sp,-16
    80002978:	00113423          	sd	ra,8(sp)
    8000297c:	00813023          	sd	s0,0(sp)
    80002980:	01010413          	addi	s0,sp,16
    size_t currBlock = getBlockAddr(addr);
    80002984:	00000097          	auipc	ra,0x0
    80002988:	fd0080e7          	jalr	-48(ra) # 80002954 <_Z12getBlockAddrm>
    return currBlock + BLOCK_SIZE;
}
    8000298c:	000017b7          	lui	a5,0x1
    80002990:	00f50533          	add	a0,a0,a5
    80002994:	00813083          	ld	ra,8(sp)
    80002998:	00013403          	ld	s0,0(sp)
    8000299c:	01010113          	addi	sp,sp,16
    800029a0:	00008067          	ret

00000000800029a4 <_Z12getDeg2Floorm>:

size_t getDeg2Floor(size_t num)
{
    800029a4:	ff010113          	addi	sp,sp,-16
    800029a8:	00813423          	sd	s0,8(sp)
    800029ac:	01010413          	addi	s0,sp,16
    size_t x = 1;
    size_t deg = 0;
    800029b0:	00000713          	li	a4,0
    size_t x = 1;
    800029b4:	00100793          	li	a5,1
    while(x <= num)
    800029b8:	00f56863          	bltu	a0,a5,800029c8 <_Z12getDeg2Floorm+0x24>
    {
        deg++;
    800029bc:	00170713          	addi	a4,a4,1
        x<<=1;
    800029c0:	00179793          	slli	a5,a5,0x1
    while(x <= num)
    800029c4:	ff5ff06f          	j	800029b8 <_Z12getDeg2Floorm+0x14>
    }
    return deg - 1;
}
    800029c8:	fff70513          	addi	a0,a4,-1
    800029cc:	00813403          	ld	s0,8(sp)
    800029d0:	01010113          	addi	sp,sp,16
    800029d4:	00008067          	ret

00000000800029d8 <_Z11getDeg2Ceilm>:

size_t getDeg2Ceil(size_t num)
{
    800029d8:	ff010113          	addi	sp,sp,-16
    800029dc:	00813423          	sd	s0,8(sp)
    800029e0:	01010413          	addi	s0,sp,16
    800029e4:	00050713          	mv	a4,a0
    size_t x = 1;
    size_t deg = 0;
    800029e8:	00000513          	li	a0,0
    size_t x = 1;
    800029ec:	00100793          	li	a5,1
    while(x < num)
    800029f0:	00e7f863          	bgeu	a5,a4,80002a00 <_Z11getDeg2Ceilm+0x28>
    {
        deg++;
    800029f4:	00150513          	addi	a0,a0,1
        x<<=1;
    800029f8:	00179793          	slli	a5,a5,0x1
    while(x < num)
    800029fc:	ff5ff06f          	j	800029f0 <_Z11getDeg2Ceilm+0x18>
    }
    return deg;
}
    80002a00:	00813403          	ld	s0,8(sp)
    80002a04:	01010113          	addi	sp,sp,16
    80002a08:	00008067          	ret

0000000080002a0c <_Z15addBlockToLevelP14buddyAllocatorPvm>:
    addBlockToLevel(buddy, addr, level);
}

//adds free block to level
void addBlockToLevel(buddyAllocator* buddy, void* addr, size_t level)
{
    80002a0c:	ff010113          	addi	sp,sp,-16
    80002a10:	00813423          	sd	s0,8(sp)
    80002a14:	01010413          	addi	s0,sp,16
    buddyBlock* newBlock = (buddyBlock*)addr;
    newBlock->next = nullptr;
    80002a18:	0005b023          	sd	zero,0(a1)
    if(buddy->bucket[level].first == nullptr)
    80002a1c:	00260793          	addi	a5,a2,2
    80002a20:	00479793          	slli	a5,a5,0x4
    80002a24:	00f507b3          	add	a5,a0,a5
    80002a28:	0007b783          	ld	a5,0(a5) # 1000 <_entry-0x7ffff000>
    80002a2c:	02078463          	beqz	a5,80002a54 <_Z15addBlockToLevelP14buddyAllocatorPvm+0x48>
    {
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    }
    else
    {
        buddy->bucket[level].last->next = newBlock;
    80002a30:	00260613          	addi	a2,a2,2
    80002a34:	00461613          	slli	a2,a2,0x4
    80002a38:	00c50633          	add	a2,a0,a2
    80002a3c:	00863783          	ld	a5,8(a2)
    80002a40:	00b7b023          	sd	a1,0(a5)
        buddy->bucket[level].last = newBlock;
    80002a44:	00b63423          	sd	a1,8(a2)
    }
}
    80002a48:	00813403          	ld	s0,8(sp)
    80002a4c:	01010113          	addi	sp,sp,16
    80002a50:	00008067          	ret
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    80002a54:	00260613          	addi	a2,a2,2
    80002a58:	00461613          	slli	a2,a2,0x4
    80002a5c:	00c50633          	add	a2,a0,a2
    80002a60:	00b63423          	sd	a1,8(a2)
    80002a64:	00b63023          	sd	a1,0(a2)
    80002a68:	fe1ff06f          	j	80002a48 <_Z15addBlockToLevelP14buddyAllocatorPvm+0x3c>

0000000080002a6c <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>:

size_t getBuddyBlockAddr(buddyAllocator* buddy, void* addr, size_t level)
{
    80002a6c:	ff010113          	addi	sp,sp,-16
    80002a70:	00813423          	sd	s0,8(sp)
    80002a74:	01010413          	addi	s0,sp,16
    size_t diff = BLOCK_SIZE << level;
    80002a78:	000017b7          	lui	a5,0x1
    80002a7c:	00c7963b          	sllw	a2,a5,a2
    size_t off = (size_t)addr - (size_t)buddy->startAddr;
    80002a80:	00853783          	ld	a5,8(a0)
    80002a84:	40f587b3          	sub	a5,a1,a5
    if(diff & off)
    80002a88:	00f677b3          	and	a5,a2,a5
    80002a8c:	00078a63          	beqz	a5,80002aa0 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm+0x34>
        return (size_t)addr - diff;
    80002a90:	40c58533          	sub	a0,a1,a2
    else
        return (size_t)addr + diff;
}
    80002a94:	00813403          	ld	s0,8(sp)
    80002a98:	01010113          	addi	sp,sp,16
    80002a9c:	00008067          	ret
        return (size_t)addr + diff;
    80002aa0:	00c58533          	add	a0,a1,a2
    80002aa4:	ff1ff06f          	j	80002a94 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm+0x28>

0000000080002aa8 <_Z5splitP14buddyAllocatorPvmmb>:
{
    80002aa8:	fd010113          	addi	sp,sp,-48
    80002aac:	02113423          	sd	ra,40(sp)
    80002ab0:	02813023          	sd	s0,32(sp)
    80002ab4:	00913c23          	sd	s1,24(sp)
    80002ab8:	01213823          	sd	s2,16(sp)
    80002abc:	01313423          	sd	s3,8(sp)
    80002ac0:	01413023          	sd	s4,0(sp)
    80002ac4:	03010413          	addi	s0,sp,48
    80002ac8:	00050913          	mv	s2,a0
    80002acc:	00058a13          	mv	s4,a1
    if(!splitMore)
    80002ad0:	06070a63          	beqz	a4,80002b44 <_Z5splitP14buddyAllocatorPvmmb+0x9c>
    80002ad4:	00060993          	mv	s3,a2
        if(currLevel == finalLevel)
    80002ad8:	04c68663          	beq	a3,a2,80002b24 <_Z5splitP14buddyAllocatorPvmmb+0x7c>
        size_t buddyBlock = getBuddyBlockAddr(buddy, addr, currLevel - 1); // currLevel - 1 for next step
    80002adc:	fff68493          	addi	s1,a3,-1
    80002ae0:	00048613          	mv	a2,s1
    80002ae4:	00000097          	auipc	ra,0x0
    80002ae8:	f88080e7          	jalr	-120(ra) # 80002a6c <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>
    80002aec:	00050593          	mv	a1,a0
        split(buddy, (void*)buddyBlock, finalLevel, currLevel - 1, false); // continue splitting
    80002af0:	00000713          	li	a4,0
    80002af4:	00048693          	mv	a3,s1
    80002af8:	00098613          	mv	a2,s3
    80002afc:	00090513          	mv	a0,s2
    80002b00:	00000097          	auipc	ra,0x0
    80002b04:	fa8080e7          	jalr	-88(ra) # 80002aa8 <_Z5splitP14buddyAllocatorPvmmb>
        split(buddy, addr, finalLevel, currLevel - 1, true); // continue splitting
    80002b08:	00100713          	li	a4,1
    80002b0c:	00048693          	mv	a3,s1
    80002b10:	00098613          	mv	a2,s3
    80002b14:	000a0593          	mv	a1,s4
    80002b18:	00090513          	mv	a0,s2
    80002b1c:	00000097          	auipc	ra,0x0
    80002b20:	f8c080e7          	jalr	-116(ra) # 80002aa8 <_Z5splitP14buddyAllocatorPvmmb>
}
    80002b24:	02813083          	ld	ra,40(sp)
    80002b28:	02013403          	ld	s0,32(sp)
    80002b2c:	01813483          	ld	s1,24(sp)
    80002b30:	01013903          	ld	s2,16(sp)
    80002b34:	00813983          	ld	s3,8(sp)
    80002b38:	00013a03          	ld	s4,0(sp)
    80002b3c:	03010113          	addi	sp,sp,48
    80002b40:	00008067          	ret
        addBlockToLevel(buddy, addr, currLevel);
    80002b44:	00068613          	mv	a2,a3
    80002b48:	00000097          	auipc	ra,0x0
    80002b4c:	ec4080e7          	jalr	-316(ra) # 80002a0c <_Z15addBlockToLevelP14buddyAllocatorPvm>
    80002b50:	fd5ff06f          	j	80002b24 <_Z5splitP14buddyAllocatorPvmmb+0x7c>

0000000080002b54 <_Z11buddy_allocP14buddyAllocatorm>:
{
    80002b54:	fd010113          	addi	sp,sp,-48
    80002b58:	02113423          	sd	ra,40(sp)
    80002b5c:	02813023          	sd	s0,32(sp)
    80002b60:	00913c23          	sd	s1,24(sp)
    80002b64:	01213823          	sd	s2,16(sp)
    80002b68:	01313423          	sd	s3,8(sp)
    80002b6c:	03010413          	addi	s0,sp,48
    80002b70:	00050493          	mv	s1,a0
    size_t level = getDeg2Ceil(numOfBlocks);
    80002b74:	00058513          	mv	a0,a1
    80002b78:	00000097          	auipc	ra,0x0
    80002b7c:	e60080e7          	jalr	-416(ra) # 800029d8 <_Z11getDeg2Ceilm>
    80002b80:	00050993          	mv	s3,a0
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002b84:	00050693          	mv	a3,a0
    80002b88:	0184b783          	ld	a5,24(s1)
    80002b8c:	06d7ee63          	bltu	a5,a3,80002c08 <_Z11buddy_allocP14buddyAllocatorm+0xb4>
        if(buddy->bucket[i].first != nullptr)
    80002b90:	00268793          	addi	a5,a3,2
    80002b94:	00479793          	slli	a5,a5,0x4
    80002b98:	00f487b3          	add	a5,s1,a5
    80002b9c:	0007b903          	ld	s2,0(a5) # 1000 <_entry-0x7ffff000>
    80002ba0:	00091663          	bnez	s2,80002bac <_Z11buddy_allocP14buddyAllocatorm+0x58>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002ba4:	00168693          	addi	a3,a3,1
    80002ba8:	fe1ff06f          	j	80002b88 <_Z11buddy_allocP14buddyAllocatorm+0x34>
            buddy->bucket[i].first = ret->next;
    80002bac:	00093703          	ld	a4,0(s2)
    80002bb0:	00268793          	addi	a5,a3,2
    80002bb4:	00479793          	slli	a5,a5,0x4
    80002bb8:	00f487b3          	add	a5,s1,a5
    80002bbc:	00e7b023          	sd	a4,0(a5)
            if(buddy->bucket[i].first == nullptr)
    80002bc0:	02070a63          	beqz	a4,80002bf4 <_Z11buddy_allocP14buddyAllocatorm+0xa0>
            split(buddy, (void*)ret, level, i, true);
    80002bc4:	00100713          	li	a4,1
    80002bc8:	00098613          	mv	a2,s3
    80002bcc:	00090593          	mv	a1,s2
    80002bd0:	00048513          	mv	a0,s1
    80002bd4:	00000097          	auipc	ra,0x0
    80002bd8:	ed4080e7          	jalr	-300(ra) # 80002aa8 <_Z5splitP14buddyAllocatorPvmmb>
            buddy->numOfFreeBlocks-= (1 << level);
    80002bdc:	00100513          	li	a0,1
    80002be0:	0135153b          	sllw	a0,a0,s3
    80002be4:	0104b983          	ld	s3,16(s1)
    80002be8:	40a989b3          	sub	s3,s3,a0
    80002bec:	0134b823          	sd	s3,16(s1)
            return ret;
    80002bf0:	01c0006f          	j	80002c0c <_Z11buddy_allocP14buddyAllocatorm+0xb8>
                buddy->bucket[i].last = nullptr;
    80002bf4:	00268793          	addi	a5,a3,2
    80002bf8:	00479793          	slli	a5,a5,0x4
    80002bfc:	00f487b3          	add	a5,s1,a5
    80002c00:	0007b423          	sd	zero,8(a5)
    80002c04:	fc1ff06f          	j	80002bc4 <_Z11buddy_allocP14buddyAllocatorm+0x70>
    return nullptr;
    80002c08:	00000913          	li	s2,0
}
    80002c0c:	00090513          	mv	a0,s2
    80002c10:	02813083          	ld	ra,40(sp)
    80002c14:	02013403          	ld	s0,32(sp)
    80002c18:	01813483          	ld	s1,24(sp)
    80002c1c:	01013903          	ld	s2,16(sp)
    80002c20:	00813983          	ld	s3,8(sp)
    80002c24:	03010113          	addi	sp,sp,48
    80002c28:	00008067          	ret

0000000080002c2c <_Z9addBlocksP14buddyAllocatorPvm>:
{
    80002c2c:	fd010113          	addi	sp,sp,-48
    80002c30:	02113423          	sd	ra,40(sp)
    80002c34:	02813023          	sd	s0,32(sp)
    80002c38:	00913c23          	sd	s1,24(sp)
    80002c3c:	01213823          	sd	s2,16(sp)
    80002c40:	01313423          	sd	s3,8(sp)
    80002c44:	03010413          	addi	s0,sp,48
    80002c48:	00050493          	mv	s1,a0
    80002c4c:	00058993          	mv	s3,a1
    80002c50:	00060913          	mv	s2,a2
    if(level == buddy->maxLevel)
    80002c54:	01853783          	ld	a5,24(a0)
    80002c58:	02c78a63          	beq	a5,a2,80002c8c <_Z9addBlocksP14buddyAllocatorPvm+0x60>
    size_t buddyBlockAddr = getBuddyBlockAddr(buddy,addr,level);
    80002c5c:	00000097          	auipc	ra,0x0
    80002c60:	e10080e7          	jalr	-496(ra) # 80002a6c <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>
    buddyBlock* curr = buddy->bucket[level].first;
    80002c64:	00290793          	addi	a5,s2,2
    80002c68:	00479793          	slli	a5,a5,0x4
    80002c6c:	00f487b3          	add	a5,s1,a5
    80002c70:	0007b783          	ld	a5,0(a5)
    buddyBlock* prev = nullptr;
    80002c74:	00000713          	li	a4,0
    while(curr != nullptr)
    80002c78:	0a078e63          	beqz	a5,80002d34 <_Z9addBlocksP14buddyAllocatorPvm+0x108>
        if((size_t)curr == buddyBlockAddr)
    80002c7c:	00a78e63          	beq	a5,a0,80002c98 <_Z9addBlocksP14buddyAllocatorPvm+0x6c>
        prev = curr;
    80002c80:	00078713          	mv	a4,a5
        curr = curr->next;
    80002c84:	0007b783          	ld	a5,0(a5)
    while(curr != nullptr)
    80002c88:	ff1ff06f          	j	80002c78 <_Z9addBlocksP14buddyAllocatorPvm+0x4c>
        addBlockToLevel(buddy, addr, level);
    80002c8c:	00000097          	auipc	ra,0x0
    80002c90:	d80080e7          	jalr	-640(ra) # 80002a0c <_Z15addBlockToLevelP14buddyAllocatorPvm>
        return;
    80002c94:	0b40006f          	j	80002d48 <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
            if(prev != nullptr)
    80002c98:	04070863          	beqz	a4,80002ce8 <_Z9addBlocksP14buddyAllocatorPvm+0xbc>
                prev->next = curr->next;
    80002c9c:	0007b683          	ld	a3,0(a5)
    80002ca0:	00d73023          	sd	a3,0(a4)
                if(curr == buddy->bucket[level].last)
    80002ca4:	00290693          	addi	a3,s2,2
    80002ca8:	00469693          	slli	a3,a3,0x4
    80002cac:	00d486b3          	add	a3,s1,a3
    80002cb0:	0086b683          	ld	a3,8(a3)
    80002cb4:	02f68063          	beq	a3,a5,80002cd4 <_Z9addBlocksP14buddyAllocatorPvm+0xa8>
            if((size_t)addr < buddyBlockAddr) addBlocks(buddy, addr, level + 1); //merge two chunks
    80002cb8:	06a9f263          	bgeu	s3,a0,80002d1c <_Z9addBlocksP14buddyAllocatorPvm+0xf0>
    80002cbc:	00190613          	addi	a2,s2,1
    80002cc0:	00098593          	mv	a1,s3
    80002cc4:	00048513          	mv	a0,s1
    80002cc8:	00000097          	auipc	ra,0x0
    80002ccc:	f64080e7          	jalr	-156(ra) # 80002c2c <_Z9addBlocksP14buddyAllocatorPvm>
    80002cd0:	0780006f          	j	80002d48 <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
                    buddy->bucket[level].last = prev;
    80002cd4:	00290793          	addi	a5,s2,2
    80002cd8:	00479793          	slli	a5,a5,0x4
    80002cdc:	00f487b3          	add	a5,s1,a5
    80002ce0:	00e7b423          	sd	a4,8(a5)
    80002ce4:	fd5ff06f          	j	80002cb8 <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
                if(curr->next == nullptr)
    80002ce8:	0007b703          	ld	a4,0(a5)
    80002cec:	00070c63          	beqz	a4,80002d04 <_Z9addBlocksP14buddyAllocatorPvm+0xd8>
                    buddy->bucket[level].first = curr->next;
    80002cf0:	00290793          	addi	a5,s2,2
    80002cf4:	00479793          	slli	a5,a5,0x4
    80002cf8:	00f487b3          	add	a5,s1,a5
    80002cfc:	00e7b023          	sd	a4,0(a5)
    80002d00:	fb9ff06f          	j	80002cb8 <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
                    buddy->bucket[level].first = buddy->bucket[level].last = nullptr;
    80002d04:	00290793          	addi	a5,s2,2
    80002d08:	00479793          	slli	a5,a5,0x4
    80002d0c:	00f487b3          	add	a5,s1,a5
    80002d10:	0007b423          	sd	zero,8(a5)
    80002d14:	0007b023          	sd	zero,0(a5)
    80002d18:	fa1ff06f          	j	80002cb8 <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
            else addBlocks(buddy, (void*)buddyBlockAddr, level + 1); //merge two chunks
    80002d1c:	00190613          	addi	a2,s2,1
    80002d20:	00050593          	mv	a1,a0
    80002d24:	00048513          	mv	a0,s1
    80002d28:	00000097          	auipc	ra,0x0
    80002d2c:	f04080e7          	jalr	-252(ra) # 80002c2c <_Z9addBlocksP14buddyAllocatorPvm>
            return;
    80002d30:	0180006f          	j	80002d48 <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
    addBlockToLevel(buddy, addr, level);
    80002d34:	00090613          	mv	a2,s2
    80002d38:	00098593          	mv	a1,s3
    80002d3c:	00048513          	mv	a0,s1
    80002d40:	00000097          	auipc	ra,0x0
    80002d44:	ccc080e7          	jalr	-820(ra) # 80002a0c <_Z15addBlockToLevelP14buddyAllocatorPvm>
}
    80002d48:	02813083          	ld	ra,40(sp)
    80002d4c:	02013403          	ld	s0,32(sp)
    80002d50:	01813483          	ld	s1,24(sp)
    80002d54:	01013903          	ld	s2,16(sp)
    80002d58:	00813983          	ld	s3,8(sp)
    80002d5c:	03010113          	addi	sp,sp,48
    80002d60:	00008067          	ret

0000000080002d64 <_Z10buddy_initPvm>:
{
    80002d64:	fd010113          	addi	sp,sp,-48
    80002d68:	02113423          	sd	ra,40(sp)
    80002d6c:	02813023          	sd	s0,32(sp)
    80002d70:	00913c23          	sd	s1,24(sp)
    80002d74:	01213823          	sd	s2,16(sp)
    80002d78:	01313423          	sd	s3,8(sp)
    80002d7c:	03010413          	addi	s0,sp,48
    80002d80:	00058993          	mv	s3,a1
    size_t blockAddr = getBlockAddr((size_t)addr); //alling the address
    80002d84:	00050493          	mv	s1,a0
    80002d88:	00000097          	auipc	ra,0x0
    80002d8c:	bcc080e7          	jalr	-1076(ra) # 80002954 <_Z12getBlockAddrm>
    if((size_t)addr != blockAddr) // if start address not aligned
    80002d90:	00a48a63          	beq	s1,a0,80002da4 <_Z10buddy_initPvm+0x40>
        buddyAddr = getNextBlockAddr(blockAddr);
    80002d94:	00000097          	auipc	ra,0x0
    80002d98:	be0080e7          	jalr	-1056(ra) # 80002974 <_Z16getNextBlockAddrm>
    80002d9c:	00050493          	mv	s1,a0
        numOfBlocks--; //have to discard one block
    80002da0:	fff98993          	addi	s3,s3,-1
    numOfBlocks--; // take one block for buddy metadata
    80002da4:	fff98993          	addi	s3,s3,-1
    buddyAllocator* buddy = (buddyAllocator*)buddyAddr;
    80002da8:	00048913          	mv	s2,s1
    buddy->startAddr = (void*)getNextBlockAddr(buddyAddr);
    80002dac:	00048513          	mv	a0,s1
    80002db0:	00000097          	auipc	ra,0x0
    80002db4:	bc4080e7          	jalr	-1084(ra) # 80002974 <_Z16getNextBlockAddrm>
    80002db8:	00a4b423          	sd	a0,8(s1)
    buddy->numOfBlocks = numOfBlocks;
    80002dbc:	0134b023          	sd	s3,0(s1)
    buddy->numOfFreeBlocks = numOfBlocks;
    80002dc0:	0134b823          	sd	s3,16(s1)
    buddy->maxLevel = getDeg2Floor(numOfBlocks);
    80002dc4:	00098513          	mv	a0,s3
    80002dc8:	00000097          	auipc	ra,0x0
    80002dcc:	bdc080e7          	jalr	-1060(ra) # 800029a4 <_Z12getDeg2Floorm>
    80002dd0:	00a4bc23          	sd	a0,24(s1)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80002dd4:	00000713          	li	a4,0
    80002dd8:	02e56063          	bltu	a0,a4,80002df8 <_Z10buddy_initPvm+0x94>
        buddy->bucket[i].first = buddy->bucket[i].last = nullptr;
    80002ddc:	00270793          	addi	a5,a4,2
    80002de0:	00479793          	slli	a5,a5,0x4
    80002de4:	00f907b3          	add	a5,s2,a5
    80002de8:	0007b423          	sd	zero,8(a5)
    80002dec:	0007b023          	sd	zero,0(a5)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80002df0:	00170713          	addi	a4,a4,1
    80002df4:	fe5ff06f          	j	80002dd8 <_Z10buddy_initPvm+0x74>
    for(size_t i = 0;i < numOfBlocks;i++)
    80002df8:	00000493          	li	s1,0
    80002dfc:	0334f463          	bgeu	s1,s3,80002e24 <_Z10buddy_initPvm+0xc0>
        addBlocks(buddy, (block*)buddy->startAddr + i, 0);
    80002e00:	00893583          	ld	a1,8(s2)
    80002e04:	00c49793          	slli	a5,s1,0xc
    80002e08:	00000613          	li	a2,0
    80002e0c:	00f585b3          	add	a1,a1,a5
    80002e10:	00090513          	mv	a0,s2
    80002e14:	00000097          	auipc	ra,0x0
    80002e18:	e18080e7          	jalr	-488(ra) # 80002c2c <_Z9addBlocksP14buddyAllocatorPvm>
    for(size_t i = 0;i < numOfBlocks;i++)
    80002e1c:	00148493          	addi	s1,s1,1
    80002e20:	fddff06f          	j	80002dfc <_Z10buddy_initPvm+0x98>
}
    80002e24:	00090513          	mv	a0,s2
    80002e28:	02813083          	ld	ra,40(sp)
    80002e2c:	02013403          	ld	s0,32(sp)
    80002e30:	01813483          	ld	s1,24(sp)
    80002e34:	01013903          	ld	s2,16(sp)
    80002e38:	00813983          	ld	s3,8(sp)
    80002e3c:	03010113          	addi	sp,sp,48
    80002e40:	00008067          	ret

0000000080002e44 <_Z10buddy_freeP14buddyAllocatorPvm>:
{
    80002e44:	fd010113          	addi	sp,sp,-48
    80002e48:	02113423          	sd	ra,40(sp)
    80002e4c:	02813023          	sd	s0,32(sp)
    80002e50:	00913c23          	sd	s1,24(sp)
    80002e54:	01213823          	sd	s2,16(sp)
    80002e58:	01313423          	sd	s3,8(sp)
    80002e5c:	03010413          	addi	s0,sp,48
    80002e60:	00050493          	mv	s1,a0
    80002e64:	00058993          	mv	s3,a1
    size_t level = getDeg2Ceil(numOfBlocks);
    80002e68:	00060513          	mv	a0,a2
    80002e6c:	00000097          	auipc	ra,0x0
    80002e70:	b6c080e7          	jalr	-1172(ra) # 800029d8 <_Z11getDeg2Ceilm>
    80002e74:	00050913          	mv	s2,a0
    addBlocks(buddy, addr, level); //adds free blocks
    80002e78:	00050613          	mv	a2,a0
    80002e7c:	00098593          	mv	a1,s3
    80002e80:	00048513          	mv	a0,s1
    80002e84:	00000097          	auipc	ra,0x0
    80002e88:	da8080e7          	jalr	-600(ra) # 80002c2c <_Z9addBlocksP14buddyAllocatorPvm>
    buddy->numOfFreeBlocks += (1 << level);
    80002e8c:	00100513          	li	a0,1
    80002e90:	0125153b          	sllw	a0,a0,s2
    80002e94:	0104b903          	ld	s2,16(s1)
    80002e98:	00a90933          	add	s2,s2,a0
    80002e9c:	0124b823          	sd	s2,16(s1)
}
    80002ea0:	02813083          	ld	ra,40(sp)
    80002ea4:	02013403          	ld	s0,32(sp)
    80002ea8:	01813483          	ld	s1,24(sp)
    80002eac:	01013903          	ld	s2,16(sp)
    80002eb0:	00813983          	ld	s3,8(sp)
    80002eb4:	03010113          	addi	sp,sp,48
    80002eb8:	00008067          	ret

0000000080002ebc <_Z14printBuddyInfoP14buddyAllocator>:

void printBuddyInfo(buddyAllocator* buddy)
{
    80002ebc:	fd010113          	addi	sp,sp,-48
    80002ec0:	02113423          	sd	ra,40(sp)
    80002ec4:	02813023          	sd	s0,32(sp)
    80002ec8:	00913c23          	sd	s1,24(sp)
    80002ecc:	01213823          	sd	s2,16(sp)
    80002ed0:	01313423          	sd	s3,8(sp)
    80002ed4:	03010413          	addi	s0,sp,48
    80002ed8:	00050993          	mv	s3,a0
    KConsole::trapPrintString("Buddy info-------------------------------------------\n");
    80002edc:	00005517          	auipc	a0,0x5
    80002ee0:	39c50513          	addi	a0,a0,924 # 80008278 <CONSOLE_STATUS+0x268>
    80002ee4:	00000097          	auipc	ra,0x0
    80002ee8:	5a8080e7          	jalr	1448(ra) # 8000348c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Buddy starting address ", (size_t)buddy->startAddr, 16);
    80002eec:	01000613          	li	a2,16
    80002ef0:	0089b583          	ld	a1,8(s3)
    80002ef4:	00005517          	auipc	a0,0x5
    80002ef8:	3bc50513          	addi	a0,a0,956 # 800082b0 <CONSOLE_STATUS+0x2a0>
    80002efc:	00000097          	auipc	ra,0x0
    80002f00:	668080e7          	jalr	1640(ra) # 80003564 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Buddy number of blocks ", buddy->numOfBlocks);
    80002f04:	00a00613          	li	a2,10
    80002f08:	0009b583          	ld	a1,0(s3)
    80002f0c:	00005517          	auipc	a0,0x5
    80002f10:	3bc50513          	addi	a0,a0,956 # 800082c8 <CONSOLE_STATUS+0x2b8>
    80002f14:	00000097          	auipc	ra,0x0
    80002f18:	650080e7          	jalr	1616(ra) # 80003564 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Buddy number of free blocks ", buddy->numOfFreeBlocks);
    80002f1c:	00a00613          	li	a2,10
    80002f20:	0109b583          	ld	a1,16(s3)
    80002f24:	00005517          	auipc	a0,0x5
    80002f28:	3bc50513          	addi	a0,a0,956 # 800082e0 <CONSOLE_STATUS+0x2d0>
    80002f2c:	00000097          	auipc	ra,0x0
    80002f30:	638080e7          	jalr	1592(ra) # 80003564 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    for(int i = buddy->maxLevel;i>=0;i--)
    80002f34:	0189a903          	lw	s2,24(s3)
    80002f38:	0080006f          	j	80002f40 <_Z14printBuddyInfoP14buddyAllocator+0x84>
    80002f3c:	fff9091b          	addiw	s2,s2,-1
    80002f40:	06094663          	bltz	s2,80002fac <_Z14printBuddyInfoP14buddyAllocator+0xf0>
    {
        KConsole::trapPrintStringInt("Level ",i);
    80002f44:	00a00613          	li	a2,10
    80002f48:	00090593          	mv	a1,s2
    80002f4c:	00005517          	auipc	a0,0x5
    80002f50:	3b450513          	addi	a0,a0,948 # 80008300 <CONSOLE_STATUS+0x2f0>
    80002f54:	00000097          	auipc	ra,0x0
    80002f58:	610080e7          	jalr	1552(ra) # 80003564 <_ZN8KConsole18trapPrintStringIntEPKcmi>
        KConsole::trapPrintString("Free blocks on this level\n");
    80002f5c:	00005517          	auipc	a0,0x5
    80002f60:	3ac50513          	addi	a0,a0,940 # 80008308 <CONSOLE_STATUS+0x2f8>
    80002f64:	00000097          	auipc	ra,0x0
    80002f68:	528080e7          	jalr	1320(ra) # 8000348c <_ZN8KConsole15trapPrintStringEPKc>
        buddyBlock* curr = buddy->bucket[i].first;
    80002f6c:	00290793          	addi	a5,s2,2
    80002f70:	00479793          	slli	a5,a5,0x4
    80002f74:	00f987b3          	add	a5,s3,a5
    80002f78:	0007b483          	ld	s1,0(a5)
        while(curr != 0)
    80002f7c:	fc0480e3          	beqz	s1,80002f3c <_Z14printBuddyInfoP14buddyAllocator+0x80>
        {
            KConsole::trapPrintInt((size_t)curr, 16);
    80002f80:	00000613          	li	a2,0
    80002f84:	01000593          	li	a1,16
    80002f88:	00048513          	mv	a0,s1
    80002f8c:	00000097          	auipc	ra,0x0
    80002f90:	544080e7          	jalr	1348(ra) # 800034d0 <_ZN8KConsole12trapPrintIntEmii>
            KConsole::trapPrintString("\n");
    80002f94:	00005517          	auipc	a0,0x5
    80002f98:	1ec50513          	addi	a0,a0,492 # 80008180 <CONSOLE_STATUS+0x170>
    80002f9c:	00000097          	auipc	ra,0x0
    80002fa0:	4f0080e7          	jalr	1264(ra) # 8000348c <_ZN8KConsole15trapPrintStringEPKc>
            curr = curr->next;
    80002fa4:	0004b483          	ld	s1,0(s1)
        while(curr != 0)
    80002fa8:	fd5ff06f          	j	80002f7c <_Z14printBuddyInfoP14buddyAllocator+0xc0>
        }
    }
    KConsole::trapPrintString("End of buddy info-------------------------------------------\n");
    80002fac:	00005517          	auipc	a0,0x5
    80002fb0:	37c50513          	addi	a0,a0,892 # 80008328 <CONSOLE_STATUS+0x318>
    80002fb4:	00000097          	auipc	ra,0x0
    80002fb8:	4d8080e7          	jalr	1240(ra) # 8000348c <_ZN8KConsole15trapPrintStringEPKc>
    80002fbc:	02813083          	ld	ra,40(sp)
    80002fc0:	02013403          	ld	s0,32(sp)
    80002fc4:	01813483          	ld	s1,24(sp)
    80002fc8:	01013903          	ld	s2,16(sp)
    80002fcc:	00813983          	ld	s3,8(sp)
    80002fd0:	03010113          	addi	sp,sp,48
    80002fd4:	00008067          	ret

0000000080002fd8 <_ZN8KConsole10initializeEv>:
char KConsole::outputBuffer[bufferSize];
uint64 KConsole::pendingPutc = 0;
bool KConsole::finished = false;

void KConsole::initialize()
{
    80002fd8:	fe010113          	addi	sp,sp,-32
    80002fdc:	00113c23          	sd	ra,24(sp)
    80002fe0:	00813823          	sd	s0,16(sp)
    80002fe4:	00913423          	sd	s1,8(sp)
    80002fe8:	01213023          	sd	s2,0(sp)
    80002fec:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80002ff0:	01800513          	li	a0,24
    80002ff4:	00002097          	auipc	ra,0x2
    80002ff8:	268080e7          	jalr	616(ra) # 8000525c <_ZN10KSemaphorenwEm>
    80002ffc:	00050493          	mv	s1,a0
    80003000:	00050863          	beqz	a0,80003010 <_ZN8KConsole10initializeEv+0x38>
    80003004:	00000593          	li	a1,0
    80003008:	00002097          	auipc	ra,0x2
    8000300c:	ff0080e7          	jalr	-16(ra) # 80004ff8 <_ZN10KSemaphoreC1Ei>
    80003010:	00006797          	auipc	a5,0x6
    80003014:	a297b823          	sd	s1,-1488(a5) # 80008a40 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80003018:	01800513          	li	a0,24
    8000301c:	00002097          	auipc	ra,0x2
    80003020:	240080e7          	jalr	576(ra) # 8000525c <_ZN10KSemaphorenwEm>
    80003024:	00050493          	mv	s1,a0
    80003028:	00050863          	beqz	a0,80003038 <_ZN8KConsole10initializeEv+0x60>
    8000302c:	00000593          	li	a1,0
    80003030:	00002097          	auipc	ra,0x2
    80003034:	fc8080e7          	jalr	-56(ra) # 80004ff8 <_ZN10KSemaphoreC1Ei>
    80003038:	00006797          	auipc	a5,0x6
    8000303c:	a097b823          	sd	s1,-1520(a5) # 80008a48 <_ZN8KConsole19hasCharactersOutputE>
}
    80003040:	01813083          	ld	ra,24(sp)
    80003044:	01013403          	ld	s0,16(sp)
    80003048:	00813483          	ld	s1,8(sp)
    8000304c:	00013903          	ld	s2,0(sp)
    80003050:	02010113          	addi	sp,sp,32
    80003054:	00008067          	ret
    80003058:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    8000305c:	00048513          	mv	a0,s1
    80003060:	00002097          	auipc	ra,0x2
    80003064:	2ac080e7          	jalr	684(ra) # 8000530c <_ZN10KSemaphoredlEPv>
    80003068:	00090513          	mv	a0,s2
    8000306c:	0000f097          	auipc	ra,0xf
    80003070:	b4c080e7          	jalr	-1204(ra) # 80011bb8 <_Unwind_Resume>
    80003074:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80003078:	00048513          	mv	a0,s1
    8000307c:	00002097          	auipc	ra,0x2
    80003080:	290080e7          	jalr	656(ra) # 8000530c <_ZN10KSemaphoredlEPv>
    80003084:	00090513          	mv	a0,s2
    80003088:	0000f097          	auipc	ra,0xf
    8000308c:	b30080e7          	jalr	-1232(ra) # 80011bb8 <_Unwind_Resume>

0000000080003090 <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    80003090:	00006697          	auipc	a3,0x6
    80003094:	9b068693          	addi	a3,a3,-1616 # 80008a40 <_ZN8KConsole18hasCharactersInputE>
    80003098:	0106b603          	ld	a2,16(a3)
    8000309c:	00160793          	addi	a5,a2,1
    800030a0:	00004737          	lui	a4,0x4
    800030a4:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    800030a8:	00e7f7b3          	and	a5,a5,a4
    800030ac:	0186b703          	ld	a4,24(a3)
    800030b0:	04e78263          	beq	a5,a4,800030f4 <_ZN8KConsole17putCharacterInputEc+0x64>
{
    800030b4:	ff010113          	addi	sp,sp,-16
    800030b8:	00113423          	sd	ra,8(sp)
    800030bc:	00813023          	sd	s0,0(sp)
    800030c0:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    800030c4:	0000a717          	auipc	a4,0xa
    800030c8:	9c470713          	addi	a4,a4,-1596 # 8000ca88 <_ZN8KConsole11inputBufferE>
    800030cc:	00c70633          	add	a2,a4,a2
    800030d0:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    800030d4:	00f6b823          	sd	a5,16(a3)
    hasCharactersInput->signal();
    800030d8:	0006b503          	ld	a0,0(a3)
    800030dc:	00002097          	auipc	ra,0x2
    800030e0:	138080e7          	jalr	312(ra) # 80005214 <_ZN10KSemaphore6signalEv>
}
    800030e4:	00813083          	ld	ra,8(sp)
    800030e8:	00013403          	ld	s0,0(sp)
    800030ec:	01010113          	addi	sp,sp,16
    800030f0:	00008067          	ret
    800030f4:	00008067          	ret

00000000800030f8 <_ZN8KConsole24getCharactersFromConsoleEv>:
    uint64 operation = *(uint8*)CONSOLE_STATUS;
    800030f8:	00006797          	auipc	a5,0x6
    800030fc:	8207b783          	ld	a5,-2016(a5) # 80008918 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003100:	0007b783          	ld	a5,0(a5)
    80003104:	0007c783          	lbu	a5,0(a5)
    if(operation & KConsole::STATUS_READ_MASK)
    80003108:	0017f793          	andi	a5,a5,1
    8000310c:	02078063          	beqz	a5,8000312c <_ZN8KConsole24getCharactersFromConsoleEv+0x34>
        char c = *(uint8*)CONSOLE_TX_DATA;
    80003110:	00006797          	auipc	a5,0x6
    80003114:	8407b783          	ld	a5,-1984(a5) # 80008950 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003118:	0007b783          	ld	a5,0(a5)
    8000311c:	0007c503          	lbu	a0,0(a5)
        if(KConsole::pendingGetc > 0)
    80003120:	00006797          	auipc	a5,0x6
    80003124:	9407b783          	ld	a5,-1728(a5) # 80008a60 <_ZN8KConsole11pendingGetcE>
    80003128:	00079463          	bnez	a5,80003130 <_ZN8KConsole24getCharactersFromConsoleEv+0x38>
    8000312c:	00008067          	ret
{
    80003130:	ff010113          	addi	sp,sp,-16
    80003134:	00113423          	sd	ra,8(sp)
    80003138:	00813023          	sd	s0,0(sp)
    8000313c:	01010413          	addi	s0,sp,16
            KConsole::pendingGetc--;
    80003140:	fff78793          	addi	a5,a5,-1
    80003144:	00006717          	auipc	a4,0x6
    80003148:	90f73e23          	sd	a5,-1764(a4) # 80008a60 <_ZN8KConsole11pendingGetcE>
            KConsole::putCharacterInput(c);
    8000314c:	00000097          	auipc	ra,0x0
    80003150:	f44080e7          	jalr	-188(ra) # 80003090 <_ZN8KConsole17putCharacterInputEc>
}
    80003154:	00813083          	ld	ra,8(sp)
    80003158:	00013403          	ld	s0,0(sp)
    8000315c:	01010113          	addi	sp,sp,16
    80003160:	00008067          	ret

0000000080003164 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80003164:	fe010113          	addi	sp,sp,-32
    80003168:	00113c23          	sd	ra,24(sp)
    8000316c:	00813823          	sd	s0,16(sp)
    80003170:	00913423          	sd	s1,8(sp)
    80003174:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    80003178:	00006497          	auipc	s1,0x6
    8000317c:	8c848493          	addi	s1,s1,-1848 # 80008a40 <_ZN8KConsole18hasCharactersInputE>
    80003180:	0004b503          	ld	a0,0(s1)
    80003184:	00002097          	auipc	ra,0x2
    80003188:	f18080e7          	jalr	-232(ra) # 8000509c <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    8000318c:	0184b783          	ld	a5,24(s1)
    80003190:	0104b703          	ld	a4,16(s1)
    80003194:	04e78063          	beq	a5,a4,800031d4 <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    80003198:	0000a717          	auipc	a4,0xa
    8000319c:	8f070713          	addi	a4,a4,-1808 # 8000ca88 <_ZN8KConsole11inputBufferE>
    800031a0:	00f70733          	add	a4,a4,a5
    800031a4:	00074503          	lbu	a0,0(a4)
    inputHead = (inputHead+1)%bufferSize;
    800031a8:	00178793          	addi	a5,a5,1
    800031ac:	00004737          	lui	a4,0x4
    800031b0:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    800031b4:	00e7f7b3          	and	a5,a5,a4
    800031b8:	00006717          	auipc	a4,0x6
    800031bc:	8af73023          	sd	a5,-1888(a4) # 80008a58 <_ZN8KConsole9inputHeadE>
    return c;
}
    800031c0:	01813083          	ld	ra,24(sp)
    800031c4:	01013403          	ld	s0,16(sp)
    800031c8:	00813483          	ld	s1,8(sp)
    800031cc:	02010113          	addi	sp,sp,32
    800031d0:	00008067          	ret
        return -1;
    800031d4:	0ff00513          	li	a0,255
    800031d8:	fe9ff06f          	j	800031c0 <_ZN8KConsole17getCharacterInputEv+0x5c>

00000000800031dc <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    800031dc:	00006697          	auipc	a3,0x6
    800031e0:	86468693          	addi	a3,a3,-1948 # 80008a40 <_ZN8KConsole18hasCharactersInputE>
    800031e4:	0286b603          	ld	a2,40(a3)
    800031e8:	00160793          	addi	a5,a2,1
    800031ec:	00004737          	lui	a4,0x4
    800031f0:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    800031f4:	00e7f7b3          	and	a5,a5,a4
    800031f8:	0306b703          	ld	a4,48(a3)
    800031fc:	04e78a63          	beq	a5,a4,80003250 <_ZN8KConsole18putCharacterOutputEc+0x74>
{
    80003200:	ff010113          	addi	sp,sp,-16
    80003204:	00113423          	sd	ra,8(sp)
    80003208:	00813023          	sd	s0,0(sp)
    8000320c:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    80003210:	00068713          	mv	a4,a3
    80003214:	0386b683          	ld	a3,56(a3)
    80003218:	00168693          	addi	a3,a3,1
    8000321c:	02d73c23          	sd	a3,56(a4)
    outputBuffer[outputTail] = c;
    80003220:	00006697          	auipc	a3,0x6
    80003224:	86868693          	addi	a3,a3,-1944 # 80008a88 <_ZN8KConsole12outputBufferE>
    80003228:	00c68633          	add	a2,a3,a2
    8000322c:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    80003230:	02f73423          	sd	a5,40(a4)
    hasCharactersOutput->signal();
    80003234:	00873503          	ld	a0,8(a4)
    80003238:	00002097          	auipc	ra,0x2
    8000323c:	fdc080e7          	jalr	-36(ra) # 80005214 <_ZN10KSemaphore6signalEv>
}
    80003240:	00813083          	ld	ra,8(sp)
    80003244:	00013403          	ld	s0,0(sp)
    80003248:	01010113          	addi	sp,sp,16
    8000324c:	00008067          	ret
    80003250:	00008067          	ret

0000000080003254 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80003254:	fe010113          	addi	sp,sp,-32
    80003258:	00113c23          	sd	ra,24(sp)
    8000325c:	00813823          	sd	s0,16(sp)
    80003260:	00913423          	sd	s1,8(sp)
    80003264:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    80003268:	00005497          	auipc	s1,0x5
    8000326c:	7d848493          	addi	s1,s1,2008 # 80008a40 <_ZN8KConsole18hasCharactersInputE>
    80003270:	0084b503          	ld	a0,8(s1)
    80003274:	00002097          	auipc	ra,0x2
    80003278:	e28080e7          	jalr	-472(ra) # 8000509c <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    8000327c:	0304b783          	ld	a5,48(s1)
    80003280:	0284b703          	ld	a4,40(s1)
    80003284:	04e78063          	beq	a5,a4,800032c4 <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;
    char c = outputBuffer[outputHead];
    80003288:	00006717          	auipc	a4,0x6
    8000328c:	80070713          	addi	a4,a4,-2048 # 80008a88 <_ZN8KConsole12outputBufferE>
    80003290:	00f70733          	add	a4,a4,a5
    80003294:	00074503          	lbu	a0,0(a4)
    outputHead = (outputHead+1)%bufferSize;
    80003298:	00178793          	addi	a5,a5,1
    8000329c:	00004737          	lui	a4,0x4
    800032a0:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    800032a4:	00e7f7b3          	and	a5,a5,a4
    800032a8:	00005717          	auipc	a4,0x5
    800032ac:	7cf73423          	sd	a5,1992(a4) # 80008a70 <_ZN8KConsole10outputHeadE>
    return c;
}
    800032b0:	01813083          	ld	ra,24(sp)
    800032b4:	01013403          	ld	s0,16(sp)
    800032b8:	00813483          	ld	s1,8(sp)
    800032bc:	02010113          	addi	sp,sp,32
    800032c0:	00008067          	ret
        return -1;
    800032c4:	0ff00513          	li	a0,255
    800032c8:	fe9ff06f          	j	800032b0 <_ZN8KConsole18getCharacterOutputEv+0x5c>

00000000800032cc <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    800032cc:	ff010113          	addi	sp,sp,-16
    800032d0:	00113423          	sd	ra,8(sp)
    800032d4:	00813023          	sd	s0,0(sp)
    800032d8:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    800032dc:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    800032e0:	0ff57513          	andi	a0,a0,255
    800032e4:	00000097          	auipc	ra,0x0
    800032e8:	ef8080e7          	jalr	-264(ra) # 800031dc <_ZN8KConsole18putCharacterOutputEc>
}
    800032ec:	00813083          	ld	ra,8(sp)
    800032f0:	00013403          	ld	s0,0(sp)
    800032f4:	01010113          	addi	sp,sp,16
    800032f8:	00008067          	ret

00000000800032fc <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    800032fc:	fe010113          	addi	sp,sp,-32
    80003300:	00113c23          	sd	ra,24(sp)
    80003304:	00813823          	sd	s0,16(sp)
    80003308:	00913423          	sd	s1,8(sp)
    8000330c:	02010413          	addi	s0,sp,32
    pendingGetc++;
    80003310:	00005717          	auipc	a4,0x5
    80003314:	73070713          	addi	a4,a4,1840 # 80008a40 <_ZN8KConsole18hasCharactersInputE>
    80003318:	02073783          	ld	a5,32(a4)
    8000331c:	00178793          	addi	a5,a5,1
    80003320:	02f73023          	sd	a5,32(a4)
    char ch;
    ch = getCharacterInput();
    80003324:	00000097          	auipc	ra,0x0
    80003328:	e40080e7          	jalr	-448(ra) # 80003164 <_ZN8KConsole17getCharacterInputEv>
    8000332c:	00050493          	mv	s1,a0
    if(ch!=0x01b)
    80003330:	01b00793          	li	a5,27
    80003334:	02f51663          	bne	a0,a5,80003360 <_ZN8KConsole11getcHandlerEv+0x64>
        putCharacterOutput(ch);

    if(ch==13)
    80003338:	00d00793          	li	a5,13
    8000333c:	02f48863          	beq	s1,a5,8000336c <_ZN8KConsole11getcHandlerEv+0x70>
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003340:	00048513          	mv	a0,s1
    Riscv::w_a0_sscratch();
    80003344:	00001097          	auipc	ra,0x1
    80003348:	f98080e7          	jalr	-104(ra) # 800042dc <_ZN5Riscv13w_a0_sscratchEv>
}
    8000334c:	01813083          	ld	ra,24(sp)
    80003350:	01013403          	ld	s0,16(sp)
    80003354:	00813483          	ld	s1,8(sp)
    80003358:	02010113          	addi	sp,sp,32
    8000335c:	00008067          	ret
        putCharacterOutput(ch);
    80003360:	00000097          	auipc	ra,0x0
    80003364:	e7c080e7          	jalr	-388(ra) # 800031dc <_ZN8KConsole18putCharacterOutputEc>
    80003368:	fd1ff06f          	j	80003338 <_ZN8KConsole11getcHandlerEv+0x3c>
        putCharacterOutput(13);
    8000336c:	00d00513          	li	a0,13
    80003370:	00000097          	auipc	ra,0x0
    80003374:	e6c080e7          	jalr	-404(ra) # 800031dc <_ZN8KConsole18putCharacterOutputEc>
        putCharacterOutput(10);
    80003378:	00a00513          	li	a0,10
    8000337c:	00000097          	auipc	ra,0x0
    80003380:	e60080e7          	jalr	-416(ra) # 800031dc <_ZN8KConsole18putCharacterOutputEc>
    80003384:	fbdff06f          	j	80003340 <_ZN8KConsole11getcHandlerEv+0x44>

0000000080003388 <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    80003388:	ff010113          	addi	sp,sp,-16
    8000338c:	00813423          	sd	s0,8(sp)
    80003390:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    80003394:	00005517          	auipc	a0,0x5
    80003398:	6e453503          	ld	a0,1764(a0) # 80008a78 <_ZN8KConsole11pendingPutcE>
    8000339c:	00153513          	seqz	a0,a0
    800033a0:	00813403          	ld	s0,8(sp)
    800033a4:	01010113          	addi	sp,sp,16
    800033a8:	00008067          	ret

00000000800033ac <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    800033ac:	fe010113          	addi	sp,sp,-32
    800033b0:	00113c23          	sd	ra,24(sp)
    800033b4:	00813823          	sd	s0,16(sp)
    800033b8:	02010413          	addi	s0,sp,32
    800033bc:	0180006f          	j	800033d4 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>
                thread_exit_kernel();
    800033c0:	ffffe097          	auipc	ra,0xffffe
    800033c4:	ec0080e7          	jalr	-320(ra) # 80001280 <_Z18thread_exit_kernelv>
    800033c8:	0340006f          	j	800033fc <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
                thread_dispatch_kernel();
    800033cc:	ffffe097          	auipc	ra,0xffffe
    800033d0:	e6c080e7          	jalr	-404(ra) # 80001238 <_Z22thread_dispatch_kernelv>
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    800033d4:	00005797          	auipc	a5,0x5
    800033d8:	5bc7b783          	ld	a5,1468(a5) # 80008990 <_GLOBAL_OFFSET_TABLE_+0x88>
    800033dc:	0007c783          	lbu	a5,0(a5)
    800033e0:	00078e63          	beqz	a5,800033fc <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    800033e4:	00000097          	auipc	ra,0x0
    800033e8:	fa4080e7          	jalr	-92(ra) # 80003388 <_ZN8KConsole17outputBufferEmptyEv>
    800033ec:	00050863          	beqz	a0,800033fc <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    800033f0:	00005797          	auipc	a5,0x5
    800033f4:	6707b783          	ld	a5,1648(a5) # 80008a60 <_ZN8KConsole11pendingGetcE>
    800033f8:	fc0784e3          	beqz	a5,800033c0 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 operation = *(uint8*)CONSOLE_STATUS;
    800033fc:	00005797          	auipc	a5,0x5
    80003400:	51c7b783          	ld	a5,1308(a5) # 80008918 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003404:	0007b783          	ld	a5,0(a5)
    80003408:	0007c783          	lbu	a5,0(a5)
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
    8000340c:	0207f793          	andi	a5,a5,32
    80003410:	fa078ee3          	beqz	a5,800033cc <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
    80003414:	00005797          	auipc	a5,0x5
    80003418:	6647b783          	ld	a5,1636(a5) # 80008a78 <_ZN8KConsole11pendingPutcE>
    8000341c:	fa0788e3          	beqz	a5,800033cc <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    80003420:	ffffe097          	auipc	ra,0xffffe
    80003424:	e38080e7          	jalr	-456(ra) # 80001258 <_Z20sysCallGetCharOutputv>
    80003428:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    8000342c:	00005717          	auipc	a4,0x5
    80003430:	61470713          	addi	a4,a4,1556 # 80008a40 <_ZN8KConsole18hasCharactersInputE>
    80003434:	03873783          	ld	a5,56(a4)
    80003438:	fff78793          	addi	a5,a5,-1
    8000343c:	02f73c23          	sd	a5,56(a4)
                *(uint8*)CONSOLE_RX_DATA = c;
    80003440:	00005797          	auipc	a5,0x5
    80003444:	4d07b783          	ld	a5,1232(a5) # 80008910 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003448:	0007b783          	ld	a5,0(a5)
    8000344c:	fef44703          	lbu	a4,-17(s0)
    80003450:	00e78023          	sb	a4,0(a5)
    80003454:	f81ff06f          	j	800033d4 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>

0000000080003458 <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    80003458:	ff010113          	addi	sp,sp,-16
    8000345c:	00113423          	sd	ra,8(sp)
    80003460:	00813023          	sd	s0,0(sp)
    80003464:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    80003468:	00000097          	auipc	ra,0x0
    8000346c:	dec080e7          	jalr	-532(ra) # 80003254 <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003470:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80003474:	00001097          	auipc	ra,0x1
    80003478:	e68080e7          	jalr	-408(ra) # 800042dc <_ZN5Riscv13w_a0_sscratchEv>
}
    8000347c:	00813083          	ld	ra,8(sp)
    80003480:	00013403          	ld	s0,0(sp)
    80003484:	01010113          	addi	sp,sp,16
    80003488:	00008067          	ret

000000008000348c <_ZN8KConsole15trapPrintStringEPKc>:

void KConsole::trapPrintString(const char *string)
{
    8000348c:	fe010113          	addi	sp,sp,-32
    80003490:	00113c23          	sd	ra,24(sp)
    80003494:	00813823          	sd	s0,16(sp)
    80003498:	00913423          	sd	s1,8(sp)
    8000349c:	02010413          	addi	s0,sp,32
    800034a0:	00050493          	mv	s1,a0
    while (*string != '\0')
    800034a4:	0004c503          	lbu	a0,0(s1)
    800034a8:	00050a63          	beqz	a0,800034bc <_ZN8KConsole15trapPrintStringEPKc+0x30>
    {
        KConsole::putCharacterOutput(*string);
    800034ac:	00000097          	auipc	ra,0x0
    800034b0:	d30080e7          	jalr	-720(ra) # 800031dc <_ZN8KConsole18putCharacterOutputEc>
        string++;
    800034b4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800034b8:	fedff06f          	j	800034a4 <_ZN8KConsole15trapPrintStringEPKc+0x18>
    }
}
    800034bc:	01813083          	ld	ra,24(sp)
    800034c0:	01013403          	ld	s0,16(sp)
    800034c4:	00813483          	ld	s1,8(sp)
    800034c8:	02010113          	addi	sp,sp,32
    800034cc:	00008067          	ret

00000000800034d0 <_ZN8KConsole12trapPrintIntEmii>:

void KConsole::trapPrintInt(size_t xx, int base, int sgn)
{
    800034d0:	fb010113          	addi	sp,sp,-80
    800034d4:	04113423          	sd	ra,72(sp)
    800034d8:	04813023          	sd	s0,64(sp)
    800034dc:	02913c23          	sd	s1,56(sp)
    800034e0:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    800034e4:	00005797          	auipc	a5,0x5
    800034e8:	e8478793          	addi	a5,a5,-380 # 80008368 <CONSOLE_STATUS+0x358>
    800034ec:	0007b703          	ld	a4,0(a5)
    800034f0:	fce43423          	sd	a4,-56(s0)
    800034f4:	0087b703          	ld	a4,8(a5)
    800034f8:	fce43823          	sd	a4,-48(s0)
    800034fc:	0107c783          	lbu	a5,16(a5)
    80003500:	fcf40c23          	sb	a5,-40(s0)
        x = -xx;
    } else {
        x = xx;
    }

    i = 0;
    80003504:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80003508:	02b57733          	remu	a4,a0,a1
    8000350c:	fe040693          	addi	a3,s0,-32
    80003510:	00e68733          	add	a4,a3,a4
    80003514:	fe874703          	lbu	a4,-24(a4)
    80003518:	009687b3          	add	a5,a3,s1
    8000351c:	0014849b          	addiw	s1,s1,1
    80003520:	fce78c23          	sb	a4,-40(a5)
    }while((x /= base) != 0);
    80003524:	00050793          	mv	a5,a0
    80003528:	02b55533          	divu	a0,a0,a1
    8000352c:	fcb7fee3          	bgeu	a5,a1,80003508 <_ZN8KConsole12trapPrintIntEmii+0x38>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    80003530:	fff4849b          	addiw	s1,s1,-1
    80003534:	0004ce63          	bltz	s1,80003550 <_ZN8KConsole12trapPrintIntEmii+0x80>
        KConsole::putCharacterOutput(buf[i]);
    80003538:	fe040793          	addi	a5,s0,-32
    8000353c:	009787b3          	add	a5,a5,s1
    80003540:	fd87c503          	lbu	a0,-40(a5)
    80003544:	00000097          	auipc	ra,0x0
    80003548:	c98080e7          	jalr	-872(ra) # 800031dc <_ZN8KConsole18putCharacterOutputEc>
    8000354c:	fe5ff06f          	j	80003530 <_ZN8KConsole12trapPrintIntEmii+0x60>
}
    80003550:	04813083          	ld	ra,72(sp)
    80003554:	04013403          	ld	s0,64(sp)
    80003558:	03813483          	ld	s1,56(sp)
    8000355c:	05010113          	addi	sp,sp,80
    80003560:	00008067          	ret

0000000080003564 <_ZN8KConsole18trapPrintStringIntEPKcmi>:

void KConsole::trapPrintStringInt(const char *string, size_t xx, int base)
{
    80003564:	fe010113          	addi	sp,sp,-32
    80003568:	00113c23          	sd	ra,24(sp)
    8000356c:	00813823          	sd	s0,16(sp)
    80003570:	00913423          	sd	s1,8(sp)
    80003574:	01213023          	sd	s2,0(sp)
    80003578:	02010413          	addi	s0,sp,32
    8000357c:	00058493          	mv	s1,a1
    80003580:	00060913          	mv	s2,a2
    trapPrintString(string);
    80003584:	00000097          	auipc	ra,0x0
    80003588:	f08080e7          	jalr	-248(ra) # 8000348c <_ZN8KConsole15trapPrintStringEPKc>
    trapPrintInt(xx,base);
    8000358c:	00000613          	li	a2,0
    80003590:	00090593          	mv	a1,s2
    80003594:	00048513          	mv	a0,s1
    80003598:	00000097          	auipc	ra,0x0
    8000359c:	f38080e7          	jalr	-200(ra) # 800034d0 <_ZN8KConsole12trapPrintIntEmii>
    trapPrintString("\n");
    800035a0:	00005517          	auipc	a0,0x5
    800035a4:	be050513          	addi	a0,a0,-1056 # 80008180 <CONSOLE_STATUS+0x170>
    800035a8:	00000097          	auipc	ra,0x0
    800035ac:	ee4080e7          	jalr	-284(ra) # 8000348c <_ZN8KConsole15trapPrintStringEPKc>
}
    800035b0:	01813083          	ld	ra,24(sp)
    800035b4:	01013403          	ld	s0,16(sp)
    800035b8:	00813483          	ld	s1,8(sp)
    800035bc:	00013903          	ld	s2,0(sp)
    800035c0:	02010113          	addi	sp,sp,32
    800035c4:	00008067          	ret

00000000800035c8 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../../h/Riscv.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    800035c8:	ff010113          	addi	sp,sp,-16
    800035cc:	00813423          	sd	s0,8(sp)
    800035d0:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    800035d4:	00005797          	auipc	a5,0x5
    800035d8:	3cc7b783          	ld	a5,972(a5) # 800089a0 <_GLOBAL_OFFSET_TABLE_+0x98>
    800035dc:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    800035e0:	00500793          	li	a5,5
    800035e4:	04f62023          	sw	a5,64(a2)
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    800035e8:	0000d797          	auipc	a5,0xd
    800035ec:	4a07b783          	ld	a5,1184(a5) # 80010a88 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    800035f0:	00000593          	li	a1,0
    while(curr != 0)
    800035f4:	02078063          	beqz	a5,80003614 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    800035f8:	02063683          	ld	a3,32(a2)
    800035fc:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80003600:	00e6e863          	bltu	a3,a4,80003610 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80003604:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80003608:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    8000360c:	fe9ff06f          	j	800035f4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80003610:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    80003614:	00058a63          	beqz	a1,80003628 <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    80003618:	00c5b423          	sd	a2,8(a1)
}
    8000361c:	00813403          	ld	s0,8(sp)
    80003620:	01010113          	addi	sp,sp,16
    80003624:	00008067          	ret
        sleepingPCBHead = PCB::running;
    80003628:	0000d797          	auipc	a5,0xd
    8000362c:	46c7b023          	sd	a2,1120(a5) # 80010a88 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80003630:	fedff06f          	j	8000361c <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

0000000080003634 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    PCB* curr = sleepingPCBHead;
    80003634:	0000d517          	auipc	a0,0xd
    80003638:	45453503          	ld	a0,1108(a0) # 80010a88 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    8000363c:	06050e63          	beqz	a0,800036b8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
        return;

    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003640:	06050c63          	beqz	a0,800036b8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80003644:	02053783          	ld	a5,32(a0)
    80003648:	00005717          	auipc	a4,0x5
    8000364c:	32073703          	ld	a4,800(a4) # 80008968 <_GLOBAL_OFFSET_TABLE_+0x60>
    80003650:	00073703          	ld	a4,0(a4)
    80003654:	06f76263          	bltu	a4,a5,800036b8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    80003658:	fe010113          	addi	sp,sp,-32
    8000365c:	00113c23          	sd	ra,24(sp)
    80003660:	00813823          	sd	s0,16(sp)
    80003664:	00913423          	sd	s1,8(sp)
    80003668:	02010413          	addi	s0,sp,32
    8000366c:	0180006f          	j	80003684 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80003670:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003674:	00005717          	auipc	a4,0x5
    80003678:	2f473703          	ld	a4,756(a4) # 80008968 <_GLOBAL_OFFSET_TABLE_+0x60>
    8000367c:	00073703          	ld	a4,0(a4)
    80003680:	02f76263          	bltu	a4,a5,800036a4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    80003684:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    80003688:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    8000368c:	00000097          	auipc	ra,0x0
    80003690:	0b8080e7          	jalr	184(ra) # 80003744 <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    80003694:	0000d797          	auipc	a5,0xd
    80003698:	3e97ba23          	sd	s1,1012(a5) # 80010a88 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    8000369c:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800036a0:	fc0498e3          	bnez	s1,80003670 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    800036a4:	01813083          	ld	ra,24(sp)
    800036a8:	01013403          	ld	s0,16(sp)
    800036ac:	00813483          	ld	s1,8(sp)
    800036b0:	02010113          	addi	sp,sp,32
    800036b4:	00008067          	ret
    800036b8:	00008067          	ret

00000000800036bc <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    800036bc:	ff010113          	addi	sp,sp,-16
    800036c0:	00113423          	sd	ra,8(sp)
    800036c4:	00813023          	sd	s0,0(sp)
    800036c8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    800036cc:	00001097          	auipc	ra,0x1
    800036d0:	344080e7          	jalr	836(ra) # 80004a10 <_ZN15MemoryAllocator7kmallocEm>
}
    800036d4:	00813083          	ld	ra,8(sp)
    800036d8:	00013403          	ld	s0,0(sp)
    800036dc:	01010113          	addi	sp,sp,16
    800036e0:	00008067          	ret

00000000800036e4 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    800036e4:	ff010113          	addi	sp,sp,-16
    800036e8:	00113423          	sd	ra,8(sp)
    800036ec:	00813023          	sd	s0,0(sp)
    800036f0:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    800036f4:	00001097          	auipc	ra,0x1
    800036f8:	38c080e7          	jalr	908(ra) # 80004a80 <_ZN15MemoryAllocator5kfreeEPv>
}
    800036fc:	00813083          	ld	ra,8(sp)
    80003700:	00013403          	ld	s0,0(sp)
    80003704:	01010113          	addi	sp,sp,16
    80003708:	00008067          	ret

000000008000370c <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    8000370c:	ff010113          	addi	sp,sp,-16
    80003710:	00813423          	sd	s0,8(sp)
    80003714:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80003718:	0000d797          	auipc	a5,0xd
    8000371c:	3787b783          	ld	a5,888(a5) # 80010a90 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80003720:	00000513          	li	a0,0
    while(curr != 0)
    80003724:	00078863          	beqz	a5,80003734 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80003728:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    8000372c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003730:	ff5ff06f          	j	80003724 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80003734:	0005051b          	sext.w	a0,a0
    80003738:	00813403          	ld	s0,8(sp)
    8000373c:	01010113          	addi	sp,sp,16
    80003740:	00008067          	ret

0000000080003744 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80003744:	ff010113          	addi	sp,sp,-16
    80003748:	00813423          	sd	s0,8(sp)
    8000374c:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80003750:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    80003754:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    80003758:	0000d797          	auipc	a5,0xd
    8000375c:	3387b783          	ld	a5,824(a5) # 80010a90 <_ZN9Scheduler16schedulerPCBHeadE>
    80003760:	02078263          	beqz	a5,80003784 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80003764:	0000d797          	auipc	a5,0xd
    80003768:	32c78793          	addi	a5,a5,812 # 80010a90 <_ZN9Scheduler16schedulerPCBHeadE>
    8000376c:	0087b703          	ld	a4,8(a5)
    80003770:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    80003774:	00a7b423          	sd	a0,8(a5)
    }
}
    80003778:	00813403          	ld	s0,8(sp)
    8000377c:	01010113          	addi	sp,sp,16
    80003780:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80003784:	0000d797          	auipc	a5,0xd
    80003788:	30c78793          	addi	a5,a5,780 # 80010a90 <_ZN9Scheduler16schedulerPCBHeadE>
    8000378c:	00a7b423          	sd	a0,8(a5)
    80003790:	00a7b023          	sd	a0,0(a5)
    80003794:	fe5ff06f          	j	80003778 <_ZN9Scheduler3putEP3PCB+0x34>

0000000080003798 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    80003798:	ff010113          	addi	sp,sp,-16
    8000379c:	00813423          	sd	s0,8(sp)
    800037a0:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    800037a4:	0000d517          	auipc	a0,0xd
    800037a8:	2ec53503          	ld	a0,748(a0) # 80010a90 <_ZN9Scheduler16schedulerPCBHeadE>
    800037ac:	00050c63          	beqz	a0,800037c4 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    800037b0:	00853783          	ld	a5,8(a0)
    800037b4:	00078e63          	beqz	a5,800037d0 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    800037b8:	0000d717          	auipc	a4,0xd
    800037bc:	2cf73c23          	sd	a5,728(a4) # 80010a90 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    800037c0:	00053423          	sd	zero,8(a0)
    return retval;
}
    800037c4:	00813403          	ld	s0,8(sp)
    800037c8:	01010113          	addi	sp,sp,16
    800037cc:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    800037d0:	0000d797          	auipc	a5,0xd
    800037d4:	2c078793          	addi	a5,a5,704 # 80010a90 <_ZN9Scheduler16schedulerPCBHeadE>
    800037d8:	0007b423          	sd	zero,8(a5)
    800037dc:	0007b023          	sd	zero,0(a5)
    800037e0:	fe1ff06f          	j	800037c0 <_ZN9Scheduler3getEv+0x28>

00000000800037e4 <_ZN9Scheduler5printEv>:

void Scheduler::print()
{
    800037e4:	fe010113          	addi	sp,sp,-32
    800037e8:	00113c23          	sd	ra,24(sp)
    800037ec:	00813823          	sd	s0,16(sp)
    800037f0:	00913423          	sd	s1,8(sp)
    800037f4:	02010413          	addi	s0,sp,32
    //trapPrintString("Scheduler print\n");
    PCB* curr = schedulerPCBHead;
    800037f8:	0000d497          	auipc	s1,0xd
    800037fc:	2984b483          	ld	s1,664(s1) # 80010a90 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003800:	02048863          	beqz	s1,80003830 <_ZN9Scheduler5printEv+0x4c>
    {
        KConsole::trapPrintInt((uint64)curr, 16);
    80003804:	00000613          	li	a2,0
    80003808:	01000593          	li	a1,16
    8000380c:	00048513          	mv	a0,s1
    80003810:	00000097          	auipc	ra,0x0
    80003814:	cc0080e7          	jalr	-832(ra) # 800034d0 <_ZN8KConsole12trapPrintIntEmii>
        KConsole::trapPrintString("\n");
    80003818:	00005517          	auipc	a0,0x5
    8000381c:	96850513          	addi	a0,a0,-1688 # 80008180 <CONSOLE_STATUS+0x170>
    80003820:	00000097          	auipc	ra,0x0
    80003824:	c6c080e7          	jalr	-916(ra) # 8000348c <_ZN8KConsole15trapPrintStringEPKc>
        curr = curr->nextPCB;
    80003828:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    8000382c:	fd5ff06f          	j	80003800 <_ZN9Scheduler5printEv+0x1c>
    }
}
    80003830:	01813083          	ld	ra,24(sp)
    80003834:	01013403          	ld	s0,16(sp)
    80003838:	00813483          	ld	s1,8(sp)
    8000383c:	02010113          	addi	sp,sp,32
    80003840:	00008067          	ret

0000000080003844 <main>:
#include "../../h/Riscv.hpp"

void main()
{
    80003844:	ff010113          	addi	sp,sp,-16
    80003848:	00113423          	sd	ra,8(sp)
    8000384c:	00813023          	sd	s0,0(sp)
    80003850:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    80003854:	00001097          	auipc	ra,0x1
    80003858:	990080e7          	jalr	-1648(ra) # 800041e4 <_ZN5Riscv10kernelMainEv>
    8000385c:	00813083          	ld	ra,8(sp)
    80003860:	00013403          	ld	s0,0(sp)
    80003864:	01010113          	addi	sp,sp,16
    80003868:	00008067          	ret

000000008000386c <_Z14buddyInitTest1v>:
#include "../../h/buddyTests.hpp"
#include "../../h/KConsole.hpp"
#include "../../h/MemoryAllocator.hpp"

void buddyInitTest1()
{
    8000386c:	ff010113          	addi	sp,sp,-16
    80003870:	00113423          	sd	ra,8(sp)
    80003874:	00813023          	sd	s0,0(sp)
    80003878:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 18);
    8000387c:	01200593          	li	a1,18
    80003880:	00005797          	auipc	a5,0x5
    80003884:	0a07b783          	ld	a5,160(a5) # 80008920 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003888:	0007b503          	ld	a0,0(a5)
    8000388c:	fffff097          	auipc	ra,0xfffff
    80003890:	4d8080e7          	jalr	1240(ra) # 80002d64 <_Z10buddy_initPvm>
    printBuddyInfo(buddy);
    80003894:	fffff097          	auipc	ra,0xfffff
    80003898:	628080e7          	jalr	1576(ra) # 80002ebc <_Z14printBuddyInfoP14buddyAllocator>
}
    8000389c:	00813083          	ld	ra,8(sp)
    800038a0:	00013403          	ld	s0,0(sp)
    800038a4:	01010113          	addi	sp,sp,16
    800038a8:	00008067          	ret

00000000800038ac <_Z20buddyOnlyAllocsTest1v>:

void buddyOnlyAllocsTest1()
{
    800038ac:	fe010113          	addi	sp,sp,-32
    800038b0:	00113c23          	sd	ra,24(sp)
    800038b4:	00813823          	sd	s0,16(sp)
    800038b8:	00913423          	sd	s1,8(sp)
    800038bc:	02010413          	addi	s0,sp,32
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    800038c0:	00a00593          	li	a1,10
    800038c4:	00005797          	auipc	a5,0x5
    800038c8:	05c7b783          	ld	a5,92(a5) # 80008920 <_GLOBAL_OFFSET_TABLE_+0x18>
    800038cc:	0007b503          	ld	a0,0(a5)
    800038d0:	fffff097          	auipc	ra,0xfffff
    800038d4:	494080e7          	jalr	1172(ra) # 80002d64 <_Z10buddy_initPvm>
    800038d8:	00050493          	mv	s1,a0
    printBuddyInfo(buddy);
    800038dc:	fffff097          	auipc	ra,0xfffff
    800038e0:	5e0080e7          	jalr	1504(ra) # 80002ebc <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    800038e4:	00100593          	li	a1,1
    800038e8:	00048513          	mv	a0,s1
    800038ec:	fffff097          	auipc	ra,0xfffff
    800038f0:	268080e7          	jalr	616(ra) # 80002b54 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    800038f4:	00048513          	mv	a0,s1
    800038f8:	fffff097          	auipc	ra,0xfffff
    800038fc:	5c4080e7          	jalr	1476(ra) # 80002ebc <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003900:	00100593          	li	a1,1
    80003904:	00048513          	mv	a0,s1
    80003908:	fffff097          	auipc	ra,0xfffff
    8000390c:	24c080e7          	jalr	588(ra) # 80002b54 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003910:	00048513          	mv	a0,s1
    80003914:	fffff097          	auipc	ra,0xfffff
    80003918:	5a8080e7          	jalr	1448(ra) # 80002ebc <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    8000391c:	00100593          	li	a1,1
    80003920:	00048513          	mv	a0,s1
    80003924:	fffff097          	auipc	ra,0xfffff
    80003928:	230080e7          	jalr	560(ra) # 80002b54 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    8000392c:	00048513          	mv	a0,s1
    80003930:	fffff097          	auipc	ra,0xfffff
    80003934:	58c080e7          	jalr	1420(ra) # 80002ebc <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,3);
    80003938:	00300593          	li	a1,3
    8000393c:	00048513          	mv	a0,s1
    80003940:	fffff097          	auipc	ra,0xfffff
    80003944:	214080e7          	jalr	532(ra) # 80002b54 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003948:	00048513          	mv	a0,s1
    8000394c:	fffff097          	auipc	ra,0xfffff
    80003950:	570080e7          	jalr	1392(ra) # 80002ebc <_Z14printBuddyInfoP14buddyAllocator>
}
    80003954:	01813083          	ld	ra,24(sp)
    80003958:	01013403          	ld	s0,16(sp)
    8000395c:	00813483          	ld	s1,8(sp)
    80003960:	02010113          	addi	sp,sp,32
    80003964:	00008067          	ret

0000000080003968 <_Z20buddyOnlyAllocsTest2v>:

void buddyOnlyAllocsTest2()
{
    80003968:	fe010113          	addi	sp,sp,-32
    8000396c:	00113c23          	sd	ra,24(sp)
    80003970:	00813823          	sd	s0,16(sp)
    80003974:	00913423          	sd	s1,8(sp)
    80003978:	02010413          	addi	s0,sp,32
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    8000397c:	00a00593          	li	a1,10
    80003980:	00005797          	auipc	a5,0x5
    80003984:	fa07b783          	ld	a5,-96(a5) # 80008920 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003988:	0007b503          	ld	a0,0(a5)
    8000398c:	fffff097          	auipc	ra,0xfffff
    80003990:	3d8080e7          	jalr	984(ra) # 80002d64 <_Z10buddy_initPvm>
    80003994:	00050493          	mv	s1,a0
    void* adr = buddy_alloc(buddy, 100);
    80003998:	06400593          	li	a1,100
    8000399c:	fffff097          	auipc	ra,0xfffff
    800039a0:	1b8080e7          	jalr	440(ra) # 80002b54 <_Z11buddy_allocP14buddyAllocatorm>
    if(adr == nullptr)
    800039a4:	00050c63          	beqz	a0,800039bc <_Z20buddyOnlyAllocsTest2v+0x54>
    {
        printBuddyInfo(buddy);
    }
}
    800039a8:	01813083          	ld	ra,24(sp)
    800039ac:	01013403          	ld	s0,16(sp)
    800039b0:	00813483          	ld	s1,8(sp)
    800039b4:	02010113          	addi	sp,sp,32
    800039b8:	00008067          	ret
        printBuddyInfo(buddy);
    800039bc:	00048513          	mv	a0,s1
    800039c0:	fffff097          	auipc	ra,0xfffff
    800039c4:	4fc080e7          	jalr	1276(ra) # 80002ebc <_Z14printBuddyInfoP14buddyAllocator>
}
    800039c8:	fe1ff06f          	j	800039a8 <_Z20buddyOnlyAllocsTest2v+0x40>

00000000800039cc <_Z19buddyAllocFreeTest1v>:

void buddyAllocFreeTest1()
{
    800039cc:	fd010113          	addi	sp,sp,-48
    800039d0:	02113423          	sd	ra,40(sp)
    800039d4:	02813023          	sd	s0,32(sp)
    800039d8:	00913c23          	sd	s1,24(sp)
    800039dc:	01213823          	sd	s2,16(sp)
    800039e0:	01313423          	sd	s3,8(sp)
    800039e4:	03010413          	addi	s0,sp,48
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    800039e8:	00a00593          	li	a1,10
    800039ec:	00005797          	auipc	a5,0x5
    800039f0:	f347b783          	ld	a5,-204(a5) # 80008920 <_GLOBAL_OFFSET_TABLE_+0x18>
    800039f4:	0007b503          	ld	a0,0(a5)
    800039f8:	fffff097          	auipc	ra,0xfffff
    800039fc:	36c080e7          	jalr	876(ra) # 80002d64 <_Z10buddy_initPvm>
    80003a00:	00050493          	mv	s1,a0
    printBuddyInfo(buddy);
    80003a04:	fffff097          	auipc	ra,0xfffff
    80003a08:	4b8080e7          	jalr	1208(ra) # 80002ebc <_Z14printBuddyInfoP14buddyAllocator>
    void* adr = buddy_alloc(buddy,1);
    80003a0c:	00100593          	li	a1,1
    80003a10:	00048513          	mv	a0,s1
    80003a14:	fffff097          	auipc	ra,0xfffff
    80003a18:	140080e7          	jalr	320(ra) # 80002b54 <_Z11buddy_allocP14buddyAllocatorm>
    80003a1c:	00050913          	mv	s2,a0
    printBuddyInfo(buddy);
    80003a20:	00048513          	mv	a0,s1
    80003a24:	fffff097          	auipc	ra,0xfffff
    80003a28:	498080e7          	jalr	1176(ra) # 80002ebc <_Z14printBuddyInfoP14buddyAllocator>
    buddy_free(buddy, adr, 1);
    80003a2c:	00100613          	li	a2,1
    80003a30:	00090593          	mv	a1,s2
    80003a34:	00048513          	mv	a0,s1
    80003a38:	fffff097          	auipc	ra,0xfffff
    80003a3c:	40c080e7          	jalr	1036(ra) # 80002e44 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003a40:	00048513          	mv	a0,s1
    80003a44:	fffff097          	auipc	ra,0xfffff
    80003a48:	478080e7          	jalr	1144(ra) # 80002ebc <_Z14printBuddyInfoP14buddyAllocator>

    adr = buddy_alloc(buddy, 2);
    80003a4c:	00200593          	li	a1,2
    80003a50:	00048513          	mv	a0,s1
    80003a54:	fffff097          	auipc	ra,0xfffff
    80003a58:	100080e7          	jalr	256(ra) # 80002b54 <_Z11buddy_allocP14buddyAllocatorm>
    80003a5c:	00050913          	mv	s2,a0
    void* adr2 = buddy_alloc(buddy, 3);
    80003a60:	00300593          	li	a1,3
    80003a64:	00048513          	mv	a0,s1
    80003a68:	fffff097          	auipc	ra,0xfffff
    80003a6c:	0ec080e7          	jalr	236(ra) # 80002b54 <_Z11buddy_allocP14buddyAllocatorm>
    80003a70:	00050993          	mv	s3,a0
    printBuddyInfo(buddy);
    80003a74:	00048513          	mv	a0,s1
    80003a78:	fffff097          	auipc	ra,0xfffff
    80003a7c:	444080e7          	jalr	1092(ra) # 80002ebc <_Z14printBuddyInfoP14buddyAllocator>

    buddy_free(buddy, adr, 2);
    80003a80:	00200613          	li	a2,2
    80003a84:	00090593          	mv	a1,s2
    80003a88:	00048513          	mv	a0,s1
    80003a8c:	fffff097          	auipc	ra,0xfffff
    80003a90:	3b8080e7          	jalr	952(ra) # 80002e44 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003a94:	00048513          	mv	a0,s1
    80003a98:	fffff097          	auipc	ra,0xfffff
    80003a9c:	424080e7          	jalr	1060(ra) # 80002ebc <_Z14printBuddyInfoP14buddyAllocator>
    adr = buddy_alloc(buddy, 1);
    80003aa0:	00100593          	li	a1,1
    80003aa4:	00048513          	mv	a0,s1
    80003aa8:	fffff097          	auipc	ra,0xfffff
    80003aac:	0ac080e7          	jalr	172(ra) # 80002b54 <_Z11buddy_allocP14buddyAllocatorm>
    80003ab0:	00050913          	mv	s2,a0
    printBuddyInfo(buddy);
    80003ab4:	00048513          	mv	a0,s1
    80003ab8:	fffff097          	auipc	ra,0xfffff
    80003abc:	404080e7          	jalr	1028(ra) # 80002ebc <_Z14printBuddyInfoP14buddyAllocator>

    buddy_free(buddy, adr2, 3);
    80003ac0:	00300613          	li	a2,3
    80003ac4:	00098593          	mv	a1,s3
    80003ac8:	00048513          	mv	a0,s1
    80003acc:	fffff097          	auipc	ra,0xfffff
    80003ad0:	378080e7          	jalr	888(ra) # 80002e44 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003ad4:	00048513          	mv	a0,s1
    80003ad8:	fffff097          	auipc	ra,0xfffff
    80003adc:	3e4080e7          	jalr	996(ra) # 80002ebc <_Z14printBuddyInfoP14buddyAllocator>
    buddy_free(buddy, adr, 1);
    80003ae0:	00100613          	li	a2,1
    80003ae4:	00090593          	mv	a1,s2
    80003ae8:	00048513          	mv	a0,s1
    80003aec:	fffff097          	auipc	ra,0xfffff
    80003af0:	358080e7          	jalr	856(ra) # 80002e44 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003af4:	00048513          	mv	a0,s1
    80003af8:	fffff097          	auipc	ra,0xfffff
    80003afc:	3c4080e7          	jalr	964(ra) # 80002ebc <_Z14printBuddyInfoP14buddyAllocator>
}
    80003b00:	02813083          	ld	ra,40(sp)
    80003b04:	02013403          	ld	s0,32(sp)
    80003b08:	01813483          	ld	s1,24(sp)
    80003b0c:	01013903          	ld	s2,16(sp)
    80003b10:	00813983          	ld	s3,8(sp)
    80003b14:	03010113          	addi	sp,sp,48
    80003b18:	00008067          	ret

0000000080003b1c <_Z13buddyTestMixav>:

void buddyTestMixa()
{
    80003b1c:	fc010113          	addi	sp,sp,-64
    80003b20:	02113c23          	sd	ra,56(sp)
    80003b24:	02813823          	sd	s0,48(sp)
    80003b28:	02913423          	sd	s1,40(sp)
    80003b2c:	03213023          	sd	s2,32(sp)
    80003b30:	01313c23          	sd	s3,24(sp)
    80003b34:	01413823          	sd	s4,16(sp)
    80003b38:	01513423          	sd	s5,8(sp)
    80003b3c:	04010413          	addi	s0,sp,64
    size_t mask = ((size_t)-1) << 12;
    buddyAllocator* buddy = (buddyAllocator*)(((size_t)HEAP_START_ADDR & mask) + (1 << 12));
    80003b40:	00005797          	auipc	a5,0x5
    80003b44:	de07b783          	ld	a5,-544(a5) # 80008920 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003b48:	0007b983          	ld	s3,0(a5)
    80003b4c:	fffff7b7          	lui	a5,0xfffff
    80003b50:	00f9f9b3          	and	s3,s3,a5
    80003b54:	000017b7          	lui	a5,0x1
    80003b58:	00f989b3          	add	s3,s3,a5
    void** x = (void**)MemoryAllocator::kmalloc(5000*sizeof(void*));
    80003b5c:	0000a537          	lui	a0,0xa
    80003b60:	c4050513          	addi	a0,a0,-960 # 9c40 <_entry-0x7fff63c0>
    80003b64:	00001097          	auipc	ra,0x1
    80003b68:	eac080e7          	jalr	-340(ra) # 80004a10 <_ZN15MemoryAllocator7kmallocEm>
    80003b6c:	00050a13          	mv	s4,a0
    printBuddyInfo(buddy);
    80003b70:	00098513          	mv	a0,s3
    80003b74:	fffff097          	auipc	ra,0xfffff
    80003b78:	348080e7          	jalr	840(ra) # 80002ebc <_Z14printBuddyInfoP14buddyAllocator>
    for(int i = 0; i < 5000;i++)
    80003b7c:	00000493          	li	s1,0
    80003b80:	0080006f          	j	80003b88 <_Z13buddyTestMixav+0x6c>
    80003b84:	0014849b          	addiw	s1,s1,1
    80003b88:	000017b7          	lui	a5,0x1
    80003b8c:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    80003b90:	0697c463          	blt	a5,s1,80003bf8 <_Z13buddyTestMixav+0xdc>
    {
        x[i] = buddy_alloc(buddy, 2);
    80003b94:	00349913          	slli	s2,s1,0x3
    80003b98:	012a0933          	add	s2,s4,s2
    80003b9c:	00200593          	li	a1,2
    80003ba0:	00098513          	mv	a0,s3
    80003ba4:	fffff097          	auipc	ra,0xfffff
    80003ba8:	fb0080e7          	jalr	-80(ra) # 80002b54 <_Z11buddy_allocP14buddyAllocatorm>
    80003bac:	00a93023          	sd	a0,0(s2)
        if(x[i] == nullptr)
    80003bb0:	fc051ae3          	bnez	a0,80003b84 <_Z13buddyTestMixav+0x68>
        {
            KConsole::trapPrintStringInt("Bad allocation ", i);
    80003bb4:	00a00613          	li	a2,10
    80003bb8:	00048593          	mv	a1,s1
    80003bbc:	00004517          	auipc	a0,0x4
    80003bc0:	7c450513          	addi	a0,a0,1988 # 80008380 <CONSOLE_STATUS+0x370>
    80003bc4:	00000097          	auipc	ra,0x0
    80003bc8:	9a0080e7          	jalr	-1632(ra) # 80003564 <_ZN8KConsole18trapPrintStringIntEPKcmi>
            for(int j = 0;j < i;j++)
    80003bcc:	00000913          	li	s2,0
    80003bd0:	02995463          	bge	s2,s1,80003bf8 <_Z13buddyTestMixav+0xdc>
            {
                buddy_free(buddy, x[j], 2);
    80003bd4:	00391793          	slli	a5,s2,0x3
    80003bd8:	00fa07b3          	add	a5,s4,a5
    80003bdc:	00200613          	li	a2,2
    80003be0:	0007b583          	ld	a1,0(a5)
    80003be4:	00098513          	mv	a0,s3
    80003be8:	fffff097          	auipc	ra,0xfffff
    80003bec:	25c080e7          	jalr	604(ra) # 80002e44 <_Z10buddy_freeP14buddyAllocatorPvm>
            for(int j = 0;j < i;j++)
    80003bf0:	0019091b          	addiw	s2,s2,1
    80003bf4:	fddff06f          	j	80003bd0 <_Z13buddyTestMixav+0xb4>
            }
            break;
        }
    }
    printBuddyInfo(buddy);
    80003bf8:	00098513          	mv	a0,s3
    80003bfc:	fffff097          	auipc	ra,0xfffff
    80003c00:	2c0080e7          	jalr	704(ra) # 80002ebc <_Z14printBuddyInfoP14buddyAllocator>
}
    80003c04:	03813083          	ld	ra,56(sp)
    80003c08:	03013403          	ld	s0,48(sp)
    80003c0c:	02813483          	ld	s1,40(sp)
    80003c10:	02013903          	ld	s2,32(sp)
    80003c14:	01813983          	ld	s3,24(sp)
    80003c18:	01013a03          	ld	s4,16(sp)
    80003c1c:	00813a83          	ld	s5,8(sp)
    80003c20:	04010113          	addi	sp,sp,64
    80003c24:	00008067          	ret

0000000080003c28 <_ZN5Riscv17initVirtualMemoryEv>:
extern char *userDataStart;
extern char *kernelTextStart;
extern char *kernelDataStart;

void Riscv::initVirtualMemory()
{
    80003c28:	ff010113          	addi	sp,sp,-16
    80003c2c:	00813423          	sd	s0,8(sp)
    80003c30:	01010413          	addi	s0,sp,16
    //size_t addr = (size_t)getNextBlockAddr((size_t)HEAP_START_ADDR);

    //size_t pmtSize = (1 << 9);
    //size_t descSize = 64;
    //size_t
}
    80003c34:	00813403          	ld	s0,8(sp)
    80003c38:	01010113          	addi	sp,sp,16
    80003c3c:	00008067          	ret

0000000080003c40 <_ZN5Riscv16enableInterruptsEv>:
        thread_dispatch_kernel();
    }
    disableInterrupts();
}

void Riscv::enableInterrupts() {
    80003c40:	ff010113          	addi	sp,sp,-16
    80003c44:	00813423          	sd	s0,8(sp)
    80003c48:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003c4c:	00200793          	li	a5,2
    80003c50:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    80003c54:	00813403          	ld	s0,8(sp)
    80003c58:	01010113          	addi	sp,sp,16
    80003c5c:	00008067          	ret

0000000080003c60 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    80003c60:	ff010113          	addi	sp,sp,-16
    80003c64:	00813423          	sd	s0,8(sp)
    80003c68:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003c6c:	00200793          	li	a5,2
    80003c70:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    80003c74:	00813403          	ld	s0,8(sp)
    80003c78:	01010113          	addi	sp,sp,16
    80003c7c:	00008067          	ret

0000000080003c80 <_ZN5Riscv9endSystemEv>:
{
    80003c80:	ff010113          	addi	sp,sp,-16
    80003c84:	00113423          	sd	ra,8(sp)
    80003c88:	00813023          	sd	s0,0(sp)
    80003c8c:	01010413          	addi	s0,sp,16
    disableInterrupts();
    80003c90:	00000097          	auipc	ra,0x0
    80003c94:	fd0080e7          	jalr	-48(ra) # 80003c60 <_ZN5Riscv17disableInterruptsEv>
    finishSystem = true;
    80003c98:	00100793          	li	a5,1
    80003c9c:	0000d717          	auipc	a4,0xd
    80003ca0:	e0f70223          	sb	a5,-508(a4) # 80010aa0 <_ZN5Riscv12finishSystemE>
        pcb = Scheduler::get();
    80003ca4:	00000097          	auipc	ra,0x0
    80003ca8:	af4080e7          	jalr	-1292(ra) # 80003798 <_ZN9Scheduler3getEv>
        if(pcb == 0) break;
    80003cac:	fe051ce3          	bnez	a0,80003ca4 <_ZN5Riscv9endSystemEv+0x24>
    Scheduler::put(PCB::consolePCB);
    80003cb0:	00005797          	auipc	a5,0x5
    80003cb4:	cd07b783          	ld	a5,-816(a5) # 80008980 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003cb8:	0007b503          	ld	a0,0(a5)
    80003cbc:	00000097          	auipc	ra,0x0
    80003cc0:	a88080e7          	jalr	-1400(ra) # 80003744 <_ZN9Scheduler3putEP3PCB>
    KConsole::pendingGetc = 0;
    80003cc4:	00005797          	auipc	a5,0x5
    80003cc8:	c847b783          	ld	a5,-892(a5) # 80008948 <_GLOBAL_OFFSET_TABLE_+0x40>
    80003ccc:	0007b023          	sd	zero,0(a5)
    enableInterrupts();
    80003cd0:	00000097          	auipc	ra,0x0
    80003cd4:	f70080e7          	jalr	-144(ra) # 80003c40 <_ZN5Riscv16enableInterruptsEv>
    while(!PCB::consolePCB->isFinished())
    80003cd8:	00005797          	auipc	a5,0x5
    80003cdc:	ca87b783          	ld	a5,-856(a5) # 80008980 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003ce0:	0007b503          	ld	a0,0(a5)
    80003ce4:	fffff097          	auipc	ra,0xfffff
    80003ce8:	990080e7          	jalr	-1648(ra) # 80002674 <_ZN3PCB10isFinishedEv>
    80003cec:	00051863          	bnez	a0,80003cfc <_ZN5Riscv9endSystemEv+0x7c>
        thread_dispatch_kernel();
    80003cf0:	ffffd097          	auipc	ra,0xffffd
    80003cf4:	548080e7          	jalr	1352(ra) # 80001238 <_Z22thread_dispatch_kernelv>
    while(!PCB::consolePCB->isFinished())
    80003cf8:	fe1ff06f          	j	80003cd8 <_ZN5Riscv9endSystemEv+0x58>
    disableInterrupts();
    80003cfc:	00000097          	auipc	ra,0x0
    80003d00:	f64080e7          	jalr	-156(ra) # 80003c60 <_ZN5Riscv17disableInterruptsEv>
}
    80003d04:	00813083          	ld	ra,8(sp)
    80003d08:	00013403          	ld	s0,0(sp)
    80003d0c:	01010113          	addi	sp,sp,16
    80003d10:	00008067          	ret

0000000080003d14 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    80003d14:	ff010113          	addi	sp,sp,-16
    80003d18:	00813423          	sd	s0,8(sp)
    80003d1c:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread) {
    80003d20:	00005797          	auipc	a5,0x5
    80003d24:	c807b783          	ld	a5,-896(a5) # 800089a0 <_GLOBAL_OFFSET_TABLE_+0x98>
    80003d28:	0007b783          	ld	a5,0(a5)
    80003d2c:	0007c703          	lbu	a4,0(a5)
    80003d30:	00070c63          	beqz	a4,80003d48 <_ZN5Riscv10popSppSpieEv+0x34>
        __asm__ volatile ("csrw sepc, ra");
    80003d34:	14109073          	csrw	sepc,ra
        __asm__ volatile ("sret");
    80003d38:	10200073          	sret
        __asm__ volatile("mv a0, %0"::"r"((size_t)PCB::running->body));
        __asm__ volatile("mv a1, %0"::"r"((size_t)PCB::running->args));
        __asm__ volatile("csrw sepc, %0"::"r"(ra));
        __asm__ volatile ("sret");
    }
}
    80003d3c:	00813403          	ld	s0,8(sp)
    80003d40:	01010113          	addi	sp,sp,16
    80003d44:	00008067          	ret
        __asm__ volatile("mv a0, %0"::"r"((size_t)PCB::running->body));
    80003d48:	0287b703          	ld	a4,40(a5)
    80003d4c:	00070513          	mv	a0,a4
        __asm__ volatile("mv a1, %0"::"r"((size_t)PCB::running->args));
    80003d50:	0307b783          	ld	a5,48(a5)
    80003d54:	00078593          	mv	a1,a5
        __asm__ volatile("csrw sepc, %0"::"r"(ra));
    80003d58:	00005797          	auipc	a5,0x5
    80003d5c:	c607b783          	ld	a5,-928(a5) # 800089b8 <_GLOBAL_OFFSET_TABLE_+0xb0>
    80003d60:	14179073          	csrw	sepc,a5
        __asm__ volatile ("sret");
    80003d64:	10200073          	sret
}
    80003d68:	fd5ff06f          	j	80003d3c <_ZN5Riscv10popSppSpieEv+0x28>

0000000080003d6c <_ZN5Riscv14setVirtualAddrEmmm>:

void Riscv::setVirtualAddr(size_t addr, size_t mask, size_t maskLeaf)
{
    80003d6c:	fb010113          	addi	sp,sp,-80
    80003d70:	04113423          	sd	ra,72(sp)
    80003d74:	04813023          	sd	s0,64(sp)
    80003d78:	02913c23          	sd	s1,56(sp)
    80003d7c:	03213823          	sd	s2,48(sp)
    80003d80:	03313423          	sd	s3,40(sp)
    80003d84:	03413023          	sd	s4,32(sp)
    80003d88:	01513c23          	sd	s5,24(sp)
    80003d8c:	01613823          	sd	s6,16(sp)
    80003d90:	01713423          	sd	s7,8(sp)
    80003d94:	05010413          	addi	s0,sp,80
    80003d98:	00058993          	mv	s3,a1
    80003d9c:	00060a13          	mv	s4,a2
    size_t l2 = addr >> 30;
    80003da0:	01e55b93          	srli	s7,a0,0x1e
    size_t l1 = (addr >> 21) & (0x1ff);
    80003da4:	01555b13          	srli	s6,a0,0x15
    80003da8:	1ffb7b13          	andi	s6,s6,511
    size_t l0 = (addr >> 12) & (0x1ff);
    80003dac:	00c55493          	srli	s1,a0,0xc
    80003db0:	1ff4f913          	andi	s2,s1,511
    size_t pmt2Desc = ((size_t*)mainPMT)[l2];
    80003db4:	003b9b93          	slli	s7,s7,0x3
    80003db8:	0000d797          	auipc	a5,0xd
    80003dbc:	cf07b783          	ld	a5,-784(a5) # 80010aa8 <_ZN5Riscv7mainPMTE>
    80003dc0:	017787b3          	add	a5,a5,s7
    80003dc4:	0007b503          	ld	a0,0(a5)
    void* pmt1 = nullptr;
    if(pmt2Desc == 0)
    80003dc8:	06050663          	beqz	a0,80003e34 <_ZN5Riscv14setVirtualAddrEmmm+0xc8>
        size_t newDesc = (((size_t)pmt1 >> 12) << 10) | mask;
        ((size_t*)mainPMT)[l2] = newDesc;
    }
    else
    {
        pmt1 = (void*)((pmt2Desc >> 10) << 12);
    80003dcc:	00a55513          	srli	a0,a0,0xa
    80003dd0:	00c51513          	slli	a0,a0,0xc
    }
    size_t pmt1Desc = ((size_t*)pmt1)[l1];
    80003dd4:	003b1a93          	slli	s5,s6,0x3
    80003dd8:	01550ab3          	add	s5,a0,s5
    80003ddc:	000ab503          	ld	a0,0(s5)
    void* pmt0 = nullptr;
    if(pmt1Desc == 0)
    80003de0:	0a050463          	beqz	a0,80003e88 <_ZN5Riscv14setVirtualAddrEmmm+0x11c>
        size_t newDesc = (((size_t)pmt0 >> 12) << 10) | mask;
        ((size_t*)pmt1)[l1] = newDesc;
    }
    else
    {
        pmt0 = (void*)((pmt1Desc >> 10) << 12);
    80003de4:	00a55513          	srli	a0,a0,0xa
    80003de8:	00c51513          	slli	a0,a0,0xc
    }

    size_t pmt0Desc = ((size_t*)pmt0)[l0];
    80003dec:	00391913          	slli	s2,s2,0x3
    80003df0:	01250533          	add	a0,a0,s2
    80003df4:	00053783          	ld	a5,0(a0)
    if(pmt0Desc == 0)
    80003df8:	00079863          	bnez	a5,80003e08 <_ZN5Riscv14setVirtualAddrEmmm+0x9c>
    {
        ((size_t*)pmt0)[l0] = ((addr >> 12) << 10) | maskLeaf;
    80003dfc:	00a49493          	slli	s1,s1,0xa
    80003e00:	0144ea33          	or	s4,s1,s4
    80003e04:	01453023          	sd	s4,0(a0)
    }
}
    80003e08:	04813083          	ld	ra,72(sp)
    80003e0c:	04013403          	ld	s0,64(sp)
    80003e10:	03813483          	ld	s1,56(sp)
    80003e14:	03013903          	ld	s2,48(sp)
    80003e18:	02813983          	ld	s3,40(sp)
    80003e1c:	02013a03          	ld	s4,32(sp)
    80003e20:	01813a83          	ld	s5,24(sp)
    80003e24:	01013b03          	ld	s6,16(sp)
    80003e28:	00813b83          	ld	s7,8(sp)
    80003e2c:	05010113          	addi	sp,sp,80
    80003e30:	00008067          	ret
        pmt1 = buddy_alloc((buddyAllocator*)riscvBuddy, 1);
    80003e34:	00100593          	li	a1,1
    80003e38:	0000d517          	auipc	a0,0xd
    80003e3c:	c7853503          	ld	a0,-904(a0) # 80010ab0 <_ZN5Riscv10riscvBuddyE>
    80003e40:	fffff097          	auipc	ra,0xfffff
    80003e44:	d14080e7          	jalr	-748(ra) # 80002b54 <_Z11buddy_allocP14buddyAllocatorm>
        for(int i = 0; i < NUM_OF_ENTRIES;i++)
    80003e48:	00000793          	li	a5,0
    80003e4c:	1ff00713          	li	a4,511
    80003e50:	00f74c63          	blt	a4,a5,80003e68 <_ZN5Riscv14setVirtualAddrEmmm+0xfc>
            ((size_t*)pmt1)[i] = 0;
    80003e54:	00379713          	slli	a4,a5,0x3
    80003e58:	00e50733          	add	a4,a0,a4
    80003e5c:	00073023          	sd	zero,0(a4)
        for(int i = 0; i < NUM_OF_ENTRIES;i++)
    80003e60:	0017879b          	addiw	a5,a5,1
    80003e64:	fe9ff06f          	j	80003e4c <_ZN5Riscv14setVirtualAddrEmmm+0xe0>
        size_t newDesc = (((size_t)pmt1 >> 12) << 10) | mask;
    80003e68:	00c55793          	srli	a5,a0,0xc
    80003e6c:	00a79793          	slli	a5,a5,0xa
    80003e70:	0137e7b3          	or	a5,a5,s3
        ((size_t*)mainPMT)[l2] = newDesc;
    80003e74:	0000d717          	auipc	a4,0xd
    80003e78:	c3473703          	ld	a4,-972(a4) # 80010aa8 <_ZN5Riscv7mainPMTE>
    80003e7c:	01770bb3          	add	s7,a4,s7
    80003e80:	00fbb023          	sd	a5,0(s7)
    80003e84:	f51ff06f          	j	80003dd4 <_ZN5Riscv14setVirtualAddrEmmm+0x68>
        pmt0 = buddy_alloc((buddyAllocator*)riscvBuddy, 1);
    80003e88:	00100593          	li	a1,1
    80003e8c:	0000d517          	auipc	a0,0xd
    80003e90:	c2453503          	ld	a0,-988(a0) # 80010ab0 <_ZN5Riscv10riscvBuddyE>
    80003e94:	fffff097          	auipc	ra,0xfffff
    80003e98:	cc0080e7          	jalr	-832(ra) # 80002b54 <_Z11buddy_allocP14buddyAllocatorm>
        for(int i = 0; i < NUM_OF_ENTRIES;i++)
    80003e9c:	00000793          	li	a5,0
    80003ea0:	1ff00713          	li	a4,511
    80003ea4:	00f74c63          	blt	a4,a5,80003ebc <_ZN5Riscv14setVirtualAddrEmmm+0x150>
            ((size_t*)pmt0)[i] = 0;
    80003ea8:	00379713          	slli	a4,a5,0x3
    80003eac:	00e50733          	add	a4,a0,a4
    80003eb0:	00073023          	sd	zero,0(a4)
        for(int i = 0; i < NUM_OF_ENTRIES;i++)
    80003eb4:	0017879b          	addiw	a5,a5,1
    80003eb8:	fe9ff06f          	j	80003ea0 <_ZN5Riscv14setVirtualAddrEmmm+0x134>
        size_t newDesc = (((size_t)pmt0 >> 12) << 10) | mask;
    80003ebc:	00c55793          	srli	a5,a0,0xc
    80003ec0:	00a79793          	slli	a5,a5,0xa
    80003ec4:	0137e9b3          	or	s3,a5,s3
        ((size_t*)pmt1)[l1] = newDesc;
    80003ec8:	013ab023          	sd	s3,0(s5)
    80003ecc:	f21ff06f          	j	80003dec <_ZN5Riscv14setVirtualAddrEmmm+0x80>

0000000080003ed0 <_ZN5Riscv19setVirtualAddrRangeEmmi>:
{
    80003ed0:	fd010113          	addi	sp,sp,-48
    80003ed4:	02113423          	sd	ra,40(sp)
    80003ed8:	02813023          	sd	s0,32(sp)
    80003edc:	00913c23          	sd	s1,24(sp)
    80003ee0:	01213823          	sd	s2,16(sp)
    80003ee4:	01313423          	sd	s3,8(sp)
    80003ee8:	03010413          	addi	s0,sp,48
    80003eec:	00050493          	mv	s1,a0
    80003ef0:	00058913          	mv	s2,a1
    80003ef4:	00060993          	mv	s3,a2
    for(size_t i = startAddr; i < endAddr; i+=BLOCK_NUM_OF_BYTES)
    80003ef8:	0324f263          	bgeu	s1,s2,80003f1c <_ZN5Riscv19setVirtualAddrRangeEmmi+0x4c>
        setVirtualAddr(i, VMEM_V_BIT, permission);
    80003efc:	00098613          	mv	a2,s3
    80003f00:	00100593          	li	a1,1
    80003f04:	00048513          	mv	a0,s1
    80003f08:	00000097          	auipc	ra,0x0
    80003f0c:	e64080e7          	jalr	-412(ra) # 80003d6c <_ZN5Riscv14setVirtualAddrEmmm>
    for(size_t i = startAddr; i < endAddr; i+=BLOCK_NUM_OF_BYTES)
    80003f10:	000017b7          	lui	a5,0x1
    80003f14:	00f484b3          	add	s1,s1,a5
    80003f18:	fe1ff06f          	j	80003ef8 <_ZN5Riscv19setVirtualAddrRangeEmmi+0x28>
}
    80003f1c:	02813083          	ld	ra,40(sp)
    80003f20:	02013403          	ld	s0,32(sp)
    80003f24:	01813483          	ld	s1,24(sp)
    80003f28:	01013903          	ld	s2,16(sp)
    80003f2c:	00813983          	ld	s3,8(sp)
    80003f30:	03010113          	addi	sp,sp,48
    80003f34:	00008067          	ret

0000000080003f38 <_ZN5Riscv10initSystemEv>:
{
    80003f38:	fc010113          	addi	sp,sp,-64
    80003f3c:	02113c23          	sd	ra,56(sp)
    80003f40:	02813823          	sd	s0,48(sp)
    80003f44:	02913423          	sd	s1,40(sp)
    80003f48:	03213023          	sd	s2,32(sp)
    80003f4c:	01313c23          	sd	s3,24(sp)
    80003f50:	01413823          	sd	s4,16(sp)
    80003f54:	01513423          	sd	s5,8(sp)
    80003f58:	01613023          	sd	s6,0(sp)
    80003f5c:	04010413          	addi	s0,sp,64
    w_stvec((uint64)&Riscv::supervisorTrap);
    80003f60:	00005797          	auipc	a5,0x5
    80003f64:	9d07b783          	ld	a5,-1584(a5) # 80008930 <_GLOBAL_OFFSET_TABLE_+0x28>
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80003f68:	10579073          	csrw	stvec,a5
    riscvBuddy = (void*)getBlockAddr((size_t)HEAP_START_ADDR);
    80003f6c:	00005997          	auipc	s3,0x5
    80003f70:	9b49b983          	ld	s3,-1612(s3) # 80008920 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003f74:	0009b503          	ld	a0,0(s3)
    80003f78:	fffff097          	auipc	ra,0xfffff
    80003f7c:	9dc080e7          	jalr	-1572(ra) # 80002954 <_Z12getBlockAddrm>
    80003f80:	0000d917          	auipc	s2,0xd
    80003f84:	b2090913          	addi	s2,s2,-1248 # 80010aa0 <_ZN5Riscv12finishSystemE>
    80003f88:	00a93823          	sd	a0,16(s2)
    size_t heapStartBlock = getBlockAddr((size_t)HEAP_START_ADDR);
    80003f8c:	0009b503          	ld	a0,0(s3)
    80003f90:	fffff097          	auipc	ra,0xfffff
    80003f94:	9c4080e7          	jalr	-1596(ra) # 80002954 <_Z12getBlockAddrm>
    void* newStartAddr = (void*)(heapStartBlock + numOfBlocks*BLOCK_NUM_OF_BYTES);
    80003f98:	010017b7          	lui	a5,0x1001
    80003f9c:	00f504b3          	add	s1,a0,a5
    MemoryAllocator::initMemory(newStartAddr);
    80003fa0:	00048513          	mv	a0,s1
    80003fa4:	00000097          	auipc	ra,0x0
    80003fa8:	67c080e7          	jalr	1660(ra) # 80004620 <_ZN15MemoryAllocator10initMemoryEPv>
    kmem_init((void*)HEAP_START_ADDR, numOfBlocks);
    80003fac:	000015b7          	lui	a1,0x1
    80003fb0:	00158593          	addi	a1,a1,1 # 1001 <_entry-0x7fffefff>
    80003fb4:	0009b503          	ld	a0,0(s3)
    80003fb8:	ffffe097          	auipc	ra,0xffffe
    80003fbc:	c28080e7          	jalr	-984(ra) # 80001be0 <_Z9kmem_initPvi>
    pcbCache = kmem_cache_create("Cache of PCBs", sizeof(PCB), nullptr, nullptr);
    80003fc0:	00000693          	li	a3,0
    80003fc4:	00000613          	li	a2,0
    80003fc8:	06000593          	li	a1,96
    80003fcc:	00004517          	auipc	a0,0x4
    80003fd0:	3c450513          	addi	a0,a0,964 # 80008390 <CONSOLE_STATUS+0x380>
    80003fd4:	ffffe097          	auipc	ra,0xffffe
    80003fd8:	d7c080e7          	jalr	-644(ra) # 80001d50 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80003fdc:	00a93c23          	sd	a0,24(s2)
    semaphoreCache = kmem_cache_create("Cache of KSemaphore", sizeof(KSemaphore), nullptr, nullptr);
    80003fe0:	00000693          	li	a3,0
    80003fe4:	00000613          	li	a2,0
    80003fe8:	01800593          	li	a1,24
    80003fec:	00004517          	auipc	a0,0x4
    80003ff0:	3b450513          	addi	a0,a0,948 # 800083a0 <CONSOLE_STATUS+0x390>
    80003ff4:	ffffe097          	auipc	ra,0xffffe
    80003ff8:	d5c080e7          	jalr	-676(ra) # 80001d50 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80003ffc:	02a93023          	sd	a0,32(s2)
    PCB::initialize();
    80004000:	ffffe097          	auipc	ra,0xffffe
    80004004:	54c080e7          	jalr	1356(ra) # 8000254c <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80004008:	fffff097          	auipc	ra,0xfffff
    8000400c:	fd0080e7          	jalr	-48(ra) # 80002fd8 <_ZN8KConsole10initializeEv>
    mainPMT = buddy_alloc((buddyAllocator*)riscvBuddy, 1);
    80004010:	00100593          	li	a1,1
    80004014:	01093503          	ld	a0,16(s2)
    80004018:	fffff097          	auipc	ra,0xfffff
    8000401c:	b3c080e7          	jalr	-1220(ra) # 80002b54 <_Z11buddy_allocP14buddyAllocatorm>
    80004020:	00a93423          	sd	a0,8(s2)
    for(size_t i = 0; i < NUM_OF_ENTRIES;i++)
    80004024:	00000793          	li	a5,0
    80004028:	1ff00713          	li	a4,511
    8000402c:	02f76063          	bltu	a4,a5,8000404c <_ZN5Riscv10initSystemEv+0x114>
        ((size_t*)mainPMT)[i] = 0;
    80004030:	00379693          	slli	a3,a5,0x3
    80004034:	0000d717          	auipc	a4,0xd
    80004038:	a7473703          	ld	a4,-1420(a4) # 80010aa8 <_ZN5Riscv7mainPMTE>
    8000403c:	00d70733          	add	a4,a4,a3
    80004040:	00073023          	sd	zero,0(a4)
    for(size_t i = 0; i < NUM_OF_ENTRIES;i++)
    80004044:	00178793          	addi	a5,a5,1 # 1001001 <_entry-0x7effefff>
    80004048:	fe1ff06f          	j	80004028 <_ZN5Riscv10initSystemEv+0xf0>
    KConsole::trapPrintStringInt("main PMT ", (size_t)mainPMT,16);
    8000404c:	0000d917          	auipc	s2,0xd
    80004050:	a5490913          	addi	s2,s2,-1452 # 80010aa0 <_ZN5Riscv12finishSystemE>
    80004054:	01000613          	li	a2,16
    80004058:	00893583          	ld	a1,8(s2)
    8000405c:	00004517          	auipc	a0,0x4
    80004060:	35c50513          	addi	a0,a0,860 # 800083b8 <CONSOLE_STATUS+0x3a8>
    80004064:	fffff097          	auipc	ra,0xfffff
    80004068:	500080e7          	jalr	1280(ra) # 80003564 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    uint64 kTextStart = (uint64)(&kernelTextStart);
    8000406c:	00005b17          	auipc	s6,0x5
    80004070:	8ccb3b03          	ld	s6,-1844(s6) # 80008938 <_GLOBAL_OFFSET_TABLE_+0x30>
    uint64 kDataStart = (uint64)(&kernelDataStart);
    80004074:	00005a97          	auipc	s5,0x5
    80004078:	8ccaba83          	ld	s5,-1844(s5) # 80008940 <_GLOBAL_OFFSET_TABLE_+0x38>
    uint64 uTextStart = (uint64)(&userTextStart);
    8000407c:	00005997          	auipc	s3,0x5
    80004080:	91c9b983          	ld	s3,-1764(s3) # 80008998 <_GLOBAL_OFFSET_TABLE_+0x90>
    uint64 uDataStart = (uint64)(&userDataStart);
    80004084:	00005a17          	auipc	s4,0x5
    80004088:	93ca3a03          	ld	s4,-1732(s4) # 800089c0 <_GLOBAL_OFFSET_TABLE_+0xb8>
    setVirtualAddrRange(programStartAddr, kTextStart, KERNEL_RX); // before kernel instructions
    8000408c:	00b00613          	li	a2,11
    80004090:	000b0593          	mv	a1,s6
    80004094:	00005517          	auipc	a0,0x5
    80004098:	84453503          	ld	a0,-1980(a0) # 800088d8 <_ZN5Riscv16programStartAddrE>
    8000409c:	00000097          	auipc	ra,0x0
    800040a0:	e34080e7          	jalr	-460(ra) # 80003ed0 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange(kTextStart, kDataStart,KERNEL_RX); // kernel instructions
    800040a4:	00b00613          	li	a2,11
    800040a8:	000a8593          	mv	a1,s5
    800040ac:	000b0513          	mv	a0,s6
    800040b0:	00000097          	auipc	ra,0x0
    800040b4:	e20080e7          	jalr	-480(ra) # 80003ed0 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)(&kernelDataStart), uTextStart, KERNEL_RW); // kernel data
    800040b8:	00700613          	li	a2,7
    800040bc:	00098593          	mv	a1,s3
    800040c0:	000a8513          	mv	a0,s5
    800040c4:	00000097          	auipc	ra,0x0
    800040c8:	e0c080e7          	jalr	-500(ra) # 80003ed0 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)(&userTextStart), uDataStart, USER_RX); //user instructions
    800040cc:	01b00613          	li	a2,27
    800040d0:	000a0593          	mv	a1,s4
    800040d4:	00098513          	mv	a0,s3
    800040d8:	00000097          	auipc	ra,0x0
    800040dc:	df8080e7          	jalr	-520(ra) # 80003ed0 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)(&userDataStart), (size_t)HEAP_START_ADDR, USER_RW); // user data
    800040e0:	00005997          	auipc	s3,0x5
    800040e4:	8409b983          	ld	s3,-1984(s3) # 80008920 <_GLOBAL_OFFSET_TABLE_+0x18>
    800040e8:	01700613          	li	a2,23
    800040ec:	0009b583          	ld	a1,0(s3)
    800040f0:	000a0513          	mv	a0,s4
    800040f4:	00000097          	auipc	ra,0x0
    800040f8:	ddc080e7          	jalr	-548(ra) # 80003ed0 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)HEAP_START_ADDR, (size_t)newStartAddr, KERNEL_RW); // kernel heap data
    800040fc:	00700613          	li	a2,7
    80004100:	00048593          	mv	a1,s1
    80004104:	0009b503          	ld	a0,0(s3)
    80004108:	00000097          	auipc	ra,0x0
    8000410c:	dc8080e7          	jalr	-568(ra) # 80003ed0 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)newStartAddr, (size_t)HEAP_END_ADDR + 1,USER_RW); // user heap data
    80004110:	00005797          	auipc	a5,0x5
    80004114:	8987b783          	ld	a5,-1896(a5) # 800089a8 <_GLOBAL_OFFSET_TABLE_+0xa0>
    80004118:	0007b583          	ld	a1,0(a5)
    8000411c:	01700613          	li	a2,23
    80004120:	00158593          	addi	a1,a1,1
    80004124:	00048513          	mv	a0,s1
    80004128:	00000097          	auipc	ra,0x0
    8000412c:	da8080e7          	jalr	-600(ra) # 80003ed0 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddr((size_t)CONSOLE_RX_DATA,0x1,0xf);
    80004130:	00f00613          	li	a2,15
    80004134:	00100593          	li	a1,1
    80004138:	00004797          	auipc	a5,0x4
    8000413c:	7d87b783          	ld	a5,2008(a5) # 80008910 <_GLOBAL_OFFSET_TABLE_+0x8>
    80004140:	0007b503          	ld	a0,0(a5)
    80004144:	00000097          	auipc	ra,0x0
    80004148:	c28080e7          	jalr	-984(ra) # 80003d6c <_ZN5Riscv14setVirtualAddrEmmm>
    setVirtualAddr((size_t)CONSOLE_TX_DATA,0x1,0xf);
    8000414c:	00f00613          	li	a2,15
    80004150:	00100593          	li	a1,1
    80004154:	00004797          	auipc	a5,0x4
    80004158:	7fc7b783          	ld	a5,2044(a5) # 80008950 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000415c:	0007b503          	ld	a0,0(a5)
    80004160:	00000097          	auipc	ra,0x0
    80004164:	c0c080e7          	jalr	-1012(ra) # 80003d6c <_ZN5Riscv14setVirtualAddrEmmm>
    setVirtualAddr((size_t)CONSOLE_STATUS,0x1,0xf);
    80004168:	00f00613          	li	a2,15
    8000416c:	00100593          	li	a1,1
    80004170:	00004797          	auipc	a5,0x4
    80004174:	7a87b783          	ld	a5,1960(a5) # 80008918 <_GLOBAL_OFFSET_TABLE_+0x10>
    80004178:	0007b503          	ld	a0,0(a5)
    8000417c:	00000097          	auipc	ra,0x0
    80004180:	bf0080e7          	jalr	-1040(ra) # 80003d6c <_ZN5Riscv14setVirtualAddrEmmm>
    setVirtualAddr(0xc201004,0x1,0xf);
    80004184:	00f00613          	li	a2,15
    80004188:	00100593          	li	a1,1
    8000418c:	0c201537          	lui	a0,0xc201
    80004190:	00450513          	addi	a0,a0,4 # c201004 <_entry-0x73dfeffc>
    80004194:	00000097          	auipc	ra,0x0
    80004198:	bd8080e7          	jalr	-1064(ra) # 80003d6c <_ZN5Riscv14setVirtualAddrEmmm>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    8000419c:	000407b7          	lui	a5,0x40
    800041a0:	1007a073          	csrs	sstatus,a5
    size_t satp = ((size_t)1 << 63) | ((size_t)mainPMT >> 12);
    800041a4:	00893783          	ld	a5,8(s2)
    800041a8:	00c7d793          	srli	a5,a5,0xc
    800041ac:	fff00713          	li	a4,-1
    800041b0:	03f71713          	slli	a4,a4,0x3f
    800041b4:	00e7e7b3          	or	a5,a5,a4
    __asm__ volatile("csrw satp, %0" : :"r"(satp));
    800041b8:	18079073          	csrw	satp,a5
}
    800041bc:	03813083          	ld	ra,56(sp)
    800041c0:	03013403          	ld	s0,48(sp)
    800041c4:	02813483          	ld	s1,40(sp)
    800041c8:	02013903          	ld	s2,32(sp)
    800041cc:	01813983          	ld	s3,24(sp)
    800041d0:	01013a03          	ld	s4,16(sp)
    800041d4:	00813a83          	ld	s5,8(sp)
    800041d8:	00013b03          	ld	s6,0(sp)
    800041dc:	04010113          	addi	sp,sp,64
    800041e0:	00008067          	ret

00000000800041e4 <_ZN5Riscv10kernelMainEv>:
    if(kernelMainCalled) return;
    800041e4:	0000d797          	auipc	a5,0xd
    800041e8:	8e47c783          	lbu	a5,-1820(a5) # 80010ac8 <_ZN5Riscv16kernelMainCalledE>
    800041ec:	00078463          	beqz	a5,800041f4 <_ZN5Riscv10kernelMainEv+0x10>
    800041f0:	00008067          	ret
{
    800041f4:	ff010113          	addi	sp,sp,-16
    800041f8:	00113423          	sd	ra,8(sp)
    800041fc:	00813023          	sd	s0,0(sp)
    80004200:	01010413          	addi	s0,sp,16
    kernelMainCalled = true;
    80004204:	00100793          	li	a5,1
    80004208:	0000d717          	auipc	a4,0xd
    8000420c:	8cf70023          	sb	a5,-1856(a4) # 80010ac8 <_ZN5Riscv16kernelMainCalledE>
    initSystem();
    80004210:	00000097          	auipc	ra,0x0
    80004214:	d28080e7          	jalr	-728(ra) # 80003f38 <_ZN5Riscv10initSystemEv>
    enableInterrupts();
    80004218:	00000097          	auipc	ra,0x0
    8000421c:	a28080e7          	jalr	-1496(ra) # 80003c40 <_ZN5Riscv16enableInterruptsEv>
    while(!PCB::userPCB->isFinished())
    80004220:	00004797          	auipc	a5,0x4
    80004224:	7687b783          	ld	a5,1896(a5) # 80008988 <_GLOBAL_OFFSET_TABLE_+0x80>
    80004228:	0007b503          	ld	a0,0(a5)
    8000422c:	ffffe097          	auipc	ra,0xffffe
    80004230:	448080e7          	jalr	1096(ra) # 80002674 <_ZN3PCB10isFinishedEv>
    80004234:	00051863          	bnez	a0,80004244 <_ZN5Riscv10kernelMainEv+0x60>
        thread_dispatch_kernel();
    80004238:	ffffd097          	auipc	ra,0xffffd
    8000423c:	000080e7          	jalr	ra # 80001238 <_Z22thread_dispatch_kernelv>
    while(!PCB::userPCB->isFinished())
    80004240:	fe1ff06f          	j	80004220 <_ZN5Riscv10kernelMainEv+0x3c>
    endSystem();
    80004244:	00000097          	auipc	ra,0x0
    80004248:	a3c080e7          	jalr	-1476(ra) # 80003c80 <_ZN5Riscv9endSystemEv>
}
    8000424c:	00813083          	ld	ra,8(sp)
    80004250:	00013403          	ld	s0,0(sp)
    80004254:	01010113          	addi	sp,sp,16
    80004258:	00008067          	ret

000000008000425c <_ZN5Riscv14addVirtualAddrEm>:

void Riscv::addVirtualAddr(size_t addr)
{
    8000425c:	ff010113          	addi	sp,sp,-16
    80004260:	00113423          	sd	ra,8(sp)
    80004264:	00813023          	sd	s0,0(sp)
    80004268:	01010413          	addi	s0,sp,16
    setVirtualAddr(addr, 0x1, 0xf);
    8000426c:	00f00613          	li	a2,15
    80004270:	00100593          	li	a1,1
    80004274:	00000097          	auipc	ra,0x0
    80004278:	af8080e7          	jalr	-1288(ra) # 80003d6c <_ZN5Riscv14setVirtualAddrEmmm>
}
    8000427c:	00813083          	ld	ra,8(sp)
    80004280:	00013403          	ld	s0,0(sp)
    80004284:	01010113          	addi	sp,sp,16
    80004288:	00008067          	ret

000000008000428c <_ZN5Riscv19addVirtualAddrInstrEm>:

void Riscv::addVirtualAddrInstr(size_t addr)
{
    8000428c:	ff010113          	addi	sp,sp,-16
    80004290:	00113423          	sd	ra,8(sp)
    80004294:	00813023          	sd	s0,0(sp)
    80004298:	01010413          	addi	s0,sp,16
    setVirtualAddr(addr, 0x1, 0xf);
    8000429c:	00f00613          	li	a2,15
    800042a0:	00100593          	li	a1,1
    800042a4:	00000097          	auipc	ra,0x0
    800042a8:	ac8080e7          	jalr	-1336(ra) # 80003d6c <_ZN5Riscv14setVirtualAddrEmmm>
}
    800042ac:	00813083          	ld	ra,8(sp)
    800042b0:	00013403          	ld	s0,0(sp)
    800042b4:	01010113          	addi	sp,sp,16
    800042b8:	00008067          	ret

00000000800042bc <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    800042bc:	ff010113          	addi	sp,sp,-16
    800042c0:	00813423          	sd	s0,8(sp)
    800042c4:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    800042c8:	00200793          	li	a5,2
    800042cc:	1047b073          	csrc	sie,a5
}
    800042d0:	00813403          	ld	s0,8(sp)
    800042d4:	01010113          	addi	sp,sp,16
    800042d8:	00008067          	ret

00000000800042dc <_ZN5Riscv13w_a0_sscratchEv>:

void Riscv::w_a0_sscratch()
{
    800042dc:	ff010113          	addi	sp,sp,-16
    800042e0:	00813423          	sd	s0,8(sp)
    800042e4:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    800042e8:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    800042ec:	00004717          	auipc	a4,0x4
    800042f0:	6b473703          	ld	a4,1716(a4) # 800089a0 <_GLOBAL_OFFSET_TABLE_+0x98>
    800042f4:	00073703          	ld	a4,0(a4)
    800042f8:	01073703          	ld	a4,16(a4)
    800042fc:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    80004300:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80004304:	00078593          	mv	a1,a5
}
    80004308:	00813403          	ld	s0,8(sp)
    8000430c:	01010113          	addi	sp,sp,16
    80004310:	00008067          	ret

0000000080004314 <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    80004314:	ff010113          	addi	sp,sp,-16
    80004318:	00813423          	sd	s0,8(sp)
    8000431c:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    80004320:	00004797          	auipc	a5,0x4
    80004324:	6807b783          	ld	a5,1664(a5) # 800089a0 <_GLOBAL_OFFSET_TABLE_+0x98>
    80004328:	0007b783          	ld	a5,0(a5)
    8000432c:	0007c783          	lbu	a5,0(a5)
    80004330:	00078c63          	beqz	a5,80004348 <_ZN5Riscv14changePrivModeEv+0x34>
    80004334:	10000793          	li	a5,256
    80004338:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    8000433c:	00813403          	ld	s0,8(sp)
    80004340:	01010113          	addi	sp,sp,16
    80004344:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80004348:	10000793          	li	a5,256
    8000434c:	1007b073          	csrc	sstatus,a5
    80004350:	fedff06f          	j	8000433c <_ZN5Riscv14changePrivModeEv+0x28>

0000000080004354 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80004354:	f9010113          	addi	sp,sp,-112
    80004358:	06113423          	sd	ra,104(sp)
    8000435c:	06813023          	sd	s0,96(sp)
    80004360:	04913c23          	sd	s1,88(sp)
    80004364:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    80004368:	00070713          	mv	a4,a4
    8000436c:	00004797          	auipc	a5,0x4
    80004370:	65c7b783          	ld	a5,1628(a5) # 800089c8 <_GLOBAL_OFFSET_TABLE_+0xc0>
    80004374:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    80004378:	00004797          	auipc	a5,0x4
    8000437c:	6287b783          	ld	a5,1576(a5) # 800089a0 <_GLOBAL_OFFSET_TABLE_+0x98>
    80004380:	0007b783          	ld	a5,0(a5)
    80004384:	14002773          	csrr	a4,sscratch
    80004388:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    8000438c:	142027f3          	csrr	a5,scause
    80004390:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80004394:	fb843783          	ld	a5,-72(s0)

    static const size_t storePF = 15;
    static const size_t loadPF = 13;
    static const size_t instrPF = 12;

    switch(scause)
    80004398:	00f00713          	li	a4,15
    8000439c:	02f76863          	bltu	a4,a5,800043cc <_ZN5Riscv20handleSupervisorTrapEv+0x78>
    800043a0:	00200713          	li	a4,2
    800043a4:	10e7e863          	bltu	a5,a4,800044b4 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
    800043a8:	00f00713          	li	a4,15
    800043ac:	10f76463          	bltu	a4,a5,800044b4 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
    800043b0:	00279793          	slli	a5,a5,0x2
    800043b4:	00004717          	auipc	a4,0x4
    800043b8:	01070713          	addi	a4,a4,16 # 800083c4 <CONSOLE_STATUS+0x3b4>
    800043bc:	00e787b3          	add	a5,a5,a4
    800043c0:	0007a783          	lw	a5,0(a5)
    800043c4:	00e787b3          	add	a5,a5,a4
    800043c8:	00078067          	jr	a5
    800043cc:	fff00713          	li	a4,-1
    800043d0:	03f71713          	slli	a4,a4,0x3f
    800043d4:	00170713          	addi	a4,a4,1
    800043d8:	04e78a63          	beq	a5,a4,8000442c <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
    800043dc:	fff00713          	li	a4,-1
    800043e0:	03f71713          	slli	a4,a4,0x3f
    800043e4:	00970713          	addi	a4,a4,9
    800043e8:	0ce79663          	bne	a5,a4,800044b4 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            changePrivMode();
            break;
        }
        case hwInterrupt:
        {
            KConsole::getCharactersFromConsole();
    800043ec:	fffff097          	auipc	ra,0xfffff
    800043f0:	d0c080e7          	jalr	-756(ra) # 800030f8 <_ZN8KConsole24getCharactersFromConsoleEv>
            plic_complete(plic_claim());
    800043f4:	00002097          	auipc	ra,0x2
    800043f8:	890080e7          	jalr	-1904(ra) # 80005c84 <plic_claim>
    800043fc:	00002097          	auipc	ra,0x2
    80004400:	8c0080e7          	jalr	-1856(ra) # 80005cbc <plic_complete>
            break;
    80004404:	0b00006f          	j	800044b4 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            __asm__ volatile("csrr %0, stval":"=r"(addrPF));
    80004408:	14302573          	csrr	a0,stval
            addVirtualAddr(addrPF);
    8000440c:	00000097          	auipc	ra,0x0
    80004410:	e50080e7          	jalr	-432(ra) # 8000425c <_ZN5Riscv14addVirtualAddrEm>
            __asm__ volatile("csrr %0, stval":"=r"(addrPF));
    80004414:	14302573          	csrr	a0,stval
            addVirtualAddr(addrPF);
    80004418:	00000097          	auipc	ra,0x0
    8000441c:	e44080e7          	jalr	-444(ra) # 8000425c <_ZN5Riscv14addVirtualAddrEm>
            __asm__ volatile("csrr %0, stval":"=r"(addrPF));
    80004420:	14302573          	csrr	a0,stval
            addVirtualAddrInstr(addrPF);
    80004424:	00000097          	auipc	ra,0x0
    80004428:	e68080e7          	jalr	-408(ra) # 8000428c <_ZN5Riscv19addVirtualAddrInstrEm>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    8000442c:	141027f3          	csrr	a5,sepc
    80004430:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80004434:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80004438:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    8000443c:	100027f3          	csrr	a5,sstatus
    80004440:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80004444:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80004448:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    8000444c:	00200793          	li	a5,2
    80004450:	1447b073          	csrc	sip,a5
            totalTime++;
    80004454:	0000c717          	auipc	a4,0xc
    80004458:	64c70713          	addi	a4,a4,1612 # 80010aa0 <_ZN5Riscv12finishSystemE>
    8000445c:	03073783          	ld	a5,48(a4)
    80004460:	00178793          	addi	a5,a5,1
    80004464:	02f73823          	sd	a5,48(a4)
            PCB::timeSliceCounter++;
    80004468:	00004497          	auipc	s1,0x4
    8000446c:	4f04b483          	ld	s1,1264(s1) # 80008958 <_GLOBAL_OFFSET_TABLE_+0x50>
    80004470:	0004b783          	ld	a5,0(s1)
    80004474:	00178793          	addi	a5,a5,1
    80004478:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    8000447c:	fffff097          	auipc	ra,0xfffff
    80004480:	1b8080e7          	jalr	440(ra) # 80003634 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80004484:	00004797          	auipc	a5,0x4
    80004488:	51c7b783          	ld	a5,1308(a5) # 800089a0 <_GLOBAL_OFFSET_TABLE_+0x98>
    8000448c:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80004490:	0187b783          	ld	a5,24(a5)
    80004494:	0004b703          	ld	a4,0(s1)
    80004498:	02f77863          	bgeu	a4,a5,800044c8 <_ZN5Riscv20handleSupervisorTrapEv+0x174>
            Riscv::w_sstatus(sstatus);
    8000449c:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800044a0:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    800044a4:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800044a8:	14179073          	csrw	sepc,a5
            changePrivMode();
    800044ac:	00000097          	auipc	ra,0x0
    800044b0:	e68080e7          	jalr	-408(ra) # 80004314 <_ZN5Riscv14changePrivModeEv>
            Riscv::w_sepc(sepc);
            changePrivMode();
            break;
        }
    }
}
    800044b4:	06813083          	ld	ra,104(sp)
    800044b8:	06013403          	ld	s0,96(sp)
    800044bc:	05813483          	ld	s1,88(sp)
    800044c0:	07010113          	addi	sp,sp,112
    800044c4:	00008067          	ret
                PCB::timeSliceCounter = 0;
    800044c8:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    800044cc:	ffffe097          	auipc	ra,0xffffe
    800044d0:	fcc080e7          	jalr	-52(ra) # 80002498 <_ZN3PCB8dispatchEv>
    800044d4:	fc9ff06f          	j	8000449c <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            PCB::threadExitHandler();
    800044d8:	ffffe097          	auipc	ra,0xffffe
    800044dc:	1c0080e7          	jalr	448(ra) # 80002698 <_ZN3PCB17threadExitHandlerEv>
            break;
    800044e0:	fd5ff06f          	j	800044b4 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    800044e4:	ffffe097          	auipc	ra,0xffffe
    800044e8:	1b4080e7          	jalr	436(ra) # 80002698 <_ZN3PCB17threadExitHandlerEv>
            break;
    800044ec:	fc9ff06f          	j	800044b4 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    800044f0:	ffffe097          	auipc	ra,0xffffe
    800044f4:	1a8080e7          	jalr	424(ra) # 80002698 <_ZN3PCB17threadExitHandlerEv>
            break;
    800044f8:	fbdff06f          	j	800044b4 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    800044fc:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80004500:	14102773          	csrr	a4,sepc
    80004504:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80004508:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    8000450c:	00470713          	addi	a4,a4,4
    80004510:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80004514:	10002773          	csrr	a4,sstatus
    80004518:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    8000451c:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80004520:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80004524:	04300713          	li	a4,67
    80004528:	02f76463          	bltu	a4,a5,80004550 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
    8000452c:	00279793          	slli	a5,a5,0x2
    80004530:	00004717          	auipc	a4,0x4
    80004534:	ed470713          	addi	a4,a4,-300 # 80008404 <CONSOLE_STATUS+0x3f4>
    80004538:	00e787b3          	add	a5,a5,a4
    8000453c:	0007a783          	lw	a5,0(a5)
    80004540:	00e787b3          	add	a5,a5,a4
    80004544:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    80004548:	00000097          	auipc	ra,0x0
    8000454c:	4f0080e7          	jalr	1264(ra) # 80004a38 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80004550:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80004554:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80004558:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    8000455c:	14179073          	csrw	sepc,a5
            changePrivMode();
    80004560:	00000097          	auipc	ra,0x0
    80004564:	db4080e7          	jalr	-588(ra) # 80004314 <_ZN5Riscv14changePrivModeEv>
}
    80004568:	f4dff06f          	j	800044b4 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
                    MemoryAllocator::memFreeHandler();
    8000456c:	00000097          	auipc	ra,0x0
    80004570:	53c080e7          	jalr	1340(ra) # 80004aa8 <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80004574:	fddff06f          	j	80004550 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadMakePCBHandler();
    80004578:	ffffe097          	auipc	ra,0xffffe
    8000457c:	2e8080e7          	jalr	744(ra) # 80002860 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80004580:	fd1ff06f          	j	80004550 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadCreateHandler();
    80004584:	ffffe097          	auipc	ra,0xffffe
    80004588:	1f4080e7          	jalr	500(ra) # 80002778 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    8000458c:	fc5ff06f          	j	80004550 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadStartHandler();
    80004590:	ffffe097          	auipc	ra,0xffffe
    80004594:	28c080e7          	jalr	652(ra) # 8000281c <_ZN3PCB18threadStartHandlerEv>
                    break;
    80004598:	fb9ff06f          	j	80004550 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadDispatchHandler();
    8000459c:	ffffe097          	auipc	ra,0xffffe
    800045a0:	148080e7          	jalr	328(ra) # 800026e4 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    800045a4:	fadff06f          	j	80004550 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadExitHandler();
    800045a8:	ffffe097          	auipc	ra,0xffffe
    800045ac:	0f0080e7          	jalr	240(ra) # 80002698 <_ZN3PCB17threadExitHandlerEv>
                    break;
    800045b0:	fa1ff06f          	j	80004550 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadSleepHandler();
    800045b4:	ffffe097          	auipc	ra,0xffffe
    800045b8:	160080e7          	jalr	352(ra) # 80002714 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    800045bc:	f95ff06f          	j	80004550 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadDelPCBHandler();
    800045c0:	ffffe097          	auipc	ra,0xffffe
    800045c4:	338080e7          	jalr	824(ra) # 800028f8 <_ZN3PCB19threadDelPCBHandlerEv>
                    break;
    800045c8:	f89ff06f          	j	80004550 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semOpenHandler();
    800045cc:	00001097          	auipc	ra,0x1
    800045d0:	cc4080e7          	jalr	-828(ra) # 80005290 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    800045d4:	f7dff06f          	j	80004550 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semWaitHandler();
    800045d8:	00001097          	auipc	ra,0x1
    800045dc:	d6c080e7          	jalr	-660(ra) # 80005344 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    800045e0:	f71ff06f          	j	80004550 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semSignalHandler();
    800045e4:	00001097          	auipc	ra,0x1
    800045e8:	db4080e7          	jalr	-588(ra) # 80005398 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    800045ec:	f65ff06f          	j	80004550 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semCloseHandler();
    800045f0:	00001097          	auipc	ra,0x1
    800045f4:	dec080e7          	jalr	-532(ra) # 800053dc <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    800045f8:	f59ff06f          	j	80004550 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KConsole::getcHandler();
    800045fc:	fffff097          	auipc	ra,0xfffff
    80004600:	d00080e7          	jalr	-768(ra) # 800032fc <_ZN8KConsole11getcHandlerEv>
                    break;
    80004604:	f4dff06f          	j	80004550 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KConsole::putcHandler();
    80004608:	fffff097          	auipc	ra,0xfffff
    8000460c:	cc4080e7          	jalr	-828(ra) # 800032cc <_ZN8KConsole11putcHandlerEv>
                    break;
    80004610:	f41ff06f          	j	80004550 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KConsole::getCharHandler();
    80004614:	fffff097          	auipc	ra,0xfffff
    80004618:	e44080e7          	jalr	-444(ra) # 80003458 <_ZN8KConsole14getCharHandlerEv>
                    break;
    8000461c:	f35ff06f          	j	80004550 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>

0000000080004620 <_ZN15MemoryAllocator10initMemoryEPv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory(void* startAddr)
{
    80004620:	ff010113          	addi	sp,sp,-16
    80004624:	00813423          	sd	s0,8(sp)
    80004628:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    8000462c:	0000c717          	auipc	a4,0xc
    80004630:	4ac72703          	lw	a4,1196(a4) # 80010ad8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004634:	00100793          	li	a5,1
    80004638:	02f70c63          	beq	a4,a5,80004670 <_ZN15MemoryAllocator10initMemoryEPv+0x50>
        return;
    memoryInitiliaized = 1;
    8000463c:	0000c797          	auipc	a5,0xc
    80004640:	49c78793          	addi	a5,a5,1180 # 80010ad8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004644:	00100713          	li	a4,1
    80004648:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    8000464c:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)startAddr;
    80004650:	00a7b823          	sd	a0,16(a5)
    headFree->next = 0;
    80004654:	00053423          	sd	zero,8(a0)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)startAddr  + 1 - sizeof(BlockHeader));
    80004658:	00004797          	auipc	a5,0x4
    8000465c:	3507b783          	ld	a5,848(a5) # 800089a8 <_GLOBAL_OFFSET_TABLE_+0xa0>
    80004660:	0007b783          	ld	a5,0(a5)
    80004664:	40a787b3          	sub	a5,a5,a0
    80004668:	ff178793          	addi	a5,a5,-15
    8000466c:	00f53023          	sd	a5,0(a0)
}
    80004670:	00813403          	ld	s0,8(sp)
    80004674:	01010113          	addi	sp,sp,16
    80004678:	00008067          	ret

000000008000467c <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>:

void MemoryAllocator::insertAllFragment(void *addr, size_t size, void* nxtAddr)
{
    8000467c:	ff010113          	addi	sp,sp,-16
    80004680:	00813423          	sd	s0,8(sp)
    80004684:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    80004688:	0000c797          	auipc	a5,0xc
    8000468c:	4507a783          	lw	a5,1104(a5) # 80010ad8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004690:	02078a63          	beqz	a5,800046c4 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        return;
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004694:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    80004698:	00b53023          	sd	a1,0(a0)
    if(headAllocated == 0)
    8000469c:	0000c797          	auipc	a5,0xc
    800046a0:	4447b783          	ld	a5,1092(a5) # 80010ae0 <_ZN15MemoryAllocator13headAllocatedE>
    800046a4:	02078663          	beqz	a5,800046d0 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x54>
    {
        headAllocated = newAllocated;
    }
    else if(nxtAddr <= HEAP_END_ADDR)
    800046a8:	00004717          	auipc	a4,0x4
    800046ac:	30073703          	ld	a4,768(a4) # 800089a8 <_GLOBAL_OFFSET_TABLE_+0xa0>
    800046b0:	00073703          	ld	a4,0(a4)
    800046b4:	02c76463          	bltu	a4,a2,800046dc <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>
    {
        BlockHeader * allFrag = (BlockHeader*)nxtAddr;
        newAllocated->next = allFrag->next;
    800046b8:	00863783          	ld	a5,8(a2)
    800046bc:	00f53423          	sd	a5,8(a0)
        allFrag->next = newAllocated;
    800046c0:	00a63423          	sd	a0,8(a2)
    else
    {
        newAllocated->next = headAllocated;
        headAllocated = newAllocated;
    }
}
    800046c4:	00813403          	ld	s0,8(sp)
    800046c8:	01010113          	addi	sp,sp,16
    800046cc:	00008067          	ret
        headAllocated = newAllocated;
    800046d0:	0000c797          	auipc	a5,0xc
    800046d4:	40a7b823          	sd	a0,1040(a5) # 80010ae0 <_ZN15MemoryAllocator13headAllocatedE>
    800046d8:	fedff06f          	j	800046c4 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        newAllocated->next = headAllocated;
    800046dc:	00f53423          	sd	a5,8(a0)
        headAllocated = newAllocated;
    800046e0:	0000c797          	auipc	a5,0xc
    800046e4:	40a7b023          	sd	a0,1024(a5) # 80010ae0 <_ZN15MemoryAllocator13headAllocatedE>
    800046e8:	fddff06f          	j	800046c4 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>

00000000800046ec <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    800046ec:	ff010113          	addi	sp,sp,-16
    800046f0:	00813423          	sd	s0,8(sp)
    800046f4:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    800046f8:	0000c797          	auipc	a5,0xc
    800046fc:	3e07a783          	lw	a5,992(a5) # 80010ad8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004700:	02078c63          	beqz	a5,80004738 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80004704:	0000c797          	auipc	a5,0xc
    80004708:	3dc7b783          	ld	a5,988(a5) # 80010ae0 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    8000470c:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    80004710:	00b53023          	sd	a1,0(a0)
    BlockHeader* prev = 0;
    80004714:	00000713          	li	a4,0
    while(curr != 0)
    80004718:	00078c63          	beqz	a5,80004730 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x44>
    {
        if((void*)curr > addr)
    8000471c:	00f56863          	bltu	a0,a5,8000472c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x40>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80004720:	00078713          	mv	a4,a5
        curr = curr->next;
    80004724:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004728:	ff1ff06f          	j	80004718 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x2c>
            newAllocated->next = curr;
    8000472c:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    80004730:	00070a63          	beqz	a4,80004744 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x58>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80004734:	00a73423          	sd	a0,8(a4)
}
    80004738:	00813403          	ld	s0,8(sp)
    8000473c:	01010113          	addi	sp,sp,16
    80004740:	00008067          	ret
        headAllocated = newAllocated;
    80004744:	0000c797          	auipc	a5,0xc
    80004748:	38a7be23          	sd	a0,924(a5) # 80010ae0 <_ZN15MemoryAllocator13headAllocatedE>
    8000474c:	fedff06f          	j	80004738 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>

0000000080004750 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    80004750:	0000c797          	auipc	a5,0xc
    80004754:	3887a783          	lw	a5,904(a5) # 80010ad8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004758:	0e078e63          	beqz	a5,80004854 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x104>
{
    8000475c:	fe010113          	addi	sp,sp,-32
    80004760:	00113c23          	sd	ra,24(sp)
    80004764:	00813823          	sd	s0,16(sp)
    80004768:	00913423          	sd	s1,8(sp)
    8000476c:	02010413          	addi	s0,sp,32
    80004770:	00050593          	mv	a1,a0
        return nullptr;
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004774:	0000c497          	auipc	s1,0xc
    80004778:	3744b483          	ld	s1,884(s1) # 80010ae8 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    8000477c:	00000713          	li	a4,0
    while(curr != 0)
    80004780:	0a048e63          	beqz	s1,8000483c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xec>
    {
        if(curr->size >= size)
    80004784:	0004b783          	ld	a5,0(s1)
    80004788:	00b7f863          	bgeu	a5,a1,80004798 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            //insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    8000478c:	00048713          	mv	a4,s1
        curr = curr->next;
    80004790:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004794:	fedff06f          	j	80004780 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80004798:	01058693          	addi	a3,a1,16
    8000479c:	00d486b3          	add	a3,s1,a3
            void* nxtAllFrag = ((char*)curr + curr->size + sizeof(BlockHeader));
    800047a0:	01078613          	addi	a2,a5,16
    800047a4:	00c48633          	add	a2,s1,a2
            if(newAddr <= HEAP_END_ADDR)
    800047a8:	00004517          	auipc	a0,0x4
    800047ac:	20053503          	ld	a0,512(a0) # 800089a8 <_GLOBAL_OFFSET_TABLE_+0xa0>
    800047b0:	00053503          	ld	a0,0(a0)
    800047b4:	06d56063          	bltu	a0,a3,80004814 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc4>
                uint64 size2 = curr->size - size;
    800047b8:	40b78533          	sub	a0,a5,a1
                if(size2 > sizeof(BlockHeader))
    800047bc:	01000813          	li	a6,16
    800047c0:	02a87663          	bgeu	a6,a0,800047ec <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                    newFree->next = curr->next;
    800047c4:	0084b783          	ld	a5,8(s1)
    800047c8:	00f6b423          	sd	a5,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    800047cc:	ff050513          	addi	a0,a0,-16
    800047d0:	00a6b023          	sd	a0,0(a3)
                    if (prev != 0)
    800047d4:	00070663          	beqz	a4,800047e0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x90>
                        prev->next = newFree;
    800047d8:	00d73423          	sd	a3,8(a4)
    800047dc:	0400006f          	j	8000481c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = newFree;
    800047e0:	0000c797          	auipc	a5,0xc
    800047e4:	30d7b423          	sd	a3,776(a5) # 80010ae8 <_ZN15MemoryAllocator8headFreeE>
    800047e8:	0340006f          	j	8000481c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                    if(prev != 0)
    800047ec:	00070a63          	beqz	a4,80004800 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb0>
                        prev->next = curr->next;
    800047f0:	0084b683          	ld	a3,8(s1)
    800047f4:	00d73423          	sd	a3,8(a4)
                    size+=size2;
    800047f8:	00078593          	mv	a1,a5
    800047fc:	0200006f          	j	8000481c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = curr->next;
    80004800:	0084b703          	ld	a4,8(s1)
    80004804:	0000c697          	auipc	a3,0xc
    80004808:	2ee6b223          	sd	a4,740(a3) # 80010ae8 <_ZN15MemoryAllocator8headFreeE>
                    size+=size2;
    8000480c:	00078593          	mv	a1,a5
    80004810:	00c0006f          	j	8000481c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                if(prev != 0)
    80004814:	00070e63          	beqz	a4,80004830 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
                    prev->next = 0;
    80004818:	00073423          	sd	zero,8(a4)
            insertAllFragment(oldAddr, size, nxtAllFrag);
    8000481c:	00048513          	mv	a0,s1
    80004820:	00000097          	auipc	ra,0x0
    80004824:	e5c080e7          	jalr	-420(ra) # 8000467c <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80004828:	01048513          	addi	a0,s1,16
            break;
    8000482c:	0140006f          	j	80004840 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf0>
                    headFree = 0;
    80004830:	0000c797          	auipc	a5,0xc
    80004834:	2a07bc23          	sd	zero,696(a5) # 80010ae8 <_ZN15MemoryAllocator8headFreeE>
    80004838:	fe5ff06f          	j	8000481c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
    uint64 retval = 0;
    8000483c:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80004840:	01813083          	ld	ra,24(sp)
    80004844:	01013403          	ld	s0,16(sp)
    80004848:	00813483          	ld	s1,8(sp)
    8000484c:	02010113          	addi	sp,sp,32
    80004850:	00008067          	ret
        return nullptr;
    80004854:	00000513          	li	a0,0
}
    80004858:	00008067          	ret

000000008000485c <_ZN15MemoryAllocator9mem_allocEm>:
{
    8000485c:	ff010113          	addi	sp,sp,-16
    80004860:	00113423          	sd	ra,8(sp)
    80004864:	00813023          	sd	s0,0(sp)
    80004868:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    8000486c:	00000097          	auipc	ra,0x0
    80004870:	ee4080e7          	jalr	-284(ra) # 80004750 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80004874:	00813083          	ld	ra,8(sp)
    80004878:	00013403          	ld	s0,0(sp)
    8000487c:	01010113          	addi	sp,sp,16
    80004880:	00008067          	ret

0000000080004884 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80004884:	ff010113          	addi	sp,sp,-16
    80004888:	00813423          	sd	s0,8(sp)
    8000488c:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    80004890:	0000c797          	auipc	a5,0xc
    80004894:	2487a783          	lw	a5,584(a5) # 80010ad8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004898:	06078263          	beqz	a5,800048fc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    8000489c:	0000c797          	auipc	a5,0xc
    800048a0:	24c7b783          	ld	a5,588(a5) # 80010ae8 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    800048a4:	00b53023          	sd	a1,0(a0)
    newSegment->next = 0;
    800048a8:	00053423          	sd	zero,8(a0)
    BlockHeader* prev = 0;
    800048ac:	00000713          	li	a4,0
    while(curr != 0)
    800048b0:	00078c63          	beqz	a5,800048c8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x44>
    {
        if((void*)curr > addr)
    800048b4:	00f56863          	bltu	a0,a5,800048c4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x40>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    800048b8:	00078713          	mv	a4,a5
        curr = curr->next;
    800048bc:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800048c0:	ff1ff06f          	j	800048b0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x2c>
            newSegment->next = curr;
    800048c4:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    800048c8:	04070063          	beqz	a4,80004908 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x84>
        headFree = newSegment;
    else
        prev->next = newSegment;
    800048cc:	00a73423          	sd	a0,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    800048d0:	00853783          	ld	a5,8(a0)
    800048d4:	00078a63          	beqz	a5,800048e8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
    800048d8:	00053603          	ld	a2,0(a0)
    800048dc:	01060693          	addi	a3,a2,16
    800048e0:	00d506b3          	add	a3,a0,a3
    800048e4:	02d78863          	beq	a5,a3,80004914 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x90>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    800048e8:	00070a63          	beqz	a4,800048fc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
    800048ec:	00073683          	ld	a3,0(a4)
    800048f0:	01068793          	addi	a5,a3,16
    800048f4:	00f707b3          	add	a5,a4,a5
    800048f8:	02a78c63          	beq	a5,a0,80004930 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    800048fc:	00813403          	ld	s0,8(sp)
    80004900:	01010113          	addi	sp,sp,16
    80004904:	00008067          	ret
        headFree = newSegment;
    80004908:	0000c797          	auipc	a5,0xc
    8000490c:	1ea7b023          	sd	a0,480(a5) # 80010ae8 <_ZN15MemoryAllocator8headFreeE>
    80004910:	fc1ff06f          	j	800048d0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x4c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80004914:	0007b683          	ld	a3,0(a5)
    80004918:	00d60633          	add	a2,a2,a3
    8000491c:	01060613          	addi	a2,a2,16
    80004920:	00c53023          	sd	a2,0(a0)
        newSegment->next = newSegment->next->next;
    80004924:	0087b783          	ld	a5,8(a5)
    80004928:	00f53423          	sd	a5,8(a0)
    8000492c:	fbdff06f          	j	800048e8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80004930:	00053783          	ld	a5,0(a0)
    80004934:	00f686b3          	add	a3,a3,a5
    80004938:	01068693          	addi	a3,a3,16
    8000493c:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80004940:	00853783          	ld	a5,8(a0)
    80004944:	00f73423          	sd	a5,8(a4)
    80004948:	fb5ff06f          	j	800048fc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>

000000008000494c <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    8000494c:	0000c797          	auipc	a5,0xc
    80004950:	18c7a783          	lw	a5,396(a5) # 80010ad8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004954:	08078263          	beqz	a5,800049d8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x8c>
{
    80004958:	fe010113          	addi	sp,sp,-32
    8000495c:	00113c23          	sd	ra,24(sp)
    80004960:	00813823          	sd	s0,16(sp)
    80004964:	00913423          	sd	s1,8(sp)
    80004968:	02010413          	addi	s0,sp,32
        return 1;
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    8000496c:	0000c497          	auipc	s1,0xc
    80004970:	1744b483          	ld	s1,372(s1) # 80010ae0 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80004974:	00000713          	li	a4,0
    while(curr != 0)
    80004978:	02048a63          	beqz	s1,800049ac <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x60>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    8000497c:	01048793          	addi	a5,s1,16
    80004980:	00a78863          	beq	a5,a0,80004990 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x44>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80004984:	00048713          	mv	a4,s1
        curr = curr->next;
    80004988:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    8000498c:	fedff06f          	j	80004978 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x2c>
            if(prev != 0)
    80004990:	02070c63          	beqz	a4,800049c8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x7c>
                prev->next = curr->next;
    80004994:	0084b783          	ld	a5,8(s1)
    80004998:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    8000499c:	0004b583          	ld	a1,0(s1)
    800049a0:	00048513          	mv	a0,s1
    800049a4:	00000097          	auipc	ra,0x0
    800049a8:	ee0080e7          	jalr	-288(ra) # 80004884 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    800049ac:	02048a63          	beqz	s1,800049e0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    800049b0:	00000513          	li	a0,0
    else
        return 1;
}
    800049b4:	01813083          	ld	ra,24(sp)
    800049b8:	01013403          	ld	s0,16(sp)
    800049bc:	00813483          	ld	s1,8(sp)
    800049c0:	02010113          	addi	sp,sp,32
    800049c4:	00008067          	ret
                headAllocated = curr->next;
    800049c8:	0084b783          	ld	a5,8(s1)
    800049cc:	0000c717          	auipc	a4,0xc
    800049d0:	10f73a23          	sd	a5,276(a4) # 80010ae0 <_ZN15MemoryAllocator13headAllocatedE>
    800049d4:	fc9ff06f          	j	8000499c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x50>
        return 1;
    800049d8:	00100513          	li	a0,1
}
    800049dc:	00008067          	ret
        return 1;
    800049e0:	00100513          	li	a0,1
    800049e4:	fd1ff06f          	j	800049b4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x68>

00000000800049e8 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    800049e8:	ff010113          	addi	sp,sp,-16
    800049ec:	00113423          	sd	ra,8(sp)
    800049f0:	00813023          	sd	s0,0(sp)
    800049f4:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    800049f8:	00000097          	auipc	ra,0x0
    800049fc:	f54080e7          	jalr	-172(ra) # 8000494c <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80004a00:	00813083          	ld	ra,8(sp)
    80004a04:	00013403          	ld	s0,0(sp)
    80004a08:	01010113          	addi	sp,sp,16
    80004a0c:	00008067          	ret

0000000080004a10 <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    80004a10:	ff010113          	addi	sp,sp,-16
    80004a14:	00113423          	sd	ra,8(sp)
    80004a18:	00813023          	sd	s0,0(sp)
    80004a1c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80004a20:	00000097          	auipc	ra,0x0
    80004a24:	e3c080e7          	jalr	-452(ra) # 8000485c <_ZN15MemoryAllocator9mem_allocEm>
}
    80004a28:	00813083          	ld	ra,8(sp)
    80004a2c:	00013403          	ld	s0,0(sp)
    80004a30:	01010113          	addi	sp,sp,16
    80004a34:	00008067          	ret

0000000080004a38 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80004a38:	ff010113          	addi	sp,sp,-16
    80004a3c:	00113423          	sd	ra,8(sp)
    80004a40:	00813023          	sd	s0,0(sp)
    80004a44:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80004a48:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    80004a4c:	00651513          	slli	a0,a0,0x6
    80004a50:	00000097          	auipc	ra,0x0
    80004a54:	fc0080e7          	jalr	-64(ra) # 80004a10 <_ZN15MemoryAllocator7kmallocEm>
    if(allocatedAddr == nullptr)
    80004a58:	02050063          	beqz	a0,80004a78 <_ZN15MemoryAllocator15memAllocHandlerEv+0x40>
        __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80004a5c:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004a60:	00000097          	auipc	ra,0x0
    80004a64:	87c080e7          	jalr	-1924(ra) # 800042dc <_ZN5Riscv13w_a0_sscratchEv>
}
    80004a68:	00813083          	ld	ra,8(sp)
    80004a6c:	00013403          	ld	s0,0(sp)
    80004a70:	01010113          	addi	sp,sp,16
    80004a74:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    80004a78:	00000513          	li	a0,0
    80004a7c:	fe5ff06f          	j	80004a60 <_ZN15MemoryAllocator15memAllocHandlerEv+0x28>

0000000080004a80 <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    80004a80:	ff010113          	addi	sp,sp,-16
    80004a84:	00113423          	sd	ra,8(sp)
    80004a88:	00813023          	sd	s0,0(sp)
    80004a8c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80004a90:	00000097          	auipc	ra,0x0
    80004a94:	f58080e7          	jalr	-168(ra) # 800049e8 <_ZN15MemoryAllocator8mem_freeEPv>
    80004a98:	00813083          	ld	ra,8(sp)
    80004a9c:	00013403          	ld	s0,0(sp)
    80004aa0:	01010113          	addi	sp,sp,16
    80004aa4:	00008067          	ret

0000000080004aa8 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    80004aa8:	ff010113          	addi	sp,sp,-16
    80004aac:	00113423          	sd	ra,8(sp)
    80004ab0:	00813023          	sd	s0,0(sp)
    80004ab4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    80004ab8:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80004abc:	00000097          	auipc	ra,0x0
    80004ac0:	fc4080e7          	jalr	-60(ra) # 80004a80 <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004ac4:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004ac8:	00000097          	auipc	ra,0x0
    80004acc:	814080e7          	jalr	-2028(ra) # 800042dc <_ZN5Riscv13w_a0_sscratchEv>
}
    80004ad0:	00813083          	ld	ra,8(sp)
    80004ad4:	00013403          	ld	s0,0(sp)
    80004ad8:	01010113          	addi	sp,sp,16
    80004adc:	00008067          	ret

0000000080004ae0 <_Z12slabInitTestv>:
#include "../../h/slabTests.hpp"
#include "../../h/KConsole.hpp"

void slabInitTest()
{
    80004ae0:	ff010113          	addi	sp,sp,-16
    80004ae4:	00113423          	sd	ra,8(sp)
    80004ae8:	00813023          	sd	s0,0(sp)
    80004aec:	01010413          	addi	s0,sp,16
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004af0:	00f00593          	li	a1,15
    80004af4:	00004797          	auipc	a5,0x4
    80004af8:	e2c7b783          	ld	a5,-468(a5) # 80008920 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004afc:	0007b503          	ld	a0,0(a5)
    80004b00:	ffffd097          	auipc	ra,0xffffd
    80004b04:	0e0080e7          	jalr	224(ra) # 80001be0 <_Z9kmem_initPvi>
}
    80004b08:	00813083          	ld	ra,8(sp)
    80004b0c:	00013403          	ld	s0,0(sp)
    80004b10:	01010113          	addi	sp,sp,16
    80004b14:	00008067          	ret

0000000080004b18 <_Z19slabCacheCreateTestv>:

void slabCacheCreateTest()
{
    80004b18:	fe010113          	addi	sp,sp,-32
    80004b1c:	00113c23          	sd	ra,24(sp)
    80004b20:	00813823          	sd	s0,16(sp)
    80004b24:	00913423          	sd	s1,8(sp)
    80004b28:	01213023          	sd	s2,0(sp)
    80004b2c:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004b30:	00f00593          	li	a1,15
    80004b34:	00004797          	auipc	a5,0x4
    80004b38:	dec7b783          	ld	a5,-532(a5) # 80008920 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004b3c:	0007b503          	ld	a0,0(a5)
    80004b40:	ffffd097          	auipc	ra,0xffffd
    80004b44:	0a0080e7          	jalr	160(ra) # 80001be0 <_Z9kmem_initPvi>
    kmem_cache_t* cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80004b48:	00000693          	li	a3,0
    80004b4c:	00000613          	li	a2,0
    80004b50:	00a00593          	li	a1,10
    80004b54:	00004517          	auipc	a0,0x4
    80004b58:	9c450513          	addi	a0,a0,-1596 # 80008518 <CONSOLE_STATUS+0x508>
    80004b5c:	ffffd097          	auipc	ra,0xffffd
    80004b60:	1f4080e7          	jalr	500(ra) # 80001d50 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004b64:	00050493          	mv	s1,a0
    kmem_cache_t* cache2 = kmem_cache_create("Cache test 2", 10, nullptr,nullptr);
    80004b68:	00000693          	li	a3,0
    80004b6c:	00000613          	li	a2,0
    80004b70:	00a00593          	li	a1,10
    80004b74:	00004517          	auipc	a0,0x4
    80004b78:	9b450513          	addi	a0,a0,-1612 # 80008528 <CONSOLE_STATUS+0x518>
    80004b7c:	ffffd097          	auipc	ra,0xffffd
    80004b80:	1d4080e7          	jalr	468(ra) # 80001d50 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004b84:	00050913          	mv	s2,a0
    kmem_cache_t* cache3 = kmem_cache_create("Cache test 3", 10, nullptr,nullptr);
    80004b88:	00000693          	li	a3,0
    80004b8c:	00000613          	li	a2,0
    80004b90:	00a00593          	li	a1,10
    80004b94:	00004517          	auipc	a0,0x4
    80004b98:	9a450513          	addi	a0,a0,-1628 # 80008538 <CONSOLE_STATUS+0x528>
    80004b9c:	ffffd097          	auipc	ra,0xffffd
    80004ba0:	1b4080e7          	jalr	436(ra) # 80001d50 <_Z17kmem_cache_createPKcmPFvPvES3_>
    if(cache && cache2 && cache3)
    80004ba4:	00048a63          	beqz	s1,80004bb8 <_Z19slabCacheCreateTestv+0xa0>
    80004ba8:	00090863          	beqz	s2,80004bb8 <_Z19slabCacheCreateTestv+0xa0>
    80004bac:	00050663          	beqz	a0,80004bb8 <_Z19slabCacheCreateTestv+0xa0>
        printSlabAllocatorInfo();
    80004bb0:	ffffd097          	auipc	ra,0xffffd
    80004bb4:	3f0080e7          	jalr	1008(ra) # 80001fa0 <_Z22printSlabAllocatorInfov>
}
    80004bb8:	01813083          	ld	ra,24(sp)
    80004bbc:	01013403          	ld	s0,16(sp)
    80004bc0:	00813483          	ld	s1,8(sp)
    80004bc4:	00013903          	ld	s2,0(sp)
    80004bc8:	02010113          	addi	sp,sp,32
    80004bcc:	00008067          	ret

0000000080004bd0 <_Z20slabCacheCreateTest2v>:

void slabCacheCreateTest2()
{
    80004bd0:	fe010113          	addi	sp,sp,-32
    80004bd4:	00113c23          	sd	ra,24(sp)
    80004bd8:	00813823          	sd	s0,16(sp)
    80004bdc:	00913423          	sd	s1,8(sp)
    80004be0:	01213023          	sd	s2,0(sp)
    80004be4:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004be8:	00f00593          	li	a1,15
    80004bec:	00004797          	auipc	a5,0x4
    80004bf0:	d347b783          	ld	a5,-716(a5) # 80008920 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004bf4:	0007b503          	ld	a0,0(a5)
    80004bf8:	ffffd097          	auipc	ra,0xffffd
    80004bfc:	fe8080e7          	jalr	-24(ra) # 80001be0 <_Z9kmem_initPvi>
    kmem_cache_t * cache = nullptr;
    for(int i = 1;i<=68;i++)
    80004c00:	00100493          	li	s1,1
    kmem_cache_t * cache = nullptr;
    80004c04:	00000913          	li	s2,0
    for(int i = 1;i<=68;i++)
    80004c08:	04400793          	li	a5,68
    80004c0c:	0297c663          	blt	a5,s1,80004c38 <_Z20slabCacheCreateTest2v+0x68>
    {
        cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80004c10:	00000693          	li	a3,0
    80004c14:	00000613          	li	a2,0
    80004c18:	00a00593          	li	a1,10
    80004c1c:	00004517          	auipc	a0,0x4
    80004c20:	8fc50513          	addi	a0,a0,-1796 # 80008518 <CONSOLE_STATUS+0x508>
    80004c24:	ffffd097          	auipc	ra,0xffffd
    80004c28:	12c080e7          	jalr	300(ra) # 80001d50 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004c2c:	00050913          	mv	s2,a0
    for(int i = 1;i<=68;i++)
    80004c30:	0014849b          	addiw	s1,s1,1
    80004c34:	fd5ff06f          	j	80004c08 <_Z20slabCacheCreateTest2v+0x38>
    }
    printSlabAllocatorInfo();
    80004c38:	ffffd097          	auipc	ra,0xffffd
    80004c3c:	368080e7          	jalr	872(ra) # 80001fa0 <_Z22printSlabAllocatorInfov>
    kmem_cache_destroy(cache);
    80004c40:	00090513          	mv	a0,s2
    80004c44:	ffffd097          	auipc	ra,0xffffd
    80004c48:	5e4080e7          	jalr	1508(ra) # 80002228 <_Z18kmem_cache_destroyP12kmem_cache_s>
    printSlabAllocatorInfo();
    80004c4c:	ffffd097          	auipc	ra,0xffffd
    80004c50:	354080e7          	jalr	852(ra) # 80001fa0 <_Z22printSlabAllocatorInfov>
}
    80004c54:	01813083          	ld	ra,24(sp)
    80004c58:	01013403          	ld	s0,16(sp)
    80004c5c:	00813483          	ld	s1,8(sp)
    80004c60:	00013903          	ld	s2,0(sp)
    80004c64:	02010113          	addi	sp,sp,32
    80004c68:	00008067          	ret

0000000080004c6c <_Z6memsetPKvii>:
                                    "tc_1",
                                    "tc_2",
                                    "tc_3",
                                    "tc_4"};

void memset(const void *data, int size, int value) {
    80004c6c:	ff010113          	addi	sp,sp,-16
    80004c70:	00813423          	sd	s0,8(sp)
    80004c74:	01010413          	addi	s0,sp,16
    for (int j = 0; j < size; j++) {
    80004c78:	00000793          	li	a5,0
    80004c7c:	00b7da63          	bge	a5,a1,80004c90 <_Z6memsetPKvii+0x24>
        *((char *)data + j) = value;
    80004c80:	00f50733          	add	a4,a0,a5
    80004c84:	00c70023          	sb	a2,0(a4)
    for (int j = 0; j < size; j++) {
    80004c88:	0017879b          	addiw	a5,a5,1
    80004c8c:	ff1ff06f          	j	80004c7c <_Z6memsetPKvii+0x10>
    }
}
    80004c90:	00813403          	ld	s0,8(sp)
    80004c94:	01010113          	addi	sp,sp,16
    80004c98:	00008067          	ret

0000000080004c9c <_Z9constructPv>:

void construct(void *data) {
    80004c9c:	ff010113          	addi	sp,sp,-16
    80004ca0:	00113423          	sd	ra,8(sp)
    80004ca4:	00813023          	sd	s0,0(sp)
    80004ca8:	01010413          	addi	s0,sp,16
    //static int i = 1;
    //KConsole::trapPrintInt(i); i++;
    //KConsole::trapPrintString(" Shared object constructed.\n");
    memset(data, shared_size, MASK);
    80004cac:	0a500613          	li	a2,165
    80004cb0:	00700593          	li	a1,7
    80004cb4:	00000097          	auipc	ra,0x0
    80004cb8:	fb8080e7          	jalr	-72(ra) # 80004c6c <_Z6memsetPKvii>
}
    80004cbc:	00813083          	ld	ra,8(sp)
    80004cc0:	00013403          	ld	s0,0(sp)
    80004cc4:	01010113          	addi	sp,sp,16
    80004cc8:	00008067          	ret

0000000080004ccc <_Z5checkPvm>:

int check(void *data, size_t size) {
    80004ccc:	ff010113          	addi	sp,sp,-16
    80004cd0:	00813423          	sd	s0,8(sp)
    80004cd4:	01010413          	addi	s0,sp,16
    80004cd8:	00050613          	mv	a2,a0
    int ret = 1;
    for (size_t i = 0; i < size; i++) {
    80004cdc:	00000793          	li	a5,0
    int ret = 1;
    80004ce0:	00100513          	li	a0,1
    80004ce4:	0080006f          	j	80004cec <_Z5checkPvm+0x20>
    for (size_t i = 0; i < size; i++) {
    80004ce8:	00178793          	addi	a5,a5,1
    80004cec:	00b7fe63          	bgeu	a5,a1,80004d08 <_Z5checkPvm+0x3c>
        if (((unsigned char *)data)[i] != MASK) {
    80004cf0:	00f60733          	add	a4,a2,a5
    80004cf4:	00074683          	lbu	a3,0(a4)
    80004cf8:	0a500713          	li	a4,165
    80004cfc:	fee686e3          	beq	a3,a4,80004ce8 <_Z5checkPvm+0x1c>
            ret = 0;
    80004d00:	00000513          	li	a0,0
    80004d04:	fe5ff06f          	j	80004ce8 <_Z5checkPvm+0x1c>
        }
    }

    return ret;
}
    80004d08:	00813403          	ld	s0,8(sp)
    80004d0c:	01010113          	addi	sp,sp,16
    80004d10:	00008067          	ret

0000000080004d14 <_Z4workPv>:
    kmem_cache_t *cache;
    void *data;
};

void work(void* pdata)
{
    80004d14:	f8010113          	addi	sp,sp,-128
    80004d18:	06113c23          	sd	ra,120(sp)
    80004d1c:	06813823          	sd	s0,112(sp)
    80004d20:	06913423          	sd	s1,104(sp)
    80004d24:	07213023          	sd	s2,96(sp)
    80004d28:	05313c23          	sd	s3,88(sp)
    80004d2c:	05413823          	sd	s4,80(sp)
    80004d30:	05513423          	sd	s5,72(sp)
    80004d34:	05613023          	sd	s6,64(sp)
    80004d38:	03713c23          	sd	s7,56(sp)
    80004d3c:	03813823          	sd	s8,48(sp)
    80004d40:	03913423          	sd	s9,40(sp)
    80004d44:	08010413          	addi	s0,sp,128
    struct data_s data = *(struct data_s*) pdata;
    80004d48:	00053c03          	ld	s8,0(a0)
    80004d4c:	f9843423          	sd	s8,-120(s0)
    80004d50:	00853783          	ld	a5,8(a0)
    80004d54:	f8f43823          	sd	a5,-112(s0)
    80004d58:	01053783          	ld	a5,16(a0)
    80004d5c:	f8f43c23          	sd	a5,-104(s0)
    int size = 0;
    int object_size = data.id + 1;
    80004d60:	000c079b          	sext.w	a5,s8
    80004d64:	001c0c1b          	addiw	s8,s8,1
    kmem_cache_t *cache = kmem_cache_create(CACHE_NAMES[data.id], object_size, 0, 0);
    80004d68:	00379713          	slli	a4,a5,0x3
    80004d6c:	00004797          	auipc	a5,0x4
    80004d70:	b7478793          	addi	a5,a5,-1164 # 800088e0 <_ZL11CACHE_NAMES>
    80004d74:	00e787b3          	add	a5,a5,a4
    80004d78:	000c0b13          	mv	s6,s8
    80004d7c:	00000693          	li	a3,0
    80004d80:	00000613          	li	a2,0
    80004d84:	000c0593          	mv	a1,s8
    80004d88:	0007b503          	ld	a0,0(a5)
    80004d8c:	ffffd097          	auipc	ra,0xffffd
    80004d90:	fc4080e7          	jalr	-60(ra) # 80001d50 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004d94:	00050a13          	mv	s4,a0

    struct objects_s *objs = (struct objects_s*)(kmalloc(sizeof(struct objects_s) * data.iterations));
    80004d98:	f9842b83          	lw	s7,-104(s0)
    80004d9c:	004b9513          	slli	a0,s7,0x4
    80004da0:	ffffd097          	auipc	ra,0xffffd
    80004da4:	2fc080e7          	jalr	764(ra) # 8000209c <_Z7kmallocm>
    80004da8:	00050a93          	mv	s5,a0

    for (int i = 0; i < data.iterations; i++) {
    80004dac:	00000493          	li	s1,0
    int size = 0;
    80004db0:	00000993          	li	s3,0
    80004db4:	0380006f          	j	80004dec <_Z4workPv+0xd8>
            if (!check(objs[size].data, shared_size)) {
                KConsole::trapPrintString("Value not correct!");
            }
        }
        else {
            objs[size].data = kmem_cache_alloc(cache);
    80004db8:	00499913          	slli	s2,s3,0x4
    80004dbc:	012a8933          	add	s2,s5,s2
    80004dc0:	000a0513          	mv	a0,s4
    80004dc4:	ffffd097          	auipc	ra,0xffffd
    80004dc8:	e54080e7          	jalr	-428(ra) # 80001c18 <_Z16kmem_cache_allocP12kmem_cache_s>
    80004dcc:	00a93423          	sd	a0,8(s2)
            objs[size].cache = cache;
    80004dd0:	01493023          	sd	s4,0(s2)
            memset(objs[size].data, object_size, MASK);
    80004dd4:	0a500613          	li	a2,165
    80004dd8:	000c0593          	mv	a1,s8
    80004ddc:	00000097          	auipc	ra,0x0
    80004de0:	e90080e7          	jalr	-368(ra) # 80004c6c <_Z6memsetPKvii>
        }
        size++;
    80004de4:	0019899b          	addiw	s3,s3,1
    for (int i = 0; i < data.iterations; i++) {
    80004de8:	0014849b          	addiw	s1,s1,1
    80004dec:	0574da63          	bge	s1,s7,80004e40 <_Z4workPv+0x12c>
        if (i % 100 == 0) {
    80004df0:	06400793          	li	a5,100
    80004df4:	02f4e7bb          	remw	a5,s1,a5
    80004df8:	fc0790e3          	bnez	a5,80004db8 <_Z4workPv+0xa4>
            objs[size].data = kmem_cache_alloc(data.shared);
    80004dfc:	f9043c83          	ld	s9,-112(s0)
    80004e00:	00499913          	slli	s2,s3,0x4
    80004e04:	012a8933          	add	s2,s5,s2
    80004e08:	000c8513          	mv	a0,s9
    80004e0c:	ffffd097          	auipc	ra,0xffffd
    80004e10:	e0c080e7          	jalr	-500(ra) # 80001c18 <_Z16kmem_cache_allocP12kmem_cache_s>
    80004e14:	00a93423          	sd	a0,8(s2)
            objs[size].cache = data.shared;
    80004e18:	01993023          	sd	s9,0(s2)
            if (!check(objs[size].data, shared_size)) {
    80004e1c:	00700593          	li	a1,7
    80004e20:	00000097          	auipc	ra,0x0
    80004e24:	eac080e7          	jalr	-340(ra) # 80004ccc <_Z5checkPvm>
    80004e28:	fa051ee3          	bnez	a0,80004de4 <_Z4workPv+0xd0>
                KConsole::trapPrintString("Value not correct!");
    80004e2c:	00003517          	auipc	a0,0x3
    80004e30:	71c50513          	addi	a0,a0,1820 # 80008548 <CONSOLE_STATUS+0x538>
    80004e34:	ffffe097          	auipc	ra,0xffffe
    80004e38:	658080e7          	jalr	1624(ra) # 8000348c <_ZN8KConsole15trapPrintStringEPKc>
    80004e3c:	fa9ff06f          	j	80004de4 <_Z4workPv+0xd0>
    }

    kmem_cache_info(cache);
    80004e40:	000a0513          	mv	a0,s4
    80004e44:	ffffd097          	auipc	ra,0xffffd
    80004e48:	000080e7          	jalr	ra # 80001e44 <_Z15kmem_cache_infoP12kmem_cache_s>
    kmem_cache_info(data.shared);
    80004e4c:	f9043503          	ld	a0,-112(s0)
    80004e50:	ffffd097          	auipc	ra,0xffffd
    80004e54:	ff4080e7          	jalr	-12(ra) # 80001e44 <_Z15kmem_cache_infoP12kmem_cache_s>
    //printSlabAllocatorInfo();

    for (int i = 0; i < size; i++) {
    80004e58:	00000913          	li	s2,0
    80004e5c:	0300006f          	j	80004e8c <_Z4workPv+0x178>
        if (!check(objs[i].data, (cache == objs[i].cache) ? object_size : shared_size)) {
    80004e60:	000b0593          	mv	a1,s6
    80004e64:	0440006f          	j	80004ea8 <_Z4workPv+0x194>
            KConsole::trapPrintString("Value not correct!");
    80004e68:	00003517          	auipc	a0,0x3
    80004e6c:	6e050513          	addi	a0,a0,1760 # 80008548 <CONSOLE_STATUS+0x538>
    80004e70:	ffffe097          	auipc	ra,0xffffe
    80004e74:	61c080e7          	jalr	1564(ra) # 8000348c <_ZN8KConsole15trapPrintStringEPKc>
        }
        kmem_cache_free(objs[i].cache, objs[i].data);
    80004e78:	0084b583          	ld	a1,8(s1)
    80004e7c:	0004b503          	ld	a0,0(s1)
    80004e80:	ffffd097          	auipc	ra,0xffffd
    80004e84:	f74080e7          	jalr	-140(ra) # 80001df4 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    for (int i = 0; i < size; i++) {
    80004e88:	0019091b          	addiw	s2,s2,1
    80004e8c:	03395663          	bge	s2,s3,80004eb8 <_Z4workPv+0x1a4>
        if (!check(objs[i].data, (cache == objs[i].cache) ? object_size : shared_size)) {
    80004e90:	00491493          	slli	s1,s2,0x4
    80004e94:	009a84b3          	add	s1,s5,s1
    80004e98:	0084b503          	ld	a0,8(s1)
    80004e9c:	0004b783          	ld	a5,0(s1)
    80004ea0:	fd4780e3          	beq	a5,s4,80004e60 <_Z4workPv+0x14c>
    80004ea4:	00700593          	li	a1,7
    80004ea8:	00000097          	auipc	ra,0x0
    80004eac:	e24080e7          	jalr	-476(ra) # 80004ccc <_Z5checkPvm>
    80004eb0:	fc0514e3          	bnez	a0,80004e78 <_Z4workPv+0x164>
    80004eb4:	fb5ff06f          	j	80004e68 <_Z4workPv+0x154>

    //kmem_cache_info(cache);
    //kmem_cache_info(data.shared);
    //printSlabAllocatorInfo();

    kfree(objs);
    80004eb8:	000a8513          	mv	a0,s5
    80004ebc:	ffffd097          	auipc	ra,0xffffd
    80004ec0:	2e4080e7          	jalr	740(ra) # 800021a0 <_Z5kfreePKv>
    kmem_cache_destroy(cache);
    80004ec4:	000a0513          	mv	a0,s4
    80004ec8:	ffffd097          	auipc	ra,0xffffd
    80004ecc:	360080e7          	jalr	864(ra) # 80002228 <_Z18kmem_cache_destroyP12kmem_cache_s>

    //printSlabAllocatorInfo();
}
    80004ed0:	07813083          	ld	ra,120(sp)
    80004ed4:	07013403          	ld	s0,112(sp)
    80004ed8:	06813483          	ld	s1,104(sp)
    80004edc:	06013903          	ld	s2,96(sp)
    80004ee0:	05813983          	ld	s3,88(sp)
    80004ee4:	05013a03          	ld	s4,80(sp)
    80004ee8:	04813a83          	ld	s5,72(sp)
    80004eec:	04013b03          	ld	s6,64(sp)
    80004ef0:	03813b83          	ld	s7,56(sp)
    80004ef4:	03013c03          	ld	s8,48(sp)
    80004ef8:	02813c83          	ld	s9,40(sp)
    80004efc:	08010113          	addi	sp,sp,128
    80004f00:	00008067          	ret

0000000080004f04 <_Z4runsPFvPvEP6data_si>:

void runs(void(*work)(void*), struct data_s* data, int num) {
    80004f04:	fb010113          	addi	sp,sp,-80
    80004f08:	04113423          	sd	ra,72(sp)
    80004f0c:	04813023          	sd	s0,64(sp)
    80004f10:	02913c23          	sd	s1,56(sp)
    80004f14:	03213823          	sd	s2,48(sp)
    80004f18:	03313423          	sd	s3,40(sp)
    80004f1c:	05010413          	addi	s0,sp,80
    80004f20:	00050993          	mv	s3,a0
    80004f24:	00058913          	mv	s2,a1
    for (int i = 0; i < RUN_NUM; i++) {
    80004f28:	00000493          	li	s1,0
    80004f2c:	00400793          	li	a5,4
    80004f30:	0297c863          	blt	a5,s1,80004f60 <_Z4runsPFvPvEP6data_si+0x5c>
        struct data_s private_data;
        private_data = *(struct data_s*) data;
    80004f34:	00093783          	ld	a5,0(s2)
    80004f38:	faf43c23          	sd	a5,-72(s0)
    80004f3c:	00893783          	ld	a5,8(s2)
    80004f40:	fcf43023          	sd	a5,-64(s0)
    80004f44:	01093783          	ld	a5,16(s2)
    80004f48:	fcf43423          	sd	a5,-56(s0)
        private_data.id = i;
    80004f4c:	fa942c23          	sw	s1,-72(s0)
        work(&private_data);
    80004f50:	fb840513          	addi	a0,s0,-72
    80004f54:	000980e7          	jalr	s3
    for (int i = 0; i < RUN_NUM; i++) {
    80004f58:	0014849b          	addiw	s1,s1,1
    80004f5c:	fd1ff06f          	j	80004f2c <_Z4runsPFvPvEP6data_si+0x28>
    }
}
    80004f60:	04813083          	ld	ra,72(sp)
    80004f64:	04013403          	ld	s0,64(sp)
    80004f68:	03813483          	ld	s1,56(sp)
    80004f6c:	03013903          	ld	s2,48(sp)
    80004f70:	02813983          	ld	s3,40(sp)
    80004f74:	05010113          	addi	sp,sp,80
    80004f78:	00008067          	ret

0000000080004f7c <_Z7testOS2v>:

void testOS2()
{
    80004f7c:	fc010113          	addi	sp,sp,-64
    80004f80:	02113c23          	sd	ra,56(sp)
    80004f84:	02813823          	sd	s0,48(sp)
    80004f88:	02913423          	sd	s1,40(sp)
    80004f8c:	04010413          	addi	s0,sp,64
    kmem_cache_t *shared = kmem_cache_create("shared object", shared_size, construct, nullptr);
    80004f90:	00000693          	li	a3,0
    80004f94:	00000617          	auipc	a2,0x0
    80004f98:	d0860613          	addi	a2,a2,-760 # 80004c9c <_Z9constructPv>
    80004f9c:	00700593          	li	a1,7
    80004fa0:	00003517          	auipc	a0,0x3
    80004fa4:	5c050513          	addi	a0,a0,1472 # 80008560 <CONSOLE_STATUS+0x550>
    80004fa8:	ffffd097          	auipc	ra,0xffffd
    80004fac:	da8080e7          	jalr	-600(ra) # 80001d50 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004fb0:	00050493          	mv	s1,a0

    struct data_s data;
    data.shared = shared;
    80004fb4:	fca43823          	sd	a0,-48(s0)
    data.iterations = ITERATIONS;
    80004fb8:	3e800793          	li	a5,1000
    80004fbc:	fcf42c23          	sw	a5,-40(s0)
    runs(work, &data, RUN_NUM);
    80004fc0:	00500613          	li	a2,5
    80004fc4:	fc840593          	addi	a1,s0,-56
    80004fc8:	00000517          	auipc	a0,0x0
    80004fcc:	d4c50513          	addi	a0,a0,-692 # 80004d14 <_Z4workPv>
    80004fd0:	00000097          	auipc	ra,0x0
    80004fd4:	f34080e7          	jalr	-204(ra) # 80004f04 <_Z4runsPFvPvEP6data_si>

    kmem_cache_destroy(shared);
    80004fd8:	00048513          	mv	a0,s1
    80004fdc:	ffffd097          	auipc	ra,0xffffd
    80004fe0:	24c080e7          	jalr	588(ra) # 80002228 <_Z18kmem_cache_destroyP12kmem_cache_s>
    80004fe4:	03813083          	ld	ra,56(sp)
    80004fe8:	03013403          	ld	s0,48(sp)
    80004fec:	02813483          	ld	s1,40(sp)
    80004ff0:	04010113          	addi	sp,sp,64
    80004ff4:	00008067          	ret

0000000080004ff8 <_ZN10KSemaphoreC1Ei>:
#include "../../h/KSemaphore.hpp"
#include "../../h/MemoryAllocator.hpp"
#include "../../h/Riscv.hpp"
#include "../../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
    80004ff8:	ff010113          	addi	sp,sp,-16
    80004ffc:	00813423          	sd	s0,8(sp)
    80005000:	01010413          	addi	s0,sp,16
{
    this->val = val;
    80005004:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80005008:	00053423          	sd	zero,8(a0)
    8000500c:	00053023          	sd	zero,0(a0)
}
    80005010:	00813403          	ld	s0,8(sp)
    80005014:	01010113          	addi	sp,sp,16
    80005018:	00008067          	ret

000000008000501c <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    8000501c:	ff010113          	addi	sp,sp,-16
    80005020:	00813423          	sd	s0,8(sp)
    80005024:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80005028:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    8000502c:	00053783          	ld	a5,0(a0)
    80005030:	00078e63          	beqz	a5,8000504c <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80005034:	00853783          	ld	a5,8(a0)
    80005038:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    8000503c:	00b53423          	sd	a1,8(a0)
    }
}
    80005040:	00813403          	ld	s0,8(sp)
    80005044:	01010113          	addi	sp,sp,16
    80005048:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    8000504c:	00b53423          	sd	a1,8(a0)
    80005050:	00b53023          	sd	a1,0(a0)
    80005054:	fedff06f          	j	80005040 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080005058 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    80005058:	ff010113          	addi	sp,sp,-16
    8000505c:	00113423          	sd	ra,8(sp)
    80005060:	00813023          	sd	s0,0(sp)
    80005064:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80005068:	00004797          	auipc	a5,0x4
    8000506c:	9387b783          	ld	a5,-1736(a5) # 800089a0 <_GLOBAL_OFFSET_TABLE_+0x98>
    80005070:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80005074:	00200793          	li	a5,2
    80005078:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    8000507c:	00000097          	auipc	ra,0x0
    80005080:	fa0080e7          	jalr	-96(ra) # 8000501c <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80005084:	ffffd097          	auipc	ra,0xffffd
    80005088:	414080e7          	jalr	1044(ra) # 80002498 <_ZN3PCB8dispatchEv>
}
    8000508c:	00813083          	ld	ra,8(sp)
    80005090:	00013403          	ld	s0,0(sp)
    80005094:	01010113          	addi	sp,sp,16
    80005098:	00008067          	ret

000000008000509c <_ZN10KSemaphore4waitEv>:
    PCB::running->retFromClosedSem = false;
    8000509c:	00004797          	auipc	a5,0x4
    800050a0:	9047b783          	ld	a5,-1788(a5) # 800089a0 <_GLOBAL_OFFSET_TABLE_+0x98>
    800050a4:	0007b783          	ld	a5,0(a5)
    800050a8:	04078c23          	sb	zero,88(a5)
    if(--val < 0)
    800050ac:	01052783          	lw	a5,16(a0)
    800050b0:	fff7879b          	addiw	a5,a5,-1
    800050b4:	00f52823          	sw	a5,16(a0)
    800050b8:	02079713          	slli	a4,a5,0x20
    800050bc:	00074663          	bltz	a4,800050c8 <_ZN10KSemaphore4waitEv+0x2c>
}
    800050c0:	00000513          	li	a0,0
    800050c4:	00008067          	ret
{
    800050c8:	ff010113          	addi	sp,sp,-16
    800050cc:	00113423          	sd	ra,8(sp)
    800050d0:	00813023          	sd	s0,0(sp)
    800050d4:	01010413          	addi	s0,sp,16
        block();
    800050d8:	00000097          	auipc	ra,0x0
    800050dc:	f80080e7          	jalr	-128(ra) # 80005058 <_ZN10KSemaphore5blockEv>
}
    800050e0:	00000513          	li	a0,0
    800050e4:	00813083          	ld	ra,8(sp)
    800050e8:	00013403          	ld	s0,0(sp)
    800050ec:	01010113          	addi	sp,sp,16
    800050f0:	00008067          	ret

00000000800050f4 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    800050f4:	ff010113          	addi	sp,sp,-16
    800050f8:	00813423          	sd	s0,8(sp)
    800050fc:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80005100:	00053503          	ld	a0,0(a0)
    80005104:	00813403          	ld	s0,8(sp)
    80005108:	01010113          	addi	sp,sp,16
    8000510c:	00008067          	ret

0000000080005110 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80005110:	ff010113          	addi	sp,sp,-16
    80005114:	00813423          	sd	s0,8(sp)
    80005118:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    8000511c:	00053783          	ld	a5,0(a0)
    80005120:	00078c63          	beqz	a5,80005138 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80005124:	0087b703          	ld	a4,8(a5)
    80005128:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    8000512c:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80005130:	00053783          	ld	a5,0(a0)
    80005134:	00078863          	beqz	a5,80005144 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80005138:	00813403          	ld	s0,8(sp)
    8000513c:	01010113          	addi	sp,sp,16
    80005140:	00008067          	ret
        tailBlocked =0;
    80005144:	00053423          	sd	zero,8(a0)
    80005148:	ff1ff06f          	j	80005138 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

000000008000514c <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    8000514c:	fe010113          	addi	sp,sp,-32
    80005150:	00113c23          	sd	ra,24(sp)
    80005154:	00813823          	sd	s0,16(sp)
    80005158:	00913423          	sd	s1,8(sp)
    8000515c:	01213023          	sd	s2,0(sp)
    80005160:	02010413          	addi	s0,sp,32
    80005164:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80005168:	00090513          	mv	a0,s2
    8000516c:	00000097          	auipc	ra,0x0
    80005170:	f88080e7          	jalr	-120(ra) # 800050f4 <_ZN10KSemaphore15getFirstBlockedEv>
    80005174:	00050493          	mv	s1,a0
    80005178:	02050463          	beqz	a0,800051a0 <_ZN10KSemaphoreD1Ev+0x54>
        removeFirstBlocked();
    8000517c:	00090513          	mv	a0,s2
    80005180:	00000097          	auipc	ra,0x0
    80005184:	f90080e7          	jalr	-112(ra) # 80005110 <_ZN10KSemaphore18removeFirstBlockedEv>
        pcb->retFromClosedSem = true;
    80005188:	00100793          	li	a5,1
    8000518c:	04f48c23          	sb	a5,88(s1)
        Scheduler::put(pcb);
    80005190:	00048513          	mv	a0,s1
    80005194:	ffffe097          	auipc	ra,0xffffe
    80005198:	5b0080e7          	jalr	1456(ra) # 80003744 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    8000519c:	fcdff06f          	j	80005168 <_ZN10KSemaphoreD1Ev+0x1c>
}
    800051a0:	01813083          	ld	ra,24(sp)
    800051a4:	01013403          	ld	s0,16(sp)
    800051a8:	00813483          	ld	s1,8(sp)
    800051ac:	00013903          	ld	s2,0(sp)
    800051b0:	02010113          	addi	sp,sp,32
    800051b4:	00008067          	ret

00000000800051b8 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    800051b8:	fe010113          	addi	sp,sp,-32
    800051bc:	00113c23          	sd	ra,24(sp)
    800051c0:	00813823          	sd	s0,16(sp)
    800051c4:	00913423          	sd	s1,8(sp)
    800051c8:	01213023          	sd	s2,0(sp)
    800051cc:	02010413          	addi	s0,sp,32
    800051d0:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    800051d4:	00000097          	auipc	ra,0x0
    800051d8:	f20080e7          	jalr	-224(ra) # 800050f4 <_ZN10KSemaphore15getFirstBlockedEv>
    800051dc:	00050493          	mv	s1,a0
    removeFirstBlocked();
    800051e0:	00090513          	mv	a0,s2
    800051e4:	00000097          	auipc	ra,0x0
    800051e8:	f2c080e7          	jalr	-212(ra) # 80005110 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    800051ec:	00048863          	beqz	s1,800051fc <_ZN10KSemaphore7unblockEv+0x44>
    {
        Scheduler::put(fr);
    800051f0:	00048513          	mv	a0,s1
    800051f4:	ffffe097          	auipc	ra,0xffffe
    800051f8:	550080e7          	jalr	1360(ra) # 80003744 <_ZN9Scheduler3putEP3PCB>
    }
}
    800051fc:	01813083          	ld	ra,24(sp)
    80005200:	01013403          	ld	s0,16(sp)
    80005204:	00813483          	ld	s1,8(sp)
    80005208:	00013903          	ld	s2,0(sp)
    8000520c:	02010113          	addi	sp,sp,32
    80005210:	00008067          	ret

0000000080005214 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80005214:	01052783          	lw	a5,16(a0)
    80005218:	0017879b          	addiw	a5,a5,1
    8000521c:	0007871b          	sext.w	a4,a5
    80005220:	00f52823          	sw	a5,16(a0)
    80005224:	00e05663          	blez	a4,80005230 <_ZN10KSemaphore6signalEv+0x1c>
}
    80005228:	00000513          	li	a0,0
    8000522c:	00008067          	ret
uint64 KSemaphore::signal() {
    80005230:	ff010113          	addi	sp,sp,-16
    80005234:	00113423          	sd	ra,8(sp)
    80005238:	00813023          	sd	s0,0(sp)
    8000523c:	01010413          	addi	s0,sp,16
        unblock();
    80005240:	00000097          	auipc	ra,0x0
    80005244:	f78080e7          	jalr	-136(ra) # 800051b8 <_ZN10KSemaphore7unblockEv>
}
    80005248:	00000513          	li	a0,0
    8000524c:	00813083          	ld	ra,8(sp)
    80005250:	00013403          	ld	s0,0(sp)
    80005254:	01010113          	addi	sp,sp,16
    80005258:	00008067          	ret

000000008000525c <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    8000525c:	ff010113          	addi	sp,sp,-16
    80005260:	00113423          	sd	ra,8(sp)
    80005264:	00813023          	sd	s0,0(sp)
    80005268:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::semaphoreCache);
    8000526c:	00003797          	auipc	a5,0x3
    80005270:	6bc7b783          	ld	a5,1724(a5) # 80008928 <_GLOBAL_OFFSET_TABLE_+0x20>
    80005274:	0007b503          	ld	a0,0(a5)
    80005278:	ffffd097          	auipc	ra,0xffffd
    8000527c:	9a0080e7          	jalr	-1632(ra) # 80001c18 <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    80005280:	00813083          	ld	ra,8(sp)
    80005284:	00013403          	ld	s0,0(sp)
    80005288:	01010113          	addi	sp,sp,16
    8000528c:	00008067          	ret

0000000080005290 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    80005290:	fd010113          	addi	sp,sp,-48
    80005294:	02113423          	sd	ra,40(sp)
    80005298:	02813023          	sd	s0,32(sp)
    8000529c:	00913c23          	sd	s1,24(sp)
    800052a0:	01213823          	sd	s2,16(sp)
    800052a4:	01313423          	sd	s3,8(sp)
    800052a8:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    800052ac:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    800052b0:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    800052b4:	01800513          	li	a0,24
    800052b8:	00000097          	auipc	ra,0x0
    800052bc:	fa4080e7          	jalr	-92(ra) # 8000525c <_ZN10KSemaphorenwEm>
    800052c0:	00050493          	mv	s1,a0
    800052c4:	00050863          	beqz	a0,800052d4 <_ZN10KSemaphore14semOpenHandlerEv+0x44>
    800052c8:	0009859b          	sext.w	a1,s3
    800052cc:	00000097          	auipc	ra,0x0
    800052d0:	d2c080e7          	jalr	-724(ra) # 80004ff8 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    800052d4:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    800052d8:	02048663          	beqz	s1,80005304 <_ZN10KSemaphore14semOpenHandlerEv+0x74>
            __asm__ volatile("li a0, 0");
    800052dc:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800052e0:	fffff097          	auipc	ra,0xfffff
    800052e4:	ffc080e7          	jalr	-4(ra) # 800042dc <_ZN5Riscv13w_a0_sscratchEv>
}
    800052e8:	02813083          	ld	ra,40(sp)
    800052ec:	02013403          	ld	s0,32(sp)
    800052f0:	01813483          	ld	s1,24(sp)
    800052f4:	01013903          	ld	s2,16(sp)
    800052f8:	00813983          	ld	s3,8(sp)
    800052fc:	03010113          	addi	sp,sp,48
    80005300:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80005304:	fff00513          	li	a0,-1
    80005308:	fd9ff06f          	j	800052e0 <_ZN10KSemaphore14semOpenHandlerEv+0x50>

000000008000530c <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    8000530c:	ff010113          	addi	sp,sp,-16
    80005310:	00113423          	sd	ra,8(sp)
    80005314:	00813023          	sd	s0,0(sp)
    80005318:	01010413          	addi	s0,sp,16
    8000531c:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::semaphoreCache, p);
    80005320:	00003797          	auipc	a5,0x3
    80005324:	6087b783          	ld	a5,1544(a5) # 80008928 <_GLOBAL_OFFSET_TABLE_+0x20>
    80005328:	0007b503          	ld	a0,0(a5)
    8000532c:	ffffd097          	auipc	ra,0xffffd
    80005330:	ac8080e7          	jalr	-1336(ra) # 80001df4 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    80005334:	00813083          	ld	ra,8(sp)
    80005338:	00013403          	ld	s0,0(sp)
    8000533c:	01010113          	addi	sp,sp,16
    80005340:	00008067          	ret

0000000080005344 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    80005344:	ff010113          	addi	sp,sp,-16
    80005348:	00113423          	sd	ra,8(sp)
    8000534c:	00813023          	sd	s0,0(sp)
    80005350:	01010413          	addi	s0,sp,16
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80005354:	00058513          	mv	a0,a1
    kSem->wait();
    80005358:	00000097          	auipc	ra,0x0
    8000535c:	d44080e7          	jalr	-700(ra) # 8000509c <_ZN10KSemaphore4waitEv>
    if(PCB::running->retFromClosedSem)
    80005360:	00003797          	auipc	a5,0x3
    80005364:	6407b783          	ld	a5,1600(a5) # 800089a0 <_GLOBAL_OFFSET_TABLE_+0x98>
    80005368:	0007b783          	ld	a5,0(a5)
    8000536c:	0587c783          	lbu	a5,88(a5)
    80005370:	02078063          	beqz	a5,80005390 <_ZN10KSemaphore14semWaitHandlerEv+0x4c>
        __asm__ volatile("li a0, 0x1");
    80005374:	00100513          	li	a0,1
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
    80005378:	fffff097          	auipc	ra,0xfffff
    8000537c:	f64080e7          	jalr	-156(ra) # 800042dc <_ZN5Riscv13w_a0_sscratchEv>
}
    80005380:	00813083          	ld	ra,8(sp)
    80005384:	00013403          	ld	s0,0(sp)
    80005388:	01010113          	addi	sp,sp,16
    8000538c:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    80005390:	00000513          	li	a0,0
    80005394:	fe5ff06f          	j	80005378 <_ZN10KSemaphore14semWaitHandlerEv+0x34>

0000000080005398 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler() {
    80005398:	ff010113          	addi	sp,sp,-16
    8000539c:	00113423          	sd	ra,8(sp)
    800053a0:	00813023          	sd	s0,0(sp)
    800053a4:	01010413          	addi	s0,sp,16
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800053a8:	00058513          	mv	a0,a1
    if (kSem == 0)
    800053ac:	02050463          	beqz	a0,800053d4 <_ZN10KSemaphore16semSignalHandlerEv+0x3c>
    {
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        kSem->signal();
    800053b0:	00000097          	auipc	ra,0x0
    800053b4:	e64080e7          	jalr	-412(ra) # 80005214 <_ZN10KSemaphore6signalEv>
        __asm__ volatile("li a0, 0x0");
    800053b8:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    800053bc:	fffff097          	auipc	ra,0xfffff
    800053c0:	f20080e7          	jalr	-224(ra) # 800042dc <_ZN5Riscv13w_a0_sscratchEv>
}
    800053c4:	00813083          	ld	ra,8(sp)
    800053c8:	00013403          	ld	s0,0(sp)
    800053cc:	01010113          	addi	sp,sp,16
    800053d0:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    800053d4:	00100513          	li	a0,1
    800053d8:	fe5ff06f          	j	800053bc <_ZN10KSemaphore16semSignalHandlerEv+0x24>

00000000800053dc <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    800053dc:	fe010113          	addi	sp,sp,-32
    800053e0:	00113c23          	sd	ra,24(sp)
    800053e4:	00813823          	sd	s0,16(sp)
    800053e8:	00913423          	sd	s1,8(sp)
    800053ec:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800053f0:	00058493          	mv	s1,a1
    delete kSem;
    800053f4:	00048e63          	beqz	s1,80005410 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    800053f8:	00048513          	mv	a0,s1
    800053fc:	00000097          	auipc	ra,0x0
    80005400:	d50080e7          	jalr	-688(ra) # 8000514c <_ZN10KSemaphoreD1Ev>
    80005404:	00048513          	mv	a0,s1
    80005408:	00000097          	auipc	ra,0x0
    8000540c:	f04080e7          	jalr	-252(ra) # 8000530c <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    80005410:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80005414:	fffff097          	auipc	ra,0xfffff
    80005418:	ec8080e7          	jalr	-312(ra) # 800042dc <_ZN5Riscv13w_a0_sscratchEv>
}
    8000541c:	01813083          	ld	ra,24(sp)
    80005420:	01013403          	ld	s0,16(sp)
    80005424:	00813483          	ld	s1,8(sp)
    80005428:	02010113          	addi	sp,sp,32
    8000542c:	00008067          	ret

0000000080005430 <start>:
    80005430:	ff010113          	addi	sp,sp,-16
    80005434:	00813423          	sd	s0,8(sp)
    80005438:	01010413          	addi	s0,sp,16
    8000543c:	300027f3          	csrr	a5,mstatus
    80005440:	ffffe737          	lui	a4,0xffffe
    80005444:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffe77ff>
    80005448:	00e7f7b3          	and	a5,a5,a4
    8000544c:	00001737          	lui	a4,0x1
    80005450:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005454:	00e7e7b3          	or	a5,a5,a4
    80005458:	30079073          	csrw	mstatus,a5
    8000545c:	00000797          	auipc	a5,0x0
    80005460:	16078793          	addi	a5,a5,352 # 800055bc <system_main>
    80005464:	34179073          	csrw	mepc,a5
    80005468:	00000793          	li	a5,0
    8000546c:	18079073          	csrw	satp,a5
    80005470:	000107b7          	lui	a5,0x10
    80005474:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005478:	30279073          	csrw	medeleg,a5
    8000547c:	30379073          	csrw	mideleg,a5
    80005480:	104027f3          	csrr	a5,sie
    80005484:	2227e793          	ori	a5,a5,546
    80005488:	10479073          	csrw	sie,a5
    8000548c:	fff00793          	li	a5,-1
    80005490:	00a7d793          	srli	a5,a5,0xa
    80005494:	3b079073          	csrw	pmpaddr0,a5
    80005498:	00f00793          	li	a5,15
    8000549c:	3a079073          	csrw	pmpcfg0,a5
    800054a0:	f14027f3          	csrr	a5,mhartid
    800054a4:	0200c737          	lui	a4,0x200c
    800054a8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800054ac:	0007869b          	sext.w	a3,a5
    800054b0:	00269713          	slli	a4,a3,0x2
    800054b4:	000f4637          	lui	a2,0xf4
    800054b8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800054bc:	00d70733          	add	a4,a4,a3
    800054c0:	0037979b          	slliw	a5,a5,0x3
    800054c4:	020046b7          	lui	a3,0x2004
    800054c8:	00d787b3          	add	a5,a5,a3
    800054cc:	00c585b3          	add	a1,a1,a2
    800054d0:	00371693          	slli	a3,a4,0x3
    800054d4:	0000b717          	auipc	a4,0xb
    800054d8:	61c70713          	addi	a4,a4,1564 # 80010af0 <timer_scratch>
    800054dc:	00b7b023          	sd	a1,0(a5)
    800054e0:	00d70733          	add	a4,a4,a3
    800054e4:	00f73c23          	sd	a5,24(a4)
    800054e8:	02c73023          	sd	a2,32(a4)
    800054ec:	34071073          	csrw	mscratch,a4
    800054f0:	00000797          	auipc	a5,0x0
    800054f4:	6e078793          	addi	a5,a5,1760 # 80005bd0 <timervec>
    800054f8:	30579073          	csrw	mtvec,a5
    800054fc:	300027f3          	csrr	a5,mstatus
    80005500:	0087e793          	ori	a5,a5,8
    80005504:	30079073          	csrw	mstatus,a5
    80005508:	304027f3          	csrr	a5,mie
    8000550c:	0807e793          	ori	a5,a5,128
    80005510:	30479073          	csrw	mie,a5
    80005514:	f14027f3          	csrr	a5,mhartid
    80005518:	0007879b          	sext.w	a5,a5
    8000551c:	00078213          	mv	tp,a5
    80005520:	30200073          	mret
    80005524:	00813403          	ld	s0,8(sp)
    80005528:	01010113          	addi	sp,sp,16
    8000552c:	00008067          	ret

0000000080005530 <timerinit>:
    80005530:	ff010113          	addi	sp,sp,-16
    80005534:	00813423          	sd	s0,8(sp)
    80005538:	01010413          	addi	s0,sp,16
    8000553c:	f14027f3          	csrr	a5,mhartid
    80005540:	0200c737          	lui	a4,0x200c
    80005544:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005548:	0007869b          	sext.w	a3,a5
    8000554c:	00269713          	slli	a4,a3,0x2
    80005550:	000f4637          	lui	a2,0xf4
    80005554:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005558:	00d70733          	add	a4,a4,a3
    8000555c:	0037979b          	slliw	a5,a5,0x3
    80005560:	020046b7          	lui	a3,0x2004
    80005564:	00d787b3          	add	a5,a5,a3
    80005568:	00c585b3          	add	a1,a1,a2
    8000556c:	00371693          	slli	a3,a4,0x3
    80005570:	0000b717          	auipc	a4,0xb
    80005574:	58070713          	addi	a4,a4,1408 # 80010af0 <timer_scratch>
    80005578:	00b7b023          	sd	a1,0(a5)
    8000557c:	00d70733          	add	a4,a4,a3
    80005580:	00f73c23          	sd	a5,24(a4)
    80005584:	02c73023          	sd	a2,32(a4)
    80005588:	34071073          	csrw	mscratch,a4
    8000558c:	00000797          	auipc	a5,0x0
    80005590:	64478793          	addi	a5,a5,1604 # 80005bd0 <timervec>
    80005594:	30579073          	csrw	mtvec,a5
    80005598:	300027f3          	csrr	a5,mstatus
    8000559c:	0087e793          	ori	a5,a5,8
    800055a0:	30079073          	csrw	mstatus,a5
    800055a4:	304027f3          	csrr	a5,mie
    800055a8:	0807e793          	ori	a5,a5,128
    800055ac:	30479073          	csrw	mie,a5
    800055b0:	00813403          	ld	s0,8(sp)
    800055b4:	01010113          	addi	sp,sp,16
    800055b8:	00008067          	ret

00000000800055bc <system_main>:
    800055bc:	fe010113          	addi	sp,sp,-32
    800055c0:	00813823          	sd	s0,16(sp)
    800055c4:	00913423          	sd	s1,8(sp)
    800055c8:	00113c23          	sd	ra,24(sp)
    800055cc:	02010413          	addi	s0,sp,32
    800055d0:	00000097          	auipc	ra,0x0
    800055d4:	0c4080e7          	jalr	196(ra) # 80005694 <cpuid>
    800055d8:	00003497          	auipc	s1,0x3
    800055dc:	40848493          	addi	s1,s1,1032 # 800089e0 <started>
    800055e0:	02050263          	beqz	a0,80005604 <system_main+0x48>
    800055e4:	0004a783          	lw	a5,0(s1)
    800055e8:	0007879b          	sext.w	a5,a5
    800055ec:	fe078ce3          	beqz	a5,800055e4 <system_main+0x28>
    800055f0:	0ff0000f          	fence
    800055f4:	00003517          	auipc	a0,0x3
    800055f8:	fd450513          	addi	a0,a0,-44 # 800085c8 <CONSOLE_STATUS+0x5b8>
    800055fc:	00001097          	auipc	ra,0x1
    80005600:	a70080e7          	jalr	-1424(ra) # 8000606c <panic>
    80005604:	00001097          	auipc	ra,0x1
    80005608:	9c4080e7          	jalr	-1596(ra) # 80005fc8 <consoleinit>
    8000560c:	00001097          	auipc	ra,0x1
    80005610:	150080e7          	jalr	336(ra) # 8000675c <printfinit>
    80005614:	00003517          	auipc	a0,0x3
    80005618:	b6c50513          	addi	a0,a0,-1172 # 80008180 <CONSOLE_STATUS+0x170>
    8000561c:	00001097          	auipc	ra,0x1
    80005620:	aac080e7          	jalr	-1364(ra) # 800060c8 <__printf>
    80005624:	00003517          	auipc	a0,0x3
    80005628:	f7450513          	addi	a0,a0,-140 # 80008598 <CONSOLE_STATUS+0x588>
    8000562c:	00001097          	auipc	ra,0x1
    80005630:	a9c080e7          	jalr	-1380(ra) # 800060c8 <__printf>
    80005634:	00003517          	auipc	a0,0x3
    80005638:	b4c50513          	addi	a0,a0,-1204 # 80008180 <CONSOLE_STATUS+0x170>
    8000563c:	00001097          	auipc	ra,0x1
    80005640:	a8c080e7          	jalr	-1396(ra) # 800060c8 <__printf>
    80005644:	00001097          	auipc	ra,0x1
    80005648:	4a4080e7          	jalr	1188(ra) # 80006ae8 <kinit>
    8000564c:	00000097          	auipc	ra,0x0
    80005650:	148080e7          	jalr	328(ra) # 80005794 <trapinit>
    80005654:	00000097          	auipc	ra,0x0
    80005658:	16c080e7          	jalr	364(ra) # 800057c0 <trapinithart>
    8000565c:	00000097          	auipc	ra,0x0
    80005660:	5b4080e7          	jalr	1460(ra) # 80005c10 <plicinit>
    80005664:	00000097          	auipc	ra,0x0
    80005668:	5d4080e7          	jalr	1492(ra) # 80005c38 <plicinithart>
    8000566c:	00000097          	auipc	ra,0x0
    80005670:	078080e7          	jalr	120(ra) # 800056e4 <userinit>
    80005674:	0ff0000f          	fence
    80005678:	00100793          	li	a5,1
    8000567c:	00003517          	auipc	a0,0x3
    80005680:	f3450513          	addi	a0,a0,-204 # 800085b0 <CONSOLE_STATUS+0x5a0>
    80005684:	00f4a023          	sw	a5,0(s1)
    80005688:	00001097          	auipc	ra,0x1
    8000568c:	a40080e7          	jalr	-1472(ra) # 800060c8 <__printf>
    80005690:	0000006f          	j	80005690 <system_main+0xd4>

0000000080005694 <cpuid>:
    80005694:	ff010113          	addi	sp,sp,-16
    80005698:	00813423          	sd	s0,8(sp)
    8000569c:	01010413          	addi	s0,sp,16
    800056a0:	00020513          	mv	a0,tp
    800056a4:	00813403          	ld	s0,8(sp)
    800056a8:	0005051b          	sext.w	a0,a0
    800056ac:	01010113          	addi	sp,sp,16
    800056b0:	00008067          	ret

00000000800056b4 <mycpu>:
    800056b4:	ff010113          	addi	sp,sp,-16
    800056b8:	00813423          	sd	s0,8(sp)
    800056bc:	01010413          	addi	s0,sp,16
    800056c0:	00020793          	mv	a5,tp
    800056c4:	00813403          	ld	s0,8(sp)
    800056c8:	0007879b          	sext.w	a5,a5
    800056cc:	00779793          	slli	a5,a5,0x7
    800056d0:	0000c517          	auipc	a0,0xc
    800056d4:	45050513          	addi	a0,a0,1104 # 80011b20 <cpus>
    800056d8:	00f50533          	add	a0,a0,a5
    800056dc:	01010113          	addi	sp,sp,16
    800056e0:	00008067          	ret

00000000800056e4 <userinit>:
    800056e4:	ff010113          	addi	sp,sp,-16
    800056e8:	00813423          	sd	s0,8(sp)
    800056ec:	01010413          	addi	s0,sp,16
    800056f0:	00813403          	ld	s0,8(sp)
    800056f4:	01010113          	addi	sp,sp,16
    800056f8:	ffffe317          	auipc	t1,0xffffe
    800056fc:	14c30067          	jr	332(t1) # 80003844 <main>

0000000080005700 <either_copyout>:
    80005700:	ff010113          	addi	sp,sp,-16
    80005704:	00813023          	sd	s0,0(sp)
    80005708:	00113423          	sd	ra,8(sp)
    8000570c:	01010413          	addi	s0,sp,16
    80005710:	02051663          	bnez	a0,8000573c <either_copyout+0x3c>
    80005714:	00058513          	mv	a0,a1
    80005718:	00060593          	mv	a1,a2
    8000571c:	0006861b          	sext.w	a2,a3
    80005720:	00002097          	auipc	ra,0x2
    80005724:	c54080e7          	jalr	-940(ra) # 80007374 <__memmove>
    80005728:	00813083          	ld	ra,8(sp)
    8000572c:	00013403          	ld	s0,0(sp)
    80005730:	00000513          	li	a0,0
    80005734:	01010113          	addi	sp,sp,16
    80005738:	00008067          	ret
    8000573c:	00003517          	auipc	a0,0x3
    80005740:	eb450513          	addi	a0,a0,-332 # 800085f0 <CONSOLE_STATUS+0x5e0>
    80005744:	00001097          	auipc	ra,0x1
    80005748:	928080e7          	jalr	-1752(ra) # 8000606c <panic>

000000008000574c <either_copyin>:
    8000574c:	ff010113          	addi	sp,sp,-16
    80005750:	00813023          	sd	s0,0(sp)
    80005754:	00113423          	sd	ra,8(sp)
    80005758:	01010413          	addi	s0,sp,16
    8000575c:	02059463          	bnez	a1,80005784 <either_copyin+0x38>
    80005760:	00060593          	mv	a1,a2
    80005764:	0006861b          	sext.w	a2,a3
    80005768:	00002097          	auipc	ra,0x2
    8000576c:	c0c080e7          	jalr	-1012(ra) # 80007374 <__memmove>
    80005770:	00813083          	ld	ra,8(sp)
    80005774:	00013403          	ld	s0,0(sp)
    80005778:	00000513          	li	a0,0
    8000577c:	01010113          	addi	sp,sp,16
    80005780:	00008067          	ret
    80005784:	00003517          	auipc	a0,0x3
    80005788:	e9450513          	addi	a0,a0,-364 # 80008618 <CONSOLE_STATUS+0x608>
    8000578c:	00001097          	auipc	ra,0x1
    80005790:	8e0080e7          	jalr	-1824(ra) # 8000606c <panic>

0000000080005794 <trapinit>:
    80005794:	ff010113          	addi	sp,sp,-16
    80005798:	00813423          	sd	s0,8(sp)
    8000579c:	01010413          	addi	s0,sp,16
    800057a0:	00813403          	ld	s0,8(sp)
    800057a4:	00003597          	auipc	a1,0x3
    800057a8:	e9c58593          	addi	a1,a1,-356 # 80008640 <CONSOLE_STATUS+0x630>
    800057ac:	0000c517          	auipc	a0,0xc
    800057b0:	3f450513          	addi	a0,a0,1012 # 80011ba0 <tickslock>
    800057b4:	01010113          	addi	sp,sp,16
    800057b8:	00001317          	auipc	t1,0x1
    800057bc:	5c030067          	jr	1472(t1) # 80006d78 <initlock>

00000000800057c0 <trapinithart>:
    800057c0:	ff010113          	addi	sp,sp,-16
    800057c4:	00813423          	sd	s0,8(sp)
    800057c8:	01010413          	addi	s0,sp,16
    800057cc:	00000797          	auipc	a5,0x0
    800057d0:	2f478793          	addi	a5,a5,756 # 80005ac0 <kernelvec>
    800057d4:	10579073          	csrw	stvec,a5
    800057d8:	00813403          	ld	s0,8(sp)
    800057dc:	01010113          	addi	sp,sp,16
    800057e0:	00008067          	ret

00000000800057e4 <usertrap>:
    800057e4:	ff010113          	addi	sp,sp,-16
    800057e8:	00813423          	sd	s0,8(sp)
    800057ec:	01010413          	addi	s0,sp,16
    800057f0:	00813403          	ld	s0,8(sp)
    800057f4:	01010113          	addi	sp,sp,16
    800057f8:	00008067          	ret

00000000800057fc <usertrapret>:
    800057fc:	ff010113          	addi	sp,sp,-16
    80005800:	00813423          	sd	s0,8(sp)
    80005804:	01010413          	addi	s0,sp,16
    80005808:	00813403          	ld	s0,8(sp)
    8000580c:	01010113          	addi	sp,sp,16
    80005810:	00008067          	ret

0000000080005814 <kerneltrap>:
    80005814:	fe010113          	addi	sp,sp,-32
    80005818:	00813823          	sd	s0,16(sp)
    8000581c:	00113c23          	sd	ra,24(sp)
    80005820:	00913423          	sd	s1,8(sp)
    80005824:	02010413          	addi	s0,sp,32
    80005828:	142025f3          	csrr	a1,scause
    8000582c:	100027f3          	csrr	a5,sstatus
    80005830:	0027f793          	andi	a5,a5,2
    80005834:	10079c63          	bnez	a5,8000594c <kerneltrap+0x138>
    80005838:	142027f3          	csrr	a5,scause
    8000583c:	0207ce63          	bltz	a5,80005878 <kerneltrap+0x64>
    80005840:	00003517          	auipc	a0,0x3
    80005844:	e4850513          	addi	a0,a0,-440 # 80008688 <CONSOLE_STATUS+0x678>
    80005848:	00001097          	auipc	ra,0x1
    8000584c:	880080e7          	jalr	-1920(ra) # 800060c8 <__printf>
    80005850:	141025f3          	csrr	a1,sepc
    80005854:	14302673          	csrr	a2,stval
    80005858:	00003517          	auipc	a0,0x3
    8000585c:	e4050513          	addi	a0,a0,-448 # 80008698 <CONSOLE_STATUS+0x688>
    80005860:	00001097          	auipc	ra,0x1
    80005864:	868080e7          	jalr	-1944(ra) # 800060c8 <__printf>
    80005868:	00003517          	auipc	a0,0x3
    8000586c:	e4850513          	addi	a0,a0,-440 # 800086b0 <CONSOLE_STATUS+0x6a0>
    80005870:	00000097          	auipc	ra,0x0
    80005874:	7fc080e7          	jalr	2044(ra) # 8000606c <panic>
    80005878:	0ff7f713          	andi	a4,a5,255
    8000587c:	00900693          	li	a3,9
    80005880:	04d70063          	beq	a4,a3,800058c0 <kerneltrap+0xac>
    80005884:	fff00713          	li	a4,-1
    80005888:	03f71713          	slli	a4,a4,0x3f
    8000588c:	00170713          	addi	a4,a4,1
    80005890:	fae798e3          	bne	a5,a4,80005840 <kerneltrap+0x2c>
    80005894:	00000097          	auipc	ra,0x0
    80005898:	e00080e7          	jalr	-512(ra) # 80005694 <cpuid>
    8000589c:	06050663          	beqz	a0,80005908 <kerneltrap+0xf4>
    800058a0:	144027f3          	csrr	a5,sip
    800058a4:	ffd7f793          	andi	a5,a5,-3
    800058a8:	14479073          	csrw	sip,a5
    800058ac:	01813083          	ld	ra,24(sp)
    800058b0:	01013403          	ld	s0,16(sp)
    800058b4:	00813483          	ld	s1,8(sp)
    800058b8:	02010113          	addi	sp,sp,32
    800058bc:	00008067          	ret
    800058c0:	00000097          	auipc	ra,0x0
    800058c4:	3c4080e7          	jalr	964(ra) # 80005c84 <plic_claim>
    800058c8:	00a00793          	li	a5,10
    800058cc:	00050493          	mv	s1,a0
    800058d0:	06f50863          	beq	a0,a5,80005940 <kerneltrap+0x12c>
    800058d4:	fc050ce3          	beqz	a0,800058ac <kerneltrap+0x98>
    800058d8:	00050593          	mv	a1,a0
    800058dc:	00003517          	auipc	a0,0x3
    800058e0:	d8c50513          	addi	a0,a0,-628 # 80008668 <CONSOLE_STATUS+0x658>
    800058e4:	00000097          	auipc	ra,0x0
    800058e8:	7e4080e7          	jalr	2020(ra) # 800060c8 <__printf>
    800058ec:	01013403          	ld	s0,16(sp)
    800058f0:	01813083          	ld	ra,24(sp)
    800058f4:	00048513          	mv	a0,s1
    800058f8:	00813483          	ld	s1,8(sp)
    800058fc:	02010113          	addi	sp,sp,32
    80005900:	00000317          	auipc	t1,0x0
    80005904:	3bc30067          	jr	956(t1) # 80005cbc <plic_complete>
    80005908:	0000c517          	auipc	a0,0xc
    8000590c:	29850513          	addi	a0,a0,664 # 80011ba0 <tickslock>
    80005910:	00001097          	auipc	ra,0x1
    80005914:	48c080e7          	jalr	1164(ra) # 80006d9c <acquire>
    80005918:	00003717          	auipc	a4,0x3
    8000591c:	0cc70713          	addi	a4,a4,204 # 800089e4 <ticks>
    80005920:	00072783          	lw	a5,0(a4)
    80005924:	0000c517          	auipc	a0,0xc
    80005928:	27c50513          	addi	a0,a0,636 # 80011ba0 <tickslock>
    8000592c:	0017879b          	addiw	a5,a5,1
    80005930:	00f72023          	sw	a5,0(a4)
    80005934:	00001097          	auipc	ra,0x1
    80005938:	534080e7          	jalr	1332(ra) # 80006e68 <release>
    8000593c:	f65ff06f          	j	800058a0 <kerneltrap+0x8c>
    80005940:	00001097          	auipc	ra,0x1
    80005944:	090080e7          	jalr	144(ra) # 800069d0 <uartintr>
    80005948:	fa5ff06f          	j	800058ec <kerneltrap+0xd8>
    8000594c:	00003517          	auipc	a0,0x3
    80005950:	cfc50513          	addi	a0,a0,-772 # 80008648 <CONSOLE_STATUS+0x638>
    80005954:	00000097          	auipc	ra,0x0
    80005958:	718080e7          	jalr	1816(ra) # 8000606c <panic>

000000008000595c <clockintr>:
    8000595c:	fe010113          	addi	sp,sp,-32
    80005960:	00813823          	sd	s0,16(sp)
    80005964:	00913423          	sd	s1,8(sp)
    80005968:	00113c23          	sd	ra,24(sp)
    8000596c:	02010413          	addi	s0,sp,32
    80005970:	0000c497          	auipc	s1,0xc
    80005974:	23048493          	addi	s1,s1,560 # 80011ba0 <tickslock>
    80005978:	00048513          	mv	a0,s1
    8000597c:	00001097          	auipc	ra,0x1
    80005980:	420080e7          	jalr	1056(ra) # 80006d9c <acquire>
    80005984:	00003717          	auipc	a4,0x3
    80005988:	06070713          	addi	a4,a4,96 # 800089e4 <ticks>
    8000598c:	00072783          	lw	a5,0(a4)
    80005990:	01013403          	ld	s0,16(sp)
    80005994:	01813083          	ld	ra,24(sp)
    80005998:	00048513          	mv	a0,s1
    8000599c:	0017879b          	addiw	a5,a5,1
    800059a0:	00813483          	ld	s1,8(sp)
    800059a4:	00f72023          	sw	a5,0(a4)
    800059a8:	02010113          	addi	sp,sp,32
    800059ac:	00001317          	auipc	t1,0x1
    800059b0:	4bc30067          	jr	1212(t1) # 80006e68 <release>

00000000800059b4 <devintr>:
    800059b4:	142027f3          	csrr	a5,scause
    800059b8:	00000513          	li	a0,0
    800059bc:	0007c463          	bltz	a5,800059c4 <devintr+0x10>
    800059c0:	00008067          	ret
    800059c4:	fe010113          	addi	sp,sp,-32
    800059c8:	00813823          	sd	s0,16(sp)
    800059cc:	00113c23          	sd	ra,24(sp)
    800059d0:	00913423          	sd	s1,8(sp)
    800059d4:	02010413          	addi	s0,sp,32
    800059d8:	0ff7f713          	andi	a4,a5,255
    800059dc:	00900693          	li	a3,9
    800059e0:	04d70c63          	beq	a4,a3,80005a38 <devintr+0x84>
    800059e4:	fff00713          	li	a4,-1
    800059e8:	03f71713          	slli	a4,a4,0x3f
    800059ec:	00170713          	addi	a4,a4,1
    800059f0:	00e78c63          	beq	a5,a4,80005a08 <devintr+0x54>
    800059f4:	01813083          	ld	ra,24(sp)
    800059f8:	01013403          	ld	s0,16(sp)
    800059fc:	00813483          	ld	s1,8(sp)
    80005a00:	02010113          	addi	sp,sp,32
    80005a04:	00008067          	ret
    80005a08:	00000097          	auipc	ra,0x0
    80005a0c:	c8c080e7          	jalr	-884(ra) # 80005694 <cpuid>
    80005a10:	06050663          	beqz	a0,80005a7c <devintr+0xc8>
    80005a14:	144027f3          	csrr	a5,sip
    80005a18:	ffd7f793          	andi	a5,a5,-3
    80005a1c:	14479073          	csrw	sip,a5
    80005a20:	01813083          	ld	ra,24(sp)
    80005a24:	01013403          	ld	s0,16(sp)
    80005a28:	00813483          	ld	s1,8(sp)
    80005a2c:	00200513          	li	a0,2
    80005a30:	02010113          	addi	sp,sp,32
    80005a34:	00008067          	ret
    80005a38:	00000097          	auipc	ra,0x0
    80005a3c:	24c080e7          	jalr	588(ra) # 80005c84 <plic_claim>
    80005a40:	00a00793          	li	a5,10
    80005a44:	00050493          	mv	s1,a0
    80005a48:	06f50663          	beq	a0,a5,80005ab4 <devintr+0x100>
    80005a4c:	00100513          	li	a0,1
    80005a50:	fa0482e3          	beqz	s1,800059f4 <devintr+0x40>
    80005a54:	00048593          	mv	a1,s1
    80005a58:	00003517          	auipc	a0,0x3
    80005a5c:	c1050513          	addi	a0,a0,-1008 # 80008668 <CONSOLE_STATUS+0x658>
    80005a60:	00000097          	auipc	ra,0x0
    80005a64:	668080e7          	jalr	1640(ra) # 800060c8 <__printf>
    80005a68:	00048513          	mv	a0,s1
    80005a6c:	00000097          	auipc	ra,0x0
    80005a70:	250080e7          	jalr	592(ra) # 80005cbc <plic_complete>
    80005a74:	00100513          	li	a0,1
    80005a78:	f7dff06f          	j	800059f4 <devintr+0x40>
    80005a7c:	0000c517          	auipc	a0,0xc
    80005a80:	12450513          	addi	a0,a0,292 # 80011ba0 <tickslock>
    80005a84:	00001097          	auipc	ra,0x1
    80005a88:	318080e7          	jalr	792(ra) # 80006d9c <acquire>
    80005a8c:	00003717          	auipc	a4,0x3
    80005a90:	f5870713          	addi	a4,a4,-168 # 800089e4 <ticks>
    80005a94:	00072783          	lw	a5,0(a4)
    80005a98:	0000c517          	auipc	a0,0xc
    80005a9c:	10850513          	addi	a0,a0,264 # 80011ba0 <tickslock>
    80005aa0:	0017879b          	addiw	a5,a5,1
    80005aa4:	00f72023          	sw	a5,0(a4)
    80005aa8:	00001097          	auipc	ra,0x1
    80005aac:	3c0080e7          	jalr	960(ra) # 80006e68 <release>
    80005ab0:	f65ff06f          	j	80005a14 <devintr+0x60>
    80005ab4:	00001097          	auipc	ra,0x1
    80005ab8:	f1c080e7          	jalr	-228(ra) # 800069d0 <uartintr>
    80005abc:	fadff06f          	j	80005a68 <devintr+0xb4>

0000000080005ac0 <kernelvec>:
    80005ac0:	f0010113          	addi	sp,sp,-256
    80005ac4:	00113023          	sd	ra,0(sp)
    80005ac8:	00213423          	sd	sp,8(sp)
    80005acc:	00313823          	sd	gp,16(sp)
    80005ad0:	00413c23          	sd	tp,24(sp)
    80005ad4:	02513023          	sd	t0,32(sp)
    80005ad8:	02613423          	sd	t1,40(sp)
    80005adc:	02713823          	sd	t2,48(sp)
    80005ae0:	02813c23          	sd	s0,56(sp)
    80005ae4:	04913023          	sd	s1,64(sp)
    80005ae8:	04a13423          	sd	a0,72(sp)
    80005aec:	04b13823          	sd	a1,80(sp)
    80005af0:	04c13c23          	sd	a2,88(sp)
    80005af4:	06d13023          	sd	a3,96(sp)
    80005af8:	06e13423          	sd	a4,104(sp)
    80005afc:	06f13823          	sd	a5,112(sp)
    80005b00:	07013c23          	sd	a6,120(sp)
    80005b04:	09113023          	sd	a7,128(sp)
    80005b08:	09213423          	sd	s2,136(sp)
    80005b0c:	09313823          	sd	s3,144(sp)
    80005b10:	09413c23          	sd	s4,152(sp)
    80005b14:	0b513023          	sd	s5,160(sp)
    80005b18:	0b613423          	sd	s6,168(sp)
    80005b1c:	0b713823          	sd	s7,176(sp)
    80005b20:	0b813c23          	sd	s8,184(sp)
    80005b24:	0d913023          	sd	s9,192(sp)
    80005b28:	0da13423          	sd	s10,200(sp)
    80005b2c:	0db13823          	sd	s11,208(sp)
    80005b30:	0dc13c23          	sd	t3,216(sp)
    80005b34:	0fd13023          	sd	t4,224(sp)
    80005b38:	0fe13423          	sd	t5,232(sp)
    80005b3c:	0ff13823          	sd	t6,240(sp)
    80005b40:	cd5ff0ef          	jal	ra,80005814 <kerneltrap>
    80005b44:	00013083          	ld	ra,0(sp)
    80005b48:	00813103          	ld	sp,8(sp)
    80005b4c:	01013183          	ld	gp,16(sp)
    80005b50:	02013283          	ld	t0,32(sp)
    80005b54:	02813303          	ld	t1,40(sp)
    80005b58:	03013383          	ld	t2,48(sp)
    80005b5c:	03813403          	ld	s0,56(sp)
    80005b60:	04013483          	ld	s1,64(sp)
    80005b64:	04813503          	ld	a0,72(sp)
    80005b68:	05013583          	ld	a1,80(sp)
    80005b6c:	05813603          	ld	a2,88(sp)
    80005b70:	06013683          	ld	a3,96(sp)
    80005b74:	06813703          	ld	a4,104(sp)
    80005b78:	07013783          	ld	a5,112(sp)
    80005b7c:	07813803          	ld	a6,120(sp)
    80005b80:	08013883          	ld	a7,128(sp)
    80005b84:	08813903          	ld	s2,136(sp)
    80005b88:	09013983          	ld	s3,144(sp)
    80005b8c:	09813a03          	ld	s4,152(sp)
    80005b90:	0a013a83          	ld	s5,160(sp)
    80005b94:	0a813b03          	ld	s6,168(sp)
    80005b98:	0b013b83          	ld	s7,176(sp)
    80005b9c:	0b813c03          	ld	s8,184(sp)
    80005ba0:	0c013c83          	ld	s9,192(sp)
    80005ba4:	0c813d03          	ld	s10,200(sp)
    80005ba8:	0d013d83          	ld	s11,208(sp)
    80005bac:	0d813e03          	ld	t3,216(sp)
    80005bb0:	0e013e83          	ld	t4,224(sp)
    80005bb4:	0e813f03          	ld	t5,232(sp)
    80005bb8:	0f013f83          	ld	t6,240(sp)
    80005bbc:	10010113          	addi	sp,sp,256
    80005bc0:	10200073          	sret
    80005bc4:	00000013          	nop
    80005bc8:	00000013          	nop
    80005bcc:	00000013          	nop

0000000080005bd0 <timervec>:
    80005bd0:	34051573          	csrrw	a0,mscratch,a0
    80005bd4:	00b53023          	sd	a1,0(a0)
    80005bd8:	00c53423          	sd	a2,8(a0)
    80005bdc:	00d53823          	sd	a3,16(a0)
    80005be0:	01853583          	ld	a1,24(a0)
    80005be4:	02053603          	ld	a2,32(a0)
    80005be8:	0005b683          	ld	a3,0(a1)
    80005bec:	00c686b3          	add	a3,a3,a2
    80005bf0:	00d5b023          	sd	a3,0(a1)
    80005bf4:	00200593          	li	a1,2
    80005bf8:	14459073          	csrw	sip,a1
    80005bfc:	01053683          	ld	a3,16(a0)
    80005c00:	00853603          	ld	a2,8(a0)
    80005c04:	00053583          	ld	a1,0(a0)
    80005c08:	34051573          	csrrw	a0,mscratch,a0
    80005c0c:	30200073          	mret

0000000080005c10 <plicinit>:
    80005c10:	ff010113          	addi	sp,sp,-16
    80005c14:	00813423          	sd	s0,8(sp)
    80005c18:	01010413          	addi	s0,sp,16
    80005c1c:	00813403          	ld	s0,8(sp)
    80005c20:	0c0007b7          	lui	a5,0xc000
    80005c24:	00100713          	li	a4,1
    80005c28:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80005c2c:	00e7a223          	sw	a4,4(a5)
    80005c30:	01010113          	addi	sp,sp,16
    80005c34:	00008067          	ret

0000000080005c38 <plicinithart>:
    80005c38:	ff010113          	addi	sp,sp,-16
    80005c3c:	00813023          	sd	s0,0(sp)
    80005c40:	00113423          	sd	ra,8(sp)
    80005c44:	01010413          	addi	s0,sp,16
    80005c48:	00000097          	auipc	ra,0x0
    80005c4c:	a4c080e7          	jalr	-1460(ra) # 80005694 <cpuid>
    80005c50:	0085171b          	slliw	a4,a0,0x8
    80005c54:	0c0027b7          	lui	a5,0xc002
    80005c58:	00e787b3          	add	a5,a5,a4
    80005c5c:	40200713          	li	a4,1026
    80005c60:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80005c64:	00813083          	ld	ra,8(sp)
    80005c68:	00013403          	ld	s0,0(sp)
    80005c6c:	00d5151b          	slliw	a0,a0,0xd
    80005c70:	0c2017b7          	lui	a5,0xc201
    80005c74:	00a78533          	add	a0,a5,a0
    80005c78:	00052023          	sw	zero,0(a0)
    80005c7c:	01010113          	addi	sp,sp,16
    80005c80:	00008067          	ret

0000000080005c84 <plic_claim>:
    80005c84:	ff010113          	addi	sp,sp,-16
    80005c88:	00813023          	sd	s0,0(sp)
    80005c8c:	00113423          	sd	ra,8(sp)
    80005c90:	01010413          	addi	s0,sp,16
    80005c94:	00000097          	auipc	ra,0x0
    80005c98:	a00080e7          	jalr	-1536(ra) # 80005694 <cpuid>
    80005c9c:	00813083          	ld	ra,8(sp)
    80005ca0:	00013403          	ld	s0,0(sp)
    80005ca4:	00d5151b          	slliw	a0,a0,0xd
    80005ca8:	0c2017b7          	lui	a5,0xc201
    80005cac:	00a78533          	add	a0,a5,a0
    80005cb0:	00452503          	lw	a0,4(a0)
    80005cb4:	01010113          	addi	sp,sp,16
    80005cb8:	00008067          	ret

0000000080005cbc <plic_complete>:
    80005cbc:	fe010113          	addi	sp,sp,-32
    80005cc0:	00813823          	sd	s0,16(sp)
    80005cc4:	00913423          	sd	s1,8(sp)
    80005cc8:	00113c23          	sd	ra,24(sp)
    80005ccc:	02010413          	addi	s0,sp,32
    80005cd0:	00050493          	mv	s1,a0
    80005cd4:	00000097          	auipc	ra,0x0
    80005cd8:	9c0080e7          	jalr	-1600(ra) # 80005694 <cpuid>
    80005cdc:	01813083          	ld	ra,24(sp)
    80005ce0:	01013403          	ld	s0,16(sp)
    80005ce4:	00d5179b          	slliw	a5,a0,0xd
    80005ce8:	0c201737          	lui	a4,0xc201
    80005cec:	00f707b3          	add	a5,a4,a5
    80005cf0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80005cf4:	00813483          	ld	s1,8(sp)
    80005cf8:	02010113          	addi	sp,sp,32
    80005cfc:	00008067          	ret

0000000080005d00 <consolewrite>:
    80005d00:	fb010113          	addi	sp,sp,-80
    80005d04:	04813023          	sd	s0,64(sp)
    80005d08:	04113423          	sd	ra,72(sp)
    80005d0c:	02913c23          	sd	s1,56(sp)
    80005d10:	03213823          	sd	s2,48(sp)
    80005d14:	03313423          	sd	s3,40(sp)
    80005d18:	03413023          	sd	s4,32(sp)
    80005d1c:	01513c23          	sd	s5,24(sp)
    80005d20:	05010413          	addi	s0,sp,80
    80005d24:	06c05c63          	blez	a2,80005d9c <consolewrite+0x9c>
    80005d28:	00060993          	mv	s3,a2
    80005d2c:	00050a13          	mv	s4,a0
    80005d30:	00058493          	mv	s1,a1
    80005d34:	00000913          	li	s2,0
    80005d38:	fff00a93          	li	s5,-1
    80005d3c:	01c0006f          	j	80005d58 <consolewrite+0x58>
    80005d40:	fbf44503          	lbu	a0,-65(s0)
    80005d44:	0019091b          	addiw	s2,s2,1
    80005d48:	00148493          	addi	s1,s1,1
    80005d4c:	00001097          	auipc	ra,0x1
    80005d50:	a9c080e7          	jalr	-1380(ra) # 800067e8 <uartputc>
    80005d54:	03298063          	beq	s3,s2,80005d74 <consolewrite+0x74>
    80005d58:	00048613          	mv	a2,s1
    80005d5c:	00100693          	li	a3,1
    80005d60:	000a0593          	mv	a1,s4
    80005d64:	fbf40513          	addi	a0,s0,-65
    80005d68:	00000097          	auipc	ra,0x0
    80005d6c:	9e4080e7          	jalr	-1564(ra) # 8000574c <either_copyin>
    80005d70:	fd5518e3          	bne	a0,s5,80005d40 <consolewrite+0x40>
    80005d74:	04813083          	ld	ra,72(sp)
    80005d78:	04013403          	ld	s0,64(sp)
    80005d7c:	03813483          	ld	s1,56(sp)
    80005d80:	02813983          	ld	s3,40(sp)
    80005d84:	02013a03          	ld	s4,32(sp)
    80005d88:	01813a83          	ld	s5,24(sp)
    80005d8c:	00090513          	mv	a0,s2
    80005d90:	03013903          	ld	s2,48(sp)
    80005d94:	05010113          	addi	sp,sp,80
    80005d98:	00008067          	ret
    80005d9c:	00000913          	li	s2,0
    80005da0:	fd5ff06f          	j	80005d74 <consolewrite+0x74>

0000000080005da4 <consoleread>:
    80005da4:	f9010113          	addi	sp,sp,-112
    80005da8:	06813023          	sd	s0,96(sp)
    80005dac:	04913c23          	sd	s1,88(sp)
    80005db0:	05213823          	sd	s2,80(sp)
    80005db4:	05313423          	sd	s3,72(sp)
    80005db8:	05413023          	sd	s4,64(sp)
    80005dbc:	03513c23          	sd	s5,56(sp)
    80005dc0:	03613823          	sd	s6,48(sp)
    80005dc4:	03713423          	sd	s7,40(sp)
    80005dc8:	03813023          	sd	s8,32(sp)
    80005dcc:	06113423          	sd	ra,104(sp)
    80005dd0:	01913c23          	sd	s9,24(sp)
    80005dd4:	07010413          	addi	s0,sp,112
    80005dd8:	00060b93          	mv	s7,a2
    80005ddc:	00050913          	mv	s2,a0
    80005de0:	00058c13          	mv	s8,a1
    80005de4:	00060b1b          	sext.w	s6,a2
    80005de8:	0000c497          	auipc	s1,0xc
    80005dec:	de048493          	addi	s1,s1,-544 # 80011bc8 <cons>
    80005df0:	00400993          	li	s3,4
    80005df4:	fff00a13          	li	s4,-1
    80005df8:	00a00a93          	li	s5,10
    80005dfc:	05705e63          	blez	s7,80005e58 <consoleread+0xb4>
    80005e00:	09c4a703          	lw	a4,156(s1)
    80005e04:	0984a783          	lw	a5,152(s1)
    80005e08:	0007071b          	sext.w	a4,a4
    80005e0c:	08e78463          	beq	a5,a4,80005e94 <consoleread+0xf0>
    80005e10:	07f7f713          	andi	a4,a5,127
    80005e14:	00e48733          	add	a4,s1,a4
    80005e18:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80005e1c:	0017869b          	addiw	a3,a5,1
    80005e20:	08d4ac23          	sw	a3,152(s1)
    80005e24:	00070c9b          	sext.w	s9,a4
    80005e28:	0b370663          	beq	a4,s3,80005ed4 <consoleread+0x130>
    80005e2c:	00100693          	li	a3,1
    80005e30:	f9f40613          	addi	a2,s0,-97
    80005e34:	000c0593          	mv	a1,s8
    80005e38:	00090513          	mv	a0,s2
    80005e3c:	f8e40fa3          	sb	a4,-97(s0)
    80005e40:	00000097          	auipc	ra,0x0
    80005e44:	8c0080e7          	jalr	-1856(ra) # 80005700 <either_copyout>
    80005e48:	01450863          	beq	a0,s4,80005e58 <consoleread+0xb4>
    80005e4c:	001c0c13          	addi	s8,s8,1
    80005e50:	fffb8b9b          	addiw	s7,s7,-1
    80005e54:	fb5c94e3          	bne	s9,s5,80005dfc <consoleread+0x58>
    80005e58:	000b851b          	sext.w	a0,s7
    80005e5c:	06813083          	ld	ra,104(sp)
    80005e60:	06013403          	ld	s0,96(sp)
    80005e64:	05813483          	ld	s1,88(sp)
    80005e68:	05013903          	ld	s2,80(sp)
    80005e6c:	04813983          	ld	s3,72(sp)
    80005e70:	04013a03          	ld	s4,64(sp)
    80005e74:	03813a83          	ld	s5,56(sp)
    80005e78:	02813b83          	ld	s7,40(sp)
    80005e7c:	02013c03          	ld	s8,32(sp)
    80005e80:	01813c83          	ld	s9,24(sp)
    80005e84:	40ab053b          	subw	a0,s6,a0
    80005e88:	03013b03          	ld	s6,48(sp)
    80005e8c:	07010113          	addi	sp,sp,112
    80005e90:	00008067          	ret
    80005e94:	00001097          	auipc	ra,0x1
    80005e98:	1d8080e7          	jalr	472(ra) # 8000706c <push_on>
    80005e9c:	0984a703          	lw	a4,152(s1)
    80005ea0:	09c4a783          	lw	a5,156(s1)
    80005ea4:	0007879b          	sext.w	a5,a5
    80005ea8:	fef70ce3          	beq	a4,a5,80005ea0 <consoleread+0xfc>
    80005eac:	00001097          	auipc	ra,0x1
    80005eb0:	234080e7          	jalr	564(ra) # 800070e0 <pop_on>
    80005eb4:	0984a783          	lw	a5,152(s1)
    80005eb8:	07f7f713          	andi	a4,a5,127
    80005ebc:	00e48733          	add	a4,s1,a4
    80005ec0:	01874703          	lbu	a4,24(a4)
    80005ec4:	0017869b          	addiw	a3,a5,1
    80005ec8:	08d4ac23          	sw	a3,152(s1)
    80005ecc:	00070c9b          	sext.w	s9,a4
    80005ed0:	f5371ee3          	bne	a4,s3,80005e2c <consoleread+0x88>
    80005ed4:	000b851b          	sext.w	a0,s7
    80005ed8:	f96bf2e3          	bgeu	s7,s6,80005e5c <consoleread+0xb8>
    80005edc:	08f4ac23          	sw	a5,152(s1)
    80005ee0:	f7dff06f          	j	80005e5c <consoleread+0xb8>

0000000080005ee4 <consputc>:
    80005ee4:	10000793          	li	a5,256
    80005ee8:	00f50663          	beq	a0,a5,80005ef4 <consputc+0x10>
    80005eec:	00001317          	auipc	t1,0x1
    80005ef0:	9f430067          	jr	-1548(t1) # 800068e0 <uartputc_sync>
    80005ef4:	ff010113          	addi	sp,sp,-16
    80005ef8:	00113423          	sd	ra,8(sp)
    80005efc:	00813023          	sd	s0,0(sp)
    80005f00:	01010413          	addi	s0,sp,16
    80005f04:	00800513          	li	a0,8
    80005f08:	00001097          	auipc	ra,0x1
    80005f0c:	9d8080e7          	jalr	-1576(ra) # 800068e0 <uartputc_sync>
    80005f10:	02000513          	li	a0,32
    80005f14:	00001097          	auipc	ra,0x1
    80005f18:	9cc080e7          	jalr	-1588(ra) # 800068e0 <uartputc_sync>
    80005f1c:	00013403          	ld	s0,0(sp)
    80005f20:	00813083          	ld	ra,8(sp)
    80005f24:	00800513          	li	a0,8
    80005f28:	01010113          	addi	sp,sp,16
    80005f2c:	00001317          	auipc	t1,0x1
    80005f30:	9b430067          	jr	-1612(t1) # 800068e0 <uartputc_sync>

0000000080005f34 <consoleintr>:
    80005f34:	fe010113          	addi	sp,sp,-32
    80005f38:	00813823          	sd	s0,16(sp)
    80005f3c:	00913423          	sd	s1,8(sp)
    80005f40:	01213023          	sd	s2,0(sp)
    80005f44:	00113c23          	sd	ra,24(sp)
    80005f48:	02010413          	addi	s0,sp,32
    80005f4c:	0000c917          	auipc	s2,0xc
    80005f50:	c7c90913          	addi	s2,s2,-900 # 80011bc8 <cons>
    80005f54:	00050493          	mv	s1,a0
    80005f58:	00090513          	mv	a0,s2
    80005f5c:	00001097          	auipc	ra,0x1
    80005f60:	e40080e7          	jalr	-448(ra) # 80006d9c <acquire>
    80005f64:	02048c63          	beqz	s1,80005f9c <consoleintr+0x68>
    80005f68:	0a092783          	lw	a5,160(s2)
    80005f6c:	09892703          	lw	a4,152(s2)
    80005f70:	07f00693          	li	a3,127
    80005f74:	40e7873b          	subw	a4,a5,a4
    80005f78:	02e6e263          	bltu	a3,a4,80005f9c <consoleintr+0x68>
    80005f7c:	00d00713          	li	a4,13
    80005f80:	04e48063          	beq	s1,a4,80005fc0 <consoleintr+0x8c>
    80005f84:	07f7f713          	andi	a4,a5,127
    80005f88:	00e90733          	add	a4,s2,a4
    80005f8c:	0017879b          	addiw	a5,a5,1
    80005f90:	0af92023          	sw	a5,160(s2)
    80005f94:	00970c23          	sb	s1,24(a4)
    80005f98:	08f92e23          	sw	a5,156(s2)
    80005f9c:	01013403          	ld	s0,16(sp)
    80005fa0:	01813083          	ld	ra,24(sp)
    80005fa4:	00813483          	ld	s1,8(sp)
    80005fa8:	00013903          	ld	s2,0(sp)
    80005fac:	0000c517          	auipc	a0,0xc
    80005fb0:	c1c50513          	addi	a0,a0,-996 # 80011bc8 <cons>
    80005fb4:	02010113          	addi	sp,sp,32
    80005fb8:	00001317          	auipc	t1,0x1
    80005fbc:	eb030067          	jr	-336(t1) # 80006e68 <release>
    80005fc0:	00a00493          	li	s1,10
    80005fc4:	fc1ff06f          	j	80005f84 <consoleintr+0x50>

0000000080005fc8 <consoleinit>:
    80005fc8:	fe010113          	addi	sp,sp,-32
    80005fcc:	00113c23          	sd	ra,24(sp)
    80005fd0:	00813823          	sd	s0,16(sp)
    80005fd4:	00913423          	sd	s1,8(sp)
    80005fd8:	02010413          	addi	s0,sp,32
    80005fdc:	0000c497          	auipc	s1,0xc
    80005fe0:	bec48493          	addi	s1,s1,-1044 # 80011bc8 <cons>
    80005fe4:	00048513          	mv	a0,s1
    80005fe8:	00002597          	auipc	a1,0x2
    80005fec:	6d858593          	addi	a1,a1,1752 # 800086c0 <CONSOLE_STATUS+0x6b0>
    80005ff0:	00001097          	auipc	ra,0x1
    80005ff4:	d88080e7          	jalr	-632(ra) # 80006d78 <initlock>
    80005ff8:	00000097          	auipc	ra,0x0
    80005ffc:	7ac080e7          	jalr	1964(ra) # 800067a4 <uartinit>
    80006000:	01813083          	ld	ra,24(sp)
    80006004:	01013403          	ld	s0,16(sp)
    80006008:	00000797          	auipc	a5,0x0
    8000600c:	d9c78793          	addi	a5,a5,-612 # 80005da4 <consoleread>
    80006010:	0af4bc23          	sd	a5,184(s1)
    80006014:	00000797          	auipc	a5,0x0
    80006018:	cec78793          	addi	a5,a5,-788 # 80005d00 <consolewrite>
    8000601c:	0cf4b023          	sd	a5,192(s1)
    80006020:	00813483          	ld	s1,8(sp)
    80006024:	02010113          	addi	sp,sp,32
    80006028:	00008067          	ret

000000008000602c <console_read>:
    8000602c:	ff010113          	addi	sp,sp,-16
    80006030:	00813423          	sd	s0,8(sp)
    80006034:	01010413          	addi	s0,sp,16
    80006038:	00813403          	ld	s0,8(sp)
    8000603c:	0000c317          	auipc	t1,0xc
    80006040:	c4433303          	ld	t1,-956(t1) # 80011c80 <devsw+0x10>
    80006044:	01010113          	addi	sp,sp,16
    80006048:	00030067          	jr	t1

000000008000604c <console_write>:
    8000604c:	ff010113          	addi	sp,sp,-16
    80006050:	00813423          	sd	s0,8(sp)
    80006054:	01010413          	addi	s0,sp,16
    80006058:	00813403          	ld	s0,8(sp)
    8000605c:	0000c317          	auipc	t1,0xc
    80006060:	c2c33303          	ld	t1,-980(t1) # 80011c88 <devsw+0x18>
    80006064:	01010113          	addi	sp,sp,16
    80006068:	00030067          	jr	t1

000000008000606c <panic>:
    8000606c:	fe010113          	addi	sp,sp,-32
    80006070:	00113c23          	sd	ra,24(sp)
    80006074:	00813823          	sd	s0,16(sp)
    80006078:	00913423          	sd	s1,8(sp)
    8000607c:	02010413          	addi	s0,sp,32
    80006080:	00050493          	mv	s1,a0
    80006084:	00002517          	auipc	a0,0x2
    80006088:	64450513          	addi	a0,a0,1604 # 800086c8 <CONSOLE_STATUS+0x6b8>
    8000608c:	0000c797          	auipc	a5,0xc
    80006090:	c807ae23          	sw	zero,-868(a5) # 80011d28 <pr+0x18>
    80006094:	00000097          	auipc	ra,0x0
    80006098:	034080e7          	jalr	52(ra) # 800060c8 <__printf>
    8000609c:	00048513          	mv	a0,s1
    800060a0:	00000097          	auipc	ra,0x0
    800060a4:	028080e7          	jalr	40(ra) # 800060c8 <__printf>
    800060a8:	00002517          	auipc	a0,0x2
    800060ac:	0d850513          	addi	a0,a0,216 # 80008180 <CONSOLE_STATUS+0x170>
    800060b0:	00000097          	auipc	ra,0x0
    800060b4:	018080e7          	jalr	24(ra) # 800060c8 <__printf>
    800060b8:	00100793          	li	a5,1
    800060bc:	00003717          	auipc	a4,0x3
    800060c0:	92f72623          	sw	a5,-1748(a4) # 800089e8 <panicked>
    800060c4:	0000006f          	j	800060c4 <panic+0x58>

00000000800060c8 <__printf>:
    800060c8:	f3010113          	addi	sp,sp,-208
    800060cc:	08813023          	sd	s0,128(sp)
    800060d0:	07313423          	sd	s3,104(sp)
    800060d4:	09010413          	addi	s0,sp,144
    800060d8:	05813023          	sd	s8,64(sp)
    800060dc:	08113423          	sd	ra,136(sp)
    800060e0:	06913c23          	sd	s1,120(sp)
    800060e4:	07213823          	sd	s2,112(sp)
    800060e8:	07413023          	sd	s4,96(sp)
    800060ec:	05513c23          	sd	s5,88(sp)
    800060f0:	05613823          	sd	s6,80(sp)
    800060f4:	05713423          	sd	s7,72(sp)
    800060f8:	03913c23          	sd	s9,56(sp)
    800060fc:	03a13823          	sd	s10,48(sp)
    80006100:	03b13423          	sd	s11,40(sp)
    80006104:	0000c317          	auipc	t1,0xc
    80006108:	c0c30313          	addi	t1,t1,-1012 # 80011d10 <pr>
    8000610c:	01832c03          	lw	s8,24(t1)
    80006110:	00b43423          	sd	a1,8(s0)
    80006114:	00c43823          	sd	a2,16(s0)
    80006118:	00d43c23          	sd	a3,24(s0)
    8000611c:	02e43023          	sd	a4,32(s0)
    80006120:	02f43423          	sd	a5,40(s0)
    80006124:	03043823          	sd	a6,48(s0)
    80006128:	03143c23          	sd	a7,56(s0)
    8000612c:	00050993          	mv	s3,a0
    80006130:	4a0c1663          	bnez	s8,800065dc <__printf+0x514>
    80006134:	60098c63          	beqz	s3,8000674c <__printf+0x684>
    80006138:	0009c503          	lbu	a0,0(s3)
    8000613c:	00840793          	addi	a5,s0,8
    80006140:	f6f43c23          	sd	a5,-136(s0)
    80006144:	00000493          	li	s1,0
    80006148:	22050063          	beqz	a0,80006368 <__printf+0x2a0>
    8000614c:	00002a37          	lui	s4,0x2
    80006150:	00018ab7          	lui	s5,0x18
    80006154:	000f4b37          	lui	s6,0xf4
    80006158:	00989bb7          	lui	s7,0x989
    8000615c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006160:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006164:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006168:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000616c:	00148c9b          	addiw	s9,s1,1
    80006170:	02500793          	li	a5,37
    80006174:	01998933          	add	s2,s3,s9
    80006178:	38f51263          	bne	a0,a5,800064fc <__printf+0x434>
    8000617c:	00094783          	lbu	a5,0(s2)
    80006180:	00078c9b          	sext.w	s9,a5
    80006184:	1e078263          	beqz	a5,80006368 <__printf+0x2a0>
    80006188:	0024849b          	addiw	s1,s1,2
    8000618c:	07000713          	li	a4,112
    80006190:	00998933          	add	s2,s3,s1
    80006194:	38e78a63          	beq	a5,a4,80006528 <__printf+0x460>
    80006198:	20f76863          	bltu	a4,a5,800063a8 <__printf+0x2e0>
    8000619c:	42a78863          	beq	a5,a0,800065cc <__printf+0x504>
    800061a0:	06400713          	li	a4,100
    800061a4:	40e79663          	bne	a5,a4,800065b0 <__printf+0x4e8>
    800061a8:	f7843783          	ld	a5,-136(s0)
    800061ac:	0007a603          	lw	a2,0(a5)
    800061b0:	00878793          	addi	a5,a5,8
    800061b4:	f6f43c23          	sd	a5,-136(s0)
    800061b8:	42064a63          	bltz	a2,800065ec <__printf+0x524>
    800061bc:	00a00713          	li	a4,10
    800061c0:	02e677bb          	remuw	a5,a2,a4
    800061c4:	00002d97          	auipc	s11,0x2
    800061c8:	52cd8d93          	addi	s11,s11,1324 # 800086f0 <digits>
    800061cc:	00900593          	li	a1,9
    800061d0:	0006051b          	sext.w	a0,a2
    800061d4:	00000c93          	li	s9,0
    800061d8:	02079793          	slli	a5,a5,0x20
    800061dc:	0207d793          	srli	a5,a5,0x20
    800061e0:	00fd87b3          	add	a5,s11,a5
    800061e4:	0007c783          	lbu	a5,0(a5)
    800061e8:	02e656bb          	divuw	a3,a2,a4
    800061ec:	f8f40023          	sb	a5,-128(s0)
    800061f0:	14c5d863          	bge	a1,a2,80006340 <__printf+0x278>
    800061f4:	06300593          	li	a1,99
    800061f8:	00100c93          	li	s9,1
    800061fc:	02e6f7bb          	remuw	a5,a3,a4
    80006200:	02079793          	slli	a5,a5,0x20
    80006204:	0207d793          	srli	a5,a5,0x20
    80006208:	00fd87b3          	add	a5,s11,a5
    8000620c:	0007c783          	lbu	a5,0(a5)
    80006210:	02e6d73b          	divuw	a4,a3,a4
    80006214:	f8f400a3          	sb	a5,-127(s0)
    80006218:	12a5f463          	bgeu	a1,a0,80006340 <__printf+0x278>
    8000621c:	00a00693          	li	a3,10
    80006220:	00900593          	li	a1,9
    80006224:	02d777bb          	remuw	a5,a4,a3
    80006228:	02079793          	slli	a5,a5,0x20
    8000622c:	0207d793          	srli	a5,a5,0x20
    80006230:	00fd87b3          	add	a5,s11,a5
    80006234:	0007c503          	lbu	a0,0(a5)
    80006238:	02d757bb          	divuw	a5,a4,a3
    8000623c:	f8a40123          	sb	a0,-126(s0)
    80006240:	48e5f263          	bgeu	a1,a4,800066c4 <__printf+0x5fc>
    80006244:	06300513          	li	a0,99
    80006248:	02d7f5bb          	remuw	a1,a5,a3
    8000624c:	02059593          	slli	a1,a1,0x20
    80006250:	0205d593          	srli	a1,a1,0x20
    80006254:	00bd85b3          	add	a1,s11,a1
    80006258:	0005c583          	lbu	a1,0(a1)
    8000625c:	02d7d7bb          	divuw	a5,a5,a3
    80006260:	f8b401a3          	sb	a1,-125(s0)
    80006264:	48e57263          	bgeu	a0,a4,800066e8 <__printf+0x620>
    80006268:	3e700513          	li	a0,999
    8000626c:	02d7f5bb          	remuw	a1,a5,a3
    80006270:	02059593          	slli	a1,a1,0x20
    80006274:	0205d593          	srli	a1,a1,0x20
    80006278:	00bd85b3          	add	a1,s11,a1
    8000627c:	0005c583          	lbu	a1,0(a1)
    80006280:	02d7d7bb          	divuw	a5,a5,a3
    80006284:	f8b40223          	sb	a1,-124(s0)
    80006288:	46e57663          	bgeu	a0,a4,800066f4 <__printf+0x62c>
    8000628c:	02d7f5bb          	remuw	a1,a5,a3
    80006290:	02059593          	slli	a1,a1,0x20
    80006294:	0205d593          	srli	a1,a1,0x20
    80006298:	00bd85b3          	add	a1,s11,a1
    8000629c:	0005c583          	lbu	a1,0(a1)
    800062a0:	02d7d7bb          	divuw	a5,a5,a3
    800062a4:	f8b402a3          	sb	a1,-123(s0)
    800062a8:	46ea7863          	bgeu	s4,a4,80006718 <__printf+0x650>
    800062ac:	02d7f5bb          	remuw	a1,a5,a3
    800062b0:	02059593          	slli	a1,a1,0x20
    800062b4:	0205d593          	srli	a1,a1,0x20
    800062b8:	00bd85b3          	add	a1,s11,a1
    800062bc:	0005c583          	lbu	a1,0(a1)
    800062c0:	02d7d7bb          	divuw	a5,a5,a3
    800062c4:	f8b40323          	sb	a1,-122(s0)
    800062c8:	3eeaf863          	bgeu	s5,a4,800066b8 <__printf+0x5f0>
    800062cc:	02d7f5bb          	remuw	a1,a5,a3
    800062d0:	02059593          	slli	a1,a1,0x20
    800062d4:	0205d593          	srli	a1,a1,0x20
    800062d8:	00bd85b3          	add	a1,s11,a1
    800062dc:	0005c583          	lbu	a1,0(a1)
    800062e0:	02d7d7bb          	divuw	a5,a5,a3
    800062e4:	f8b403a3          	sb	a1,-121(s0)
    800062e8:	42eb7e63          	bgeu	s6,a4,80006724 <__printf+0x65c>
    800062ec:	02d7f5bb          	remuw	a1,a5,a3
    800062f0:	02059593          	slli	a1,a1,0x20
    800062f4:	0205d593          	srli	a1,a1,0x20
    800062f8:	00bd85b3          	add	a1,s11,a1
    800062fc:	0005c583          	lbu	a1,0(a1)
    80006300:	02d7d7bb          	divuw	a5,a5,a3
    80006304:	f8b40423          	sb	a1,-120(s0)
    80006308:	42ebfc63          	bgeu	s7,a4,80006740 <__printf+0x678>
    8000630c:	02079793          	slli	a5,a5,0x20
    80006310:	0207d793          	srli	a5,a5,0x20
    80006314:	00fd8db3          	add	s11,s11,a5
    80006318:	000dc703          	lbu	a4,0(s11)
    8000631c:	00a00793          	li	a5,10
    80006320:	00900c93          	li	s9,9
    80006324:	f8e404a3          	sb	a4,-119(s0)
    80006328:	00065c63          	bgez	a2,80006340 <__printf+0x278>
    8000632c:	f9040713          	addi	a4,s0,-112
    80006330:	00f70733          	add	a4,a4,a5
    80006334:	02d00693          	li	a3,45
    80006338:	fed70823          	sb	a3,-16(a4)
    8000633c:	00078c93          	mv	s9,a5
    80006340:	f8040793          	addi	a5,s0,-128
    80006344:	01978cb3          	add	s9,a5,s9
    80006348:	f7f40d13          	addi	s10,s0,-129
    8000634c:	000cc503          	lbu	a0,0(s9)
    80006350:	fffc8c93          	addi	s9,s9,-1
    80006354:	00000097          	auipc	ra,0x0
    80006358:	b90080e7          	jalr	-1136(ra) # 80005ee4 <consputc>
    8000635c:	ffac98e3          	bne	s9,s10,8000634c <__printf+0x284>
    80006360:	00094503          	lbu	a0,0(s2)
    80006364:	e00514e3          	bnez	a0,8000616c <__printf+0xa4>
    80006368:	1a0c1663          	bnez	s8,80006514 <__printf+0x44c>
    8000636c:	08813083          	ld	ra,136(sp)
    80006370:	08013403          	ld	s0,128(sp)
    80006374:	07813483          	ld	s1,120(sp)
    80006378:	07013903          	ld	s2,112(sp)
    8000637c:	06813983          	ld	s3,104(sp)
    80006380:	06013a03          	ld	s4,96(sp)
    80006384:	05813a83          	ld	s5,88(sp)
    80006388:	05013b03          	ld	s6,80(sp)
    8000638c:	04813b83          	ld	s7,72(sp)
    80006390:	04013c03          	ld	s8,64(sp)
    80006394:	03813c83          	ld	s9,56(sp)
    80006398:	03013d03          	ld	s10,48(sp)
    8000639c:	02813d83          	ld	s11,40(sp)
    800063a0:	0d010113          	addi	sp,sp,208
    800063a4:	00008067          	ret
    800063a8:	07300713          	li	a4,115
    800063ac:	1ce78a63          	beq	a5,a4,80006580 <__printf+0x4b8>
    800063b0:	07800713          	li	a4,120
    800063b4:	1ee79e63          	bne	a5,a4,800065b0 <__printf+0x4e8>
    800063b8:	f7843783          	ld	a5,-136(s0)
    800063bc:	0007a703          	lw	a4,0(a5)
    800063c0:	00878793          	addi	a5,a5,8
    800063c4:	f6f43c23          	sd	a5,-136(s0)
    800063c8:	28074263          	bltz	a4,8000664c <__printf+0x584>
    800063cc:	00002d97          	auipc	s11,0x2
    800063d0:	324d8d93          	addi	s11,s11,804 # 800086f0 <digits>
    800063d4:	00f77793          	andi	a5,a4,15
    800063d8:	00fd87b3          	add	a5,s11,a5
    800063dc:	0007c683          	lbu	a3,0(a5)
    800063e0:	00f00613          	li	a2,15
    800063e4:	0007079b          	sext.w	a5,a4
    800063e8:	f8d40023          	sb	a3,-128(s0)
    800063ec:	0047559b          	srliw	a1,a4,0x4
    800063f0:	0047569b          	srliw	a3,a4,0x4
    800063f4:	00000c93          	li	s9,0
    800063f8:	0ee65063          	bge	a2,a4,800064d8 <__printf+0x410>
    800063fc:	00f6f693          	andi	a3,a3,15
    80006400:	00dd86b3          	add	a3,s11,a3
    80006404:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006408:	0087d79b          	srliw	a5,a5,0x8
    8000640c:	00100c93          	li	s9,1
    80006410:	f8d400a3          	sb	a3,-127(s0)
    80006414:	0cb67263          	bgeu	a2,a1,800064d8 <__printf+0x410>
    80006418:	00f7f693          	andi	a3,a5,15
    8000641c:	00dd86b3          	add	a3,s11,a3
    80006420:	0006c583          	lbu	a1,0(a3)
    80006424:	00f00613          	li	a2,15
    80006428:	0047d69b          	srliw	a3,a5,0x4
    8000642c:	f8b40123          	sb	a1,-126(s0)
    80006430:	0047d593          	srli	a1,a5,0x4
    80006434:	28f67e63          	bgeu	a2,a5,800066d0 <__printf+0x608>
    80006438:	00f6f693          	andi	a3,a3,15
    8000643c:	00dd86b3          	add	a3,s11,a3
    80006440:	0006c503          	lbu	a0,0(a3)
    80006444:	0087d813          	srli	a6,a5,0x8
    80006448:	0087d69b          	srliw	a3,a5,0x8
    8000644c:	f8a401a3          	sb	a0,-125(s0)
    80006450:	28b67663          	bgeu	a2,a1,800066dc <__printf+0x614>
    80006454:	00f6f693          	andi	a3,a3,15
    80006458:	00dd86b3          	add	a3,s11,a3
    8000645c:	0006c583          	lbu	a1,0(a3)
    80006460:	00c7d513          	srli	a0,a5,0xc
    80006464:	00c7d69b          	srliw	a3,a5,0xc
    80006468:	f8b40223          	sb	a1,-124(s0)
    8000646c:	29067a63          	bgeu	a2,a6,80006700 <__printf+0x638>
    80006470:	00f6f693          	andi	a3,a3,15
    80006474:	00dd86b3          	add	a3,s11,a3
    80006478:	0006c583          	lbu	a1,0(a3)
    8000647c:	0107d813          	srli	a6,a5,0x10
    80006480:	0107d69b          	srliw	a3,a5,0x10
    80006484:	f8b402a3          	sb	a1,-123(s0)
    80006488:	28a67263          	bgeu	a2,a0,8000670c <__printf+0x644>
    8000648c:	00f6f693          	andi	a3,a3,15
    80006490:	00dd86b3          	add	a3,s11,a3
    80006494:	0006c683          	lbu	a3,0(a3)
    80006498:	0147d79b          	srliw	a5,a5,0x14
    8000649c:	f8d40323          	sb	a3,-122(s0)
    800064a0:	21067663          	bgeu	a2,a6,800066ac <__printf+0x5e4>
    800064a4:	02079793          	slli	a5,a5,0x20
    800064a8:	0207d793          	srli	a5,a5,0x20
    800064ac:	00fd8db3          	add	s11,s11,a5
    800064b0:	000dc683          	lbu	a3,0(s11)
    800064b4:	00800793          	li	a5,8
    800064b8:	00700c93          	li	s9,7
    800064bc:	f8d403a3          	sb	a3,-121(s0)
    800064c0:	00075c63          	bgez	a4,800064d8 <__printf+0x410>
    800064c4:	f9040713          	addi	a4,s0,-112
    800064c8:	00f70733          	add	a4,a4,a5
    800064cc:	02d00693          	li	a3,45
    800064d0:	fed70823          	sb	a3,-16(a4)
    800064d4:	00078c93          	mv	s9,a5
    800064d8:	f8040793          	addi	a5,s0,-128
    800064dc:	01978cb3          	add	s9,a5,s9
    800064e0:	f7f40d13          	addi	s10,s0,-129
    800064e4:	000cc503          	lbu	a0,0(s9)
    800064e8:	fffc8c93          	addi	s9,s9,-1
    800064ec:	00000097          	auipc	ra,0x0
    800064f0:	9f8080e7          	jalr	-1544(ra) # 80005ee4 <consputc>
    800064f4:	ff9d18e3          	bne	s10,s9,800064e4 <__printf+0x41c>
    800064f8:	0100006f          	j	80006508 <__printf+0x440>
    800064fc:	00000097          	auipc	ra,0x0
    80006500:	9e8080e7          	jalr	-1560(ra) # 80005ee4 <consputc>
    80006504:	000c8493          	mv	s1,s9
    80006508:	00094503          	lbu	a0,0(s2)
    8000650c:	c60510e3          	bnez	a0,8000616c <__printf+0xa4>
    80006510:	e40c0ee3          	beqz	s8,8000636c <__printf+0x2a4>
    80006514:	0000b517          	auipc	a0,0xb
    80006518:	7fc50513          	addi	a0,a0,2044 # 80011d10 <pr>
    8000651c:	00001097          	auipc	ra,0x1
    80006520:	94c080e7          	jalr	-1716(ra) # 80006e68 <release>
    80006524:	e49ff06f          	j	8000636c <__printf+0x2a4>
    80006528:	f7843783          	ld	a5,-136(s0)
    8000652c:	03000513          	li	a0,48
    80006530:	01000d13          	li	s10,16
    80006534:	00878713          	addi	a4,a5,8
    80006538:	0007bc83          	ld	s9,0(a5)
    8000653c:	f6e43c23          	sd	a4,-136(s0)
    80006540:	00000097          	auipc	ra,0x0
    80006544:	9a4080e7          	jalr	-1628(ra) # 80005ee4 <consputc>
    80006548:	07800513          	li	a0,120
    8000654c:	00000097          	auipc	ra,0x0
    80006550:	998080e7          	jalr	-1640(ra) # 80005ee4 <consputc>
    80006554:	00002d97          	auipc	s11,0x2
    80006558:	19cd8d93          	addi	s11,s11,412 # 800086f0 <digits>
    8000655c:	03ccd793          	srli	a5,s9,0x3c
    80006560:	00fd87b3          	add	a5,s11,a5
    80006564:	0007c503          	lbu	a0,0(a5)
    80006568:	fffd0d1b          	addiw	s10,s10,-1
    8000656c:	004c9c93          	slli	s9,s9,0x4
    80006570:	00000097          	auipc	ra,0x0
    80006574:	974080e7          	jalr	-1676(ra) # 80005ee4 <consputc>
    80006578:	fe0d12e3          	bnez	s10,8000655c <__printf+0x494>
    8000657c:	f8dff06f          	j	80006508 <__printf+0x440>
    80006580:	f7843783          	ld	a5,-136(s0)
    80006584:	0007bc83          	ld	s9,0(a5)
    80006588:	00878793          	addi	a5,a5,8
    8000658c:	f6f43c23          	sd	a5,-136(s0)
    80006590:	000c9a63          	bnez	s9,800065a4 <__printf+0x4dc>
    80006594:	1080006f          	j	8000669c <__printf+0x5d4>
    80006598:	001c8c93          	addi	s9,s9,1
    8000659c:	00000097          	auipc	ra,0x0
    800065a0:	948080e7          	jalr	-1720(ra) # 80005ee4 <consputc>
    800065a4:	000cc503          	lbu	a0,0(s9)
    800065a8:	fe0518e3          	bnez	a0,80006598 <__printf+0x4d0>
    800065ac:	f5dff06f          	j	80006508 <__printf+0x440>
    800065b0:	02500513          	li	a0,37
    800065b4:	00000097          	auipc	ra,0x0
    800065b8:	930080e7          	jalr	-1744(ra) # 80005ee4 <consputc>
    800065bc:	000c8513          	mv	a0,s9
    800065c0:	00000097          	auipc	ra,0x0
    800065c4:	924080e7          	jalr	-1756(ra) # 80005ee4 <consputc>
    800065c8:	f41ff06f          	j	80006508 <__printf+0x440>
    800065cc:	02500513          	li	a0,37
    800065d0:	00000097          	auipc	ra,0x0
    800065d4:	914080e7          	jalr	-1772(ra) # 80005ee4 <consputc>
    800065d8:	f31ff06f          	j	80006508 <__printf+0x440>
    800065dc:	00030513          	mv	a0,t1
    800065e0:	00000097          	auipc	ra,0x0
    800065e4:	7bc080e7          	jalr	1980(ra) # 80006d9c <acquire>
    800065e8:	b4dff06f          	j	80006134 <__printf+0x6c>
    800065ec:	40c0053b          	negw	a0,a2
    800065f0:	00a00713          	li	a4,10
    800065f4:	02e576bb          	remuw	a3,a0,a4
    800065f8:	00002d97          	auipc	s11,0x2
    800065fc:	0f8d8d93          	addi	s11,s11,248 # 800086f0 <digits>
    80006600:	ff700593          	li	a1,-9
    80006604:	02069693          	slli	a3,a3,0x20
    80006608:	0206d693          	srli	a3,a3,0x20
    8000660c:	00dd86b3          	add	a3,s11,a3
    80006610:	0006c683          	lbu	a3,0(a3)
    80006614:	02e557bb          	divuw	a5,a0,a4
    80006618:	f8d40023          	sb	a3,-128(s0)
    8000661c:	10b65e63          	bge	a2,a1,80006738 <__printf+0x670>
    80006620:	06300593          	li	a1,99
    80006624:	02e7f6bb          	remuw	a3,a5,a4
    80006628:	02069693          	slli	a3,a3,0x20
    8000662c:	0206d693          	srli	a3,a3,0x20
    80006630:	00dd86b3          	add	a3,s11,a3
    80006634:	0006c683          	lbu	a3,0(a3)
    80006638:	02e7d73b          	divuw	a4,a5,a4
    8000663c:	00200793          	li	a5,2
    80006640:	f8d400a3          	sb	a3,-127(s0)
    80006644:	bca5ece3          	bltu	a1,a0,8000621c <__printf+0x154>
    80006648:	ce5ff06f          	j	8000632c <__printf+0x264>
    8000664c:	40e007bb          	negw	a5,a4
    80006650:	00002d97          	auipc	s11,0x2
    80006654:	0a0d8d93          	addi	s11,s11,160 # 800086f0 <digits>
    80006658:	00f7f693          	andi	a3,a5,15
    8000665c:	00dd86b3          	add	a3,s11,a3
    80006660:	0006c583          	lbu	a1,0(a3)
    80006664:	ff100613          	li	a2,-15
    80006668:	0047d69b          	srliw	a3,a5,0x4
    8000666c:	f8b40023          	sb	a1,-128(s0)
    80006670:	0047d59b          	srliw	a1,a5,0x4
    80006674:	0ac75e63          	bge	a4,a2,80006730 <__printf+0x668>
    80006678:	00f6f693          	andi	a3,a3,15
    8000667c:	00dd86b3          	add	a3,s11,a3
    80006680:	0006c603          	lbu	a2,0(a3)
    80006684:	00f00693          	li	a3,15
    80006688:	0087d79b          	srliw	a5,a5,0x8
    8000668c:	f8c400a3          	sb	a2,-127(s0)
    80006690:	d8b6e4e3          	bltu	a3,a1,80006418 <__printf+0x350>
    80006694:	00200793          	li	a5,2
    80006698:	e2dff06f          	j	800064c4 <__printf+0x3fc>
    8000669c:	00002c97          	auipc	s9,0x2
    800066a0:	034c8c93          	addi	s9,s9,52 # 800086d0 <CONSOLE_STATUS+0x6c0>
    800066a4:	02800513          	li	a0,40
    800066a8:	ef1ff06f          	j	80006598 <__printf+0x4d0>
    800066ac:	00700793          	li	a5,7
    800066b0:	00600c93          	li	s9,6
    800066b4:	e0dff06f          	j	800064c0 <__printf+0x3f8>
    800066b8:	00700793          	li	a5,7
    800066bc:	00600c93          	li	s9,6
    800066c0:	c69ff06f          	j	80006328 <__printf+0x260>
    800066c4:	00300793          	li	a5,3
    800066c8:	00200c93          	li	s9,2
    800066cc:	c5dff06f          	j	80006328 <__printf+0x260>
    800066d0:	00300793          	li	a5,3
    800066d4:	00200c93          	li	s9,2
    800066d8:	de9ff06f          	j	800064c0 <__printf+0x3f8>
    800066dc:	00400793          	li	a5,4
    800066e0:	00300c93          	li	s9,3
    800066e4:	dddff06f          	j	800064c0 <__printf+0x3f8>
    800066e8:	00400793          	li	a5,4
    800066ec:	00300c93          	li	s9,3
    800066f0:	c39ff06f          	j	80006328 <__printf+0x260>
    800066f4:	00500793          	li	a5,5
    800066f8:	00400c93          	li	s9,4
    800066fc:	c2dff06f          	j	80006328 <__printf+0x260>
    80006700:	00500793          	li	a5,5
    80006704:	00400c93          	li	s9,4
    80006708:	db9ff06f          	j	800064c0 <__printf+0x3f8>
    8000670c:	00600793          	li	a5,6
    80006710:	00500c93          	li	s9,5
    80006714:	dadff06f          	j	800064c0 <__printf+0x3f8>
    80006718:	00600793          	li	a5,6
    8000671c:	00500c93          	li	s9,5
    80006720:	c09ff06f          	j	80006328 <__printf+0x260>
    80006724:	00800793          	li	a5,8
    80006728:	00700c93          	li	s9,7
    8000672c:	bfdff06f          	j	80006328 <__printf+0x260>
    80006730:	00100793          	li	a5,1
    80006734:	d91ff06f          	j	800064c4 <__printf+0x3fc>
    80006738:	00100793          	li	a5,1
    8000673c:	bf1ff06f          	j	8000632c <__printf+0x264>
    80006740:	00900793          	li	a5,9
    80006744:	00800c93          	li	s9,8
    80006748:	be1ff06f          	j	80006328 <__printf+0x260>
    8000674c:	00002517          	auipc	a0,0x2
    80006750:	f8c50513          	addi	a0,a0,-116 # 800086d8 <CONSOLE_STATUS+0x6c8>
    80006754:	00000097          	auipc	ra,0x0
    80006758:	918080e7          	jalr	-1768(ra) # 8000606c <panic>

000000008000675c <printfinit>:
    8000675c:	fe010113          	addi	sp,sp,-32
    80006760:	00813823          	sd	s0,16(sp)
    80006764:	00913423          	sd	s1,8(sp)
    80006768:	00113c23          	sd	ra,24(sp)
    8000676c:	02010413          	addi	s0,sp,32
    80006770:	0000b497          	auipc	s1,0xb
    80006774:	5a048493          	addi	s1,s1,1440 # 80011d10 <pr>
    80006778:	00048513          	mv	a0,s1
    8000677c:	00002597          	auipc	a1,0x2
    80006780:	f6c58593          	addi	a1,a1,-148 # 800086e8 <CONSOLE_STATUS+0x6d8>
    80006784:	00000097          	auipc	ra,0x0
    80006788:	5f4080e7          	jalr	1524(ra) # 80006d78 <initlock>
    8000678c:	01813083          	ld	ra,24(sp)
    80006790:	01013403          	ld	s0,16(sp)
    80006794:	0004ac23          	sw	zero,24(s1)
    80006798:	00813483          	ld	s1,8(sp)
    8000679c:	02010113          	addi	sp,sp,32
    800067a0:	00008067          	ret

00000000800067a4 <uartinit>:
    800067a4:	ff010113          	addi	sp,sp,-16
    800067a8:	00813423          	sd	s0,8(sp)
    800067ac:	01010413          	addi	s0,sp,16
    800067b0:	100007b7          	lui	a5,0x10000
    800067b4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800067b8:	f8000713          	li	a4,-128
    800067bc:	00e781a3          	sb	a4,3(a5)
    800067c0:	00300713          	li	a4,3
    800067c4:	00e78023          	sb	a4,0(a5)
    800067c8:	000780a3          	sb	zero,1(a5)
    800067cc:	00e781a3          	sb	a4,3(a5)
    800067d0:	00700693          	li	a3,7
    800067d4:	00d78123          	sb	a3,2(a5)
    800067d8:	00e780a3          	sb	a4,1(a5)
    800067dc:	00813403          	ld	s0,8(sp)
    800067e0:	01010113          	addi	sp,sp,16
    800067e4:	00008067          	ret

00000000800067e8 <uartputc>:
    800067e8:	00002797          	auipc	a5,0x2
    800067ec:	2007a783          	lw	a5,512(a5) # 800089e8 <panicked>
    800067f0:	00078463          	beqz	a5,800067f8 <uartputc+0x10>
    800067f4:	0000006f          	j	800067f4 <uartputc+0xc>
    800067f8:	fd010113          	addi	sp,sp,-48
    800067fc:	02813023          	sd	s0,32(sp)
    80006800:	00913c23          	sd	s1,24(sp)
    80006804:	01213823          	sd	s2,16(sp)
    80006808:	01313423          	sd	s3,8(sp)
    8000680c:	02113423          	sd	ra,40(sp)
    80006810:	03010413          	addi	s0,sp,48
    80006814:	00002917          	auipc	s2,0x2
    80006818:	1dc90913          	addi	s2,s2,476 # 800089f0 <uart_tx_r>
    8000681c:	00093783          	ld	a5,0(s2)
    80006820:	00002497          	auipc	s1,0x2
    80006824:	1d848493          	addi	s1,s1,472 # 800089f8 <uart_tx_w>
    80006828:	0004b703          	ld	a4,0(s1)
    8000682c:	02078693          	addi	a3,a5,32
    80006830:	00050993          	mv	s3,a0
    80006834:	02e69c63          	bne	a3,a4,8000686c <uartputc+0x84>
    80006838:	00001097          	auipc	ra,0x1
    8000683c:	834080e7          	jalr	-1996(ra) # 8000706c <push_on>
    80006840:	00093783          	ld	a5,0(s2)
    80006844:	0004b703          	ld	a4,0(s1)
    80006848:	02078793          	addi	a5,a5,32
    8000684c:	00e79463          	bne	a5,a4,80006854 <uartputc+0x6c>
    80006850:	0000006f          	j	80006850 <uartputc+0x68>
    80006854:	00001097          	auipc	ra,0x1
    80006858:	88c080e7          	jalr	-1908(ra) # 800070e0 <pop_on>
    8000685c:	00093783          	ld	a5,0(s2)
    80006860:	0004b703          	ld	a4,0(s1)
    80006864:	02078693          	addi	a3,a5,32
    80006868:	fce688e3          	beq	a3,a4,80006838 <uartputc+0x50>
    8000686c:	01f77693          	andi	a3,a4,31
    80006870:	0000b597          	auipc	a1,0xb
    80006874:	4c058593          	addi	a1,a1,1216 # 80011d30 <uart_tx_buf>
    80006878:	00d586b3          	add	a3,a1,a3
    8000687c:	00170713          	addi	a4,a4,1
    80006880:	01368023          	sb	s3,0(a3)
    80006884:	00e4b023          	sd	a4,0(s1)
    80006888:	10000637          	lui	a2,0x10000
    8000688c:	02f71063          	bne	a4,a5,800068ac <uartputc+0xc4>
    80006890:	0340006f          	j	800068c4 <uartputc+0xdc>
    80006894:	00074703          	lbu	a4,0(a4)
    80006898:	00f93023          	sd	a5,0(s2)
    8000689c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800068a0:	00093783          	ld	a5,0(s2)
    800068a4:	0004b703          	ld	a4,0(s1)
    800068a8:	00f70e63          	beq	a4,a5,800068c4 <uartputc+0xdc>
    800068ac:	00564683          	lbu	a3,5(a2)
    800068b0:	01f7f713          	andi	a4,a5,31
    800068b4:	00e58733          	add	a4,a1,a4
    800068b8:	0206f693          	andi	a3,a3,32
    800068bc:	00178793          	addi	a5,a5,1
    800068c0:	fc069ae3          	bnez	a3,80006894 <uartputc+0xac>
    800068c4:	02813083          	ld	ra,40(sp)
    800068c8:	02013403          	ld	s0,32(sp)
    800068cc:	01813483          	ld	s1,24(sp)
    800068d0:	01013903          	ld	s2,16(sp)
    800068d4:	00813983          	ld	s3,8(sp)
    800068d8:	03010113          	addi	sp,sp,48
    800068dc:	00008067          	ret

00000000800068e0 <uartputc_sync>:
    800068e0:	ff010113          	addi	sp,sp,-16
    800068e4:	00813423          	sd	s0,8(sp)
    800068e8:	01010413          	addi	s0,sp,16
    800068ec:	00002717          	auipc	a4,0x2
    800068f0:	0fc72703          	lw	a4,252(a4) # 800089e8 <panicked>
    800068f4:	02071663          	bnez	a4,80006920 <uartputc_sync+0x40>
    800068f8:	00050793          	mv	a5,a0
    800068fc:	100006b7          	lui	a3,0x10000
    80006900:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80006904:	02077713          	andi	a4,a4,32
    80006908:	fe070ce3          	beqz	a4,80006900 <uartputc_sync+0x20>
    8000690c:	0ff7f793          	andi	a5,a5,255
    80006910:	00f68023          	sb	a5,0(a3)
    80006914:	00813403          	ld	s0,8(sp)
    80006918:	01010113          	addi	sp,sp,16
    8000691c:	00008067          	ret
    80006920:	0000006f          	j	80006920 <uartputc_sync+0x40>

0000000080006924 <uartstart>:
    80006924:	ff010113          	addi	sp,sp,-16
    80006928:	00813423          	sd	s0,8(sp)
    8000692c:	01010413          	addi	s0,sp,16
    80006930:	00002617          	auipc	a2,0x2
    80006934:	0c060613          	addi	a2,a2,192 # 800089f0 <uart_tx_r>
    80006938:	00002517          	auipc	a0,0x2
    8000693c:	0c050513          	addi	a0,a0,192 # 800089f8 <uart_tx_w>
    80006940:	00063783          	ld	a5,0(a2)
    80006944:	00053703          	ld	a4,0(a0)
    80006948:	04f70263          	beq	a4,a5,8000698c <uartstart+0x68>
    8000694c:	100005b7          	lui	a1,0x10000
    80006950:	0000b817          	auipc	a6,0xb
    80006954:	3e080813          	addi	a6,a6,992 # 80011d30 <uart_tx_buf>
    80006958:	01c0006f          	j	80006974 <uartstart+0x50>
    8000695c:	0006c703          	lbu	a4,0(a3)
    80006960:	00f63023          	sd	a5,0(a2)
    80006964:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006968:	00063783          	ld	a5,0(a2)
    8000696c:	00053703          	ld	a4,0(a0)
    80006970:	00f70e63          	beq	a4,a5,8000698c <uartstart+0x68>
    80006974:	01f7f713          	andi	a4,a5,31
    80006978:	00e806b3          	add	a3,a6,a4
    8000697c:	0055c703          	lbu	a4,5(a1)
    80006980:	00178793          	addi	a5,a5,1
    80006984:	02077713          	andi	a4,a4,32
    80006988:	fc071ae3          	bnez	a4,8000695c <uartstart+0x38>
    8000698c:	00813403          	ld	s0,8(sp)
    80006990:	01010113          	addi	sp,sp,16
    80006994:	00008067          	ret

0000000080006998 <uartgetc>:
    80006998:	ff010113          	addi	sp,sp,-16
    8000699c:	00813423          	sd	s0,8(sp)
    800069a0:	01010413          	addi	s0,sp,16
    800069a4:	10000737          	lui	a4,0x10000
    800069a8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800069ac:	0017f793          	andi	a5,a5,1
    800069b0:	00078c63          	beqz	a5,800069c8 <uartgetc+0x30>
    800069b4:	00074503          	lbu	a0,0(a4)
    800069b8:	0ff57513          	andi	a0,a0,255
    800069bc:	00813403          	ld	s0,8(sp)
    800069c0:	01010113          	addi	sp,sp,16
    800069c4:	00008067          	ret
    800069c8:	fff00513          	li	a0,-1
    800069cc:	ff1ff06f          	j	800069bc <uartgetc+0x24>

00000000800069d0 <uartintr>:
    800069d0:	100007b7          	lui	a5,0x10000
    800069d4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800069d8:	0017f793          	andi	a5,a5,1
    800069dc:	0a078463          	beqz	a5,80006a84 <uartintr+0xb4>
    800069e0:	fe010113          	addi	sp,sp,-32
    800069e4:	00813823          	sd	s0,16(sp)
    800069e8:	00913423          	sd	s1,8(sp)
    800069ec:	00113c23          	sd	ra,24(sp)
    800069f0:	02010413          	addi	s0,sp,32
    800069f4:	100004b7          	lui	s1,0x10000
    800069f8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800069fc:	0ff57513          	andi	a0,a0,255
    80006a00:	fffff097          	auipc	ra,0xfffff
    80006a04:	534080e7          	jalr	1332(ra) # 80005f34 <consoleintr>
    80006a08:	0054c783          	lbu	a5,5(s1)
    80006a0c:	0017f793          	andi	a5,a5,1
    80006a10:	fe0794e3          	bnez	a5,800069f8 <uartintr+0x28>
    80006a14:	00002617          	auipc	a2,0x2
    80006a18:	fdc60613          	addi	a2,a2,-36 # 800089f0 <uart_tx_r>
    80006a1c:	00002517          	auipc	a0,0x2
    80006a20:	fdc50513          	addi	a0,a0,-36 # 800089f8 <uart_tx_w>
    80006a24:	00063783          	ld	a5,0(a2)
    80006a28:	00053703          	ld	a4,0(a0)
    80006a2c:	04f70263          	beq	a4,a5,80006a70 <uartintr+0xa0>
    80006a30:	100005b7          	lui	a1,0x10000
    80006a34:	0000b817          	auipc	a6,0xb
    80006a38:	2fc80813          	addi	a6,a6,764 # 80011d30 <uart_tx_buf>
    80006a3c:	01c0006f          	j	80006a58 <uartintr+0x88>
    80006a40:	0006c703          	lbu	a4,0(a3)
    80006a44:	00f63023          	sd	a5,0(a2)
    80006a48:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006a4c:	00063783          	ld	a5,0(a2)
    80006a50:	00053703          	ld	a4,0(a0)
    80006a54:	00f70e63          	beq	a4,a5,80006a70 <uartintr+0xa0>
    80006a58:	01f7f713          	andi	a4,a5,31
    80006a5c:	00e806b3          	add	a3,a6,a4
    80006a60:	0055c703          	lbu	a4,5(a1)
    80006a64:	00178793          	addi	a5,a5,1
    80006a68:	02077713          	andi	a4,a4,32
    80006a6c:	fc071ae3          	bnez	a4,80006a40 <uartintr+0x70>
    80006a70:	01813083          	ld	ra,24(sp)
    80006a74:	01013403          	ld	s0,16(sp)
    80006a78:	00813483          	ld	s1,8(sp)
    80006a7c:	02010113          	addi	sp,sp,32
    80006a80:	00008067          	ret
    80006a84:	00002617          	auipc	a2,0x2
    80006a88:	f6c60613          	addi	a2,a2,-148 # 800089f0 <uart_tx_r>
    80006a8c:	00002517          	auipc	a0,0x2
    80006a90:	f6c50513          	addi	a0,a0,-148 # 800089f8 <uart_tx_w>
    80006a94:	00063783          	ld	a5,0(a2)
    80006a98:	00053703          	ld	a4,0(a0)
    80006a9c:	04f70263          	beq	a4,a5,80006ae0 <uartintr+0x110>
    80006aa0:	100005b7          	lui	a1,0x10000
    80006aa4:	0000b817          	auipc	a6,0xb
    80006aa8:	28c80813          	addi	a6,a6,652 # 80011d30 <uart_tx_buf>
    80006aac:	01c0006f          	j	80006ac8 <uartintr+0xf8>
    80006ab0:	0006c703          	lbu	a4,0(a3)
    80006ab4:	00f63023          	sd	a5,0(a2)
    80006ab8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006abc:	00063783          	ld	a5,0(a2)
    80006ac0:	00053703          	ld	a4,0(a0)
    80006ac4:	02f70063          	beq	a4,a5,80006ae4 <uartintr+0x114>
    80006ac8:	01f7f713          	andi	a4,a5,31
    80006acc:	00e806b3          	add	a3,a6,a4
    80006ad0:	0055c703          	lbu	a4,5(a1)
    80006ad4:	00178793          	addi	a5,a5,1
    80006ad8:	02077713          	andi	a4,a4,32
    80006adc:	fc071ae3          	bnez	a4,80006ab0 <uartintr+0xe0>
    80006ae0:	00008067          	ret
    80006ae4:	00008067          	ret

0000000080006ae8 <kinit>:
    80006ae8:	fc010113          	addi	sp,sp,-64
    80006aec:	02913423          	sd	s1,40(sp)
    80006af0:	fffff7b7          	lui	a5,0xfffff
    80006af4:	00011497          	auipc	s1,0x11
    80006af8:	50b48493          	addi	s1,s1,1291 # 80017fff <end+0xfff>
    80006afc:	02813823          	sd	s0,48(sp)
    80006b00:	01313c23          	sd	s3,24(sp)
    80006b04:	00f4f4b3          	and	s1,s1,a5
    80006b08:	02113c23          	sd	ra,56(sp)
    80006b0c:	03213023          	sd	s2,32(sp)
    80006b10:	01413823          	sd	s4,16(sp)
    80006b14:	01513423          	sd	s5,8(sp)
    80006b18:	04010413          	addi	s0,sp,64
    80006b1c:	000017b7          	lui	a5,0x1
    80006b20:	01100993          	li	s3,17
    80006b24:	00f487b3          	add	a5,s1,a5
    80006b28:	01b99993          	slli	s3,s3,0x1b
    80006b2c:	06f9e063          	bltu	s3,a5,80006b8c <kinit+0xa4>
    80006b30:	00010a97          	auipc	s5,0x10
    80006b34:	4d0a8a93          	addi	s5,s5,1232 # 80017000 <end>
    80006b38:	0754ec63          	bltu	s1,s5,80006bb0 <kinit+0xc8>
    80006b3c:	0734fa63          	bgeu	s1,s3,80006bb0 <kinit+0xc8>
    80006b40:	00088a37          	lui	s4,0x88
    80006b44:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80006b48:	00002917          	auipc	s2,0x2
    80006b4c:	eb890913          	addi	s2,s2,-328 # 80008a00 <kmem>
    80006b50:	00ca1a13          	slli	s4,s4,0xc
    80006b54:	0140006f          	j	80006b68 <kinit+0x80>
    80006b58:	000017b7          	lui	a5,0x1
    80006b5c:	00f484b3          	add	s1,s1,a5
    80006b60:	0554e863          	bltu	s1,s5,80006bb0 <kinit+0xc8>
    80006b64:	0534f663          	bgeu	s1,s3,80006bb0 <kinit+0xc8>
    80006b68:	00001637          	lui	a2,0x1
    80006b6c:	00100593          	li	a1,1
    80006b70:	00048513          	mv	a0,s1
    80006b74:	00000097          	auipc	ra,0x0
    80006b78:	5e4080e7          	jalr	1508(ra) # 80007158 <__memset>
    80006b7c:	00093783          	ld	a5,0(s2)
    80006b80:	00f4b023          	sd	a5,0(s1)
    80006b84:	00993023          	sd	s1,0(s2)
    80006b88:	fd4498e3          	bne	s1,s4,80006b58 <kinit+0x70>
    80006b8c:	03813083          	ld	ra,56(sp)
    80006b90:	03013403          	ld	s0,48(sp)
    80006b94:	02813483          	ld	s1,40(sp)
    80006b98:	02013903          	ld	s2,32(sp)
    80006b9c:	01813983          	ld	s3,24(sp)
    80006ba0:	01013a03          	ld	s4,16(sp)
    80006ba4:	00813a83          	ld	s5,8(sp)
    80006ba8:	04010113          	addi	sp,sp,64
    80006bac:	00008067          	ret
    80006bb0:	00002517          	auipc	a0,0x2
    80006bb4:	b5850513          	addi	a0,a0,-1192 # 80008708 <digits+0x18>
    80006bb8:	fffff097          	auipc	ra,0xfffff
    80006bbc:	4b4080e7          	jalr	1204(ra) # 8000606c <panic>

0000000080006bc0 <freerange>:
    80006bc0:	fc010113          	addi	sp,sp,-64
    80006bc4:	000017b7          	lui	a5,0x1
    80006bc8:	02913423          	sd	s1,40(sp)
    80006bcc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80006bd0:	009504b3          	add	s1,a0,s1
    80006bd4:	fffff537          	lui	a0,0xfffff
    80006bd8:	02813823          	sd	s0,48(sp)
    80006bdc:	02113c23          	sd	ra,56(sp)
    80006be0:	03213023          	sd	s2,32(sp)
    80006be4:	01313c23          	sd	s3,24(sp)
    80006be8:	01413823          	sd	s4,16(sp)
    80006bec:	01513423          	sd	s5,8(sp)
    80006bf0:	01613023          	sd	s6,0(sp)
    80006bf4:	04010413          	addi	s0,sp,64
    80006bf8:	00a4f4b3          	and	s1,s1,a0
    80006bfc:	00f487b3          	add	a5,s1,a5
    80006c00:	06f5e463          	bltu	a1,a5,80006c68 <freerange+0xa8>
    80006c04:	00010a97          	auipc	s5,0x10
    80006c08:	3fca8a93          	addi	s5,s5,1020 # 80017000 <end>
    80006c0c:	0954e263          	bltu	s1,s5,80006c90 <freerange+0xd0>
    80006c10:	01100993          	li	s3,17
    80006c14:	01b99993          	slli	s3,s3,0x1b
    80006c18:	0734fc63          	bgeu	s1,s3,80006c90 <freerange+0xd0>
    80006c1c:	00058a13          	mv	s4,a1
    80006c20:	00002917          	auipc	s2,0x2
    80006c24:	de090913          	addi	s2,s2,-544 # 80008a00 <kmem>
    80006c28:	00002b37          	lui	s6,0x2
    80006c2c:	0140006f          	j	80006c40 <freerange+0x80>
    80006c30:	000017b7          	lui	a5,0x1
    80006c34:	00f484b3          	add	s1,s1,a5
    80006c38:	0554ec63          	bltu	s1,s5,80006c90 <freerange+0xd0>
    80006c3c:	0534fa63          	bgeu	s1,s3,80006c90 <freerange+0xd0>
    80006c40:	00001637          	lui	a2,0x1
    80006c44:	00100593          	li	a1,1
    80006c48:	00048513          	mv	a0,s1
    80006c4c:	00000097          	auipc	ra,0x0
    80006c50:	50c080e7          	jalr	1292(ra) # 80007158 <__memset>
    80006c54:	00093703          	ld	a4,0(s2)
    80006c58:	016487b3          	add	a5,s1,s6
    80006c5c:	00e4b023          	sd	a4,0(s1)
    80006c60:	00993023          	sd	s1,0(s2)
    80006c64:	fcfa76e3          	bgeu	s4,a5,80006c30 <freerange+0x70>
    80006c68:	03813083          	ld	ra,56(sp)
    80006c6c:	03013403          	ld	s0,48(sp)
    80006c70:	02813483          	ld	s1,40(sp)
    80006c74:	02013903          	ld	s2,32(sp)
    80006c78:	01813983          	ld	s3,24(sp)
    80006c7c:	01013a03          	ld	s4,16(sp)
    80006c80:	00813a83          	ld	s5,8(sp)
    80006c84:	00013b03          	ld	s6,0(sp)
    80006c88:	04010113          	addi	sp,sp,64
    80006c8c:	00008067          	ret
    80006c90:	00002517          	auipc	a0,0x2
    80006c94:	a7850513          	addi	a0,a0,-1416 # 80008708 <digits+0x18>
    80006c98:	fffff097          	auipc	ra,0xfffff
    80006c9c:	3d4080e7          	jalr	980(ra) # 8000606c <panic>

0000000080006ca0 <kfree>:
    80006ca0:	fe010113          	addi	sp,sp,-32
    80006ca4:	00813823          	sd	s0,16(sp)
    80006ca8:	00113c23          	sd	ra,24(sp)
    80006cac:	00913423          	sd	s1,8(sp)
    80006cb0:	02010413          	addi	s0,sp,32
    80006cb4:	03451793          	slli	a5,a0,0x34
    80006cb8:	04079c63          	bnez	a5,80006d10 <kfree+0x70>
    80006cbc:	00010797          	auipc	a5,0x10
    80006cc0:	34478793          	addi	a5,a5,836 # 80017000 <end>
    80006cc4:	00050493          	mv	s1,a0
    80006cc8:	04f56463          	bltu	a0,a5,80006d10 <kfree+0x70>
    80006ccc:	01100793          	li	a5,17
    80006cd0:	01b79793          	slli	a5,a5,0x1b
    80006cd4:	02f57e63          	bgeu	a0,a5,80006d10 <kfree+0x70>
    80006cd8:	00001637          	lui	a2,0x1
    80006cdc:	00100593          	li	a1,1
    80006ce0:	00000097          	auipc	ra,0x0
    80006ce4:	478080e7          	jalr	1144(ra) # 80007158 <__memset>
    80006ce8:	00002797          	auipc	a5,0x2
    80006cec:	d1878793          	addi	a5,a5,-744 # 80008a00 <kmem>
    80006cf0:	0007b703          	ld	a4,0(a5)
    80006cf4:	01813083          	ld	ra,24(sp)
    80006cf8:	01013403          	ld	s0,16(sp)
    80006cfc:	00e4b023          	sd	a4,0(s1)
    80006d00:	0097b023          	sd	s1,0(a5)
    80006d04:	00813483          	ld	s1,8(sp)
    80006d08:	02010113          	addi	sp,sp,32
    80006d0c:	00008067          	ret
    80006d10:	00002517          	auipc	a0,0x2
    80006d14:	9f850513          	addi	a0,a0,-1544 # 80008708 <digits+0x18>
    80006d18:	fffff097          	auipc	ra,0xfffff
    80006d1c:	354080e7          	jalr	852(ra) # 8000606c <panic>

0000000080006d20 <kalloc>:
    80006d20:	fe010113          	addi	sp,sp,-32
    80006d24:	00813823          	sd	s0,16(sp)
    80006d28:	00913423          	sd	s1,8(sp)
    80006d2c:	00113c23          	sd	ra,24(sp)
    80006d30:	02010413          	addi	s0,sp,32
    80006d34:	00002797          	auipc	a5,0x2
    80006d38:	ccc78793          	addi	a5,a5,-820 # 80008a00 <kmem>
    80006d3c:	0007b483          	ld	s1,0(a5)
    80006d40:	02048063          	beqz	s1,80006d60 <kalloc+0x40>
    80006d44:	0004b703          	ld	a4,0(s1)
    80006d48:	00001637          	lui	a2,0x1
    80006d4c:	00500593          	li	a1,5
    80006d50:	00048513          	mv	a0,s1
    80006d54:	00e7b023          	sd	a4,0(a5)
    80006d58:	00000097          	auipc	ra,0x0
    80006d5c:	400080e7          	jalr	1024(ra) # 80007158 <__memset>
    80006d60:	01813083          	ld	ra,24(sp)
    80006d64:	01013403          	ld	s0,16(sp)
    80006d68:	00048513          	mv	a0,s1
    80006d6c:	00813483          	ld	s1,8(sp)
    80006d70:	02010113          	addi	sp,sp,32
    80006d74:	00008067          	ret

0000000080006d78 <initlock>:
    80006d78:	ff010113          	addi	sp,sp,-16
    80006d7c:	00813423          	sd	s0,8(sp)
    80006d80:	01010413          	addi	s0,sp,16
    80006d84:	00813403          	ld	s0,8(sp)
    80006d88:	00b53423          	sd	a1,8(a0)
    80006d8c:	00052023          	sw	zero,0(a0)
    80006d90:	00053823          	sd	zero,16(a0)
    80006d94:	01010113          	addi	sp,sp,16
    80006d98:	00008067          	ret

0000000080006d9c <acquire>:
    80006d9c:	fe010113          	addi	sp,sp,-32
    80006da0:	00813823          	sd	s0,16(sp)
    80006da4:	00913423          	sd	s1,8(sp)
    80006da8:	00113c23          	sd	ra,24(sp)
    80006dac:	01213023          	sd	s2,0(sp)
    80006db0:	02010413          	addi	s0,sp,32
    80006db4:	00050493          	mv	s1,a0
    80006db8:	10002973          	csrr	s2,sstatus
    80006dbc:	100027f3          	csrr	a5,sstatus
    80006dc0:	ffd7f793          	andi	a5,a5,-3
    80006dc4:	10079073          	csrw	sstatus,a5
    80006dc8:	fffff097          	auipc	ra,0xfffff
    80006dcc:	8ec080e7          	jalr	-1812(ra) # 800056b4 <mycpu>
    80006dd0:	07852783          	lw	a5,120(a0)
    80006dd4:	06078e63          	beqz	a5,80006e50 <acquire+0xb4>
    80006dd8:	fffff097          	auipc	ra,0xfffff
    80006ddc:	8dc080e7          	jalr	-1828(ra) # 800056b4 <mycpu>
    80006de0:	07852783          	lw	a5,120(a0)
    80006de4:	0004a703          	lw	a4,0(s1)
    80006de8:	0017879b          	addiw	a5,a5,1
    80006dec:	06f52c23          	sw	a5,120(a0)
    80006df0:	04071063          	bnez	a4,80006e30 <acquire+0x94>
    80006df4:	00100713          	li	a4,1
    80006df8:	00070793          	mv	a5,a4
    80006dfc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80006e00:	0007879b          	sext.w	a5,a5
    80006e04:	fe079ae3          	bnez	a5,80006df8 <acquire+0x5c>
    80006e08:	0ff0000f          	fence
    80006e0c:	fffff097          	auipc	ra,0xfffff
    80006e10:	8a8080e7          	jalr	-1880(ra) # 800056b4 <mycpu>
    80006e14:	01813083          	ld	ra,24(sp)
    80006e18:	01013403          	ld	s0,16(sp)
    80006e1c:	00a4b823          	sd	a0,16(s1)
    80006e20:	00013903          	ld	s2,0(sp)
    80006e24:	00813483          	ld	s1,8(sp)
    80006e28:	02010113          	addi	sp,sp,32
    80006e2c:	00008067          	ret
    80006e30:	0104b903          	ld	s2,16(s1)
    80006e34:	fffff097          	auipc	ra,0xfffff
    80006e38:	880080e7          	jalr	-1920(ra) # 800056b4 <mycpu>
    80006e3c:	faa91ce3          	bne	s2,a0,80006df4 <acquire+0x58>
    80006e40:	00002517          	auipc	a0,0x2
    80006e44:	8d050513          	addi	a0,a0,-1840 # 80008710 <digits+0x20>
    80006e48:	fffff097          	auipc	ra,0xfffff
    80006e4c:	224080e7          	jalr	548(ra) # 8000606c <panic>
    80006e50:	00195913          	srli	s2,s2,0x1
    80006e54:	fffff097          	auipc	ra,0xfffff
    80006e58:	860080e7          	jalr	-1952(ra) # 800056b4 <mycpu>
    80006e5c:	00197913          	andi	s2,s2,1
    80006e60:	07252e23          	sw	s2,124(a0)
    80006e64:	f75ff06f          	j	80006dd8 <acquire+0x3c>

0000000080006e68 <release>:
    80006e68:	fe010113          	addi	sp,sp,-32
    80006e6c:	00813823          	sd	s0,16(sp)
    80006e70:	00113c23          	sd	ra,24(sp)
    80006e74:	00913423          	sd	s1,8(sp)
    80006e78:	01213023          	sd	s2,0(sp)
    80006e7c:	02010413          	addi	s0,sp,32
    80006e80:	00052783          	lw	a5,0(a0)
    80006e84:	00079a63          	bnez	a5,80006e98 <release+0x30>
    80006e88:	00002517          	auipc	a0,0x2
    80006e8c:	89050513          	addi	a0,a0,-1904 # 80008718 <digits+0x28>
    80006e90:	fffff097          	auipc	ra,0xfffff
    80006e94:	1dc080e7          	jalr	476(ra) # 8000606c <panic>
    80006e98:	01053903          	ld	s2,16(a0)
    80006e9c:	00050493          	mv	s1,a0
    80006ea0:	fffff097          	auipc	ra,0xfffff
    80006ea4:	814080e7          	jalr	-2028(ra) # 800056b4 <mycpu>
    80006ea8:	fea910e3          	bne	s2,a0,80006e88 <release+0x20>
    80006eac:	0004b823          	sd	zero,16(s1)
    80006eb0:	0ff0000f          	fence
    80006eb4:	0f50000f          	fence	iorw,ow
    80006eb8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80006ebc:	ffffe097          	auipc	ra,0xffffe
    80006ec0:	7f8080e7          	jalr	2040(ra) # 800056b4 <mycpu>
    80006ec4:	100027f3          	csrr	a5,sstatus
    80006ec8:	0027f793          	andi	a5,a5,2
    80006ecc:	04079a63          	bnez	a5,80006f20 <release+0xb8>
    80006ed0:	07852783          	lw	a5,120(a0)
    80006ed4:	02f05e63          	blez	a5,80006f10 <release+0xa8>
    80006ed8:	fff7871b          	addiw	a4,a5,-1
    80006edc:	06e52c23          	sw	a4,120(a0)
    80006ee0:	00071c63          	bnez	a4,80006ef8 <release+0x90>
    80006ee4:	07c52783          	lw	a5,124(a0)
    80006ee8:	00078863          	beqz	a5,80006ef8 <release+0x90>
    80006eec:	100027f3          	csrr	a5,sstatus
    80006ef0:	0027e793          	ori	a5,a5,2
    80006ef4:	10079073          	csrw	sstatus,a5
    80006ef8:	01813083          	ld	ra,24(sp)
    80006efc:	01013403          	ld	s0,16(sp)
    80006f00:	00813483          	ld	s1,8(sp)
    80006f04:	00013903          	ld	s2,0(sp)
    80006f08:	02010113          	addi	sp,sp,32
    80006f0c:	00008067          	ret
    80006f10:	00002517          	auipc	a0,0x2
    80006f14:	82850513          	addi	a0,a0,-2008 # 80008738 <digits+0x48>
    80006f18:	fffff097          	auipc	ra,0xfffff
    80006f1c:	154080e7          	jalr	340(ra) # 8000606c <panic>
    80006f20:	00002517          	auipc	a0,0x2
    80006f24:	80050513          	addi	a0,a0,-2048 # 80008720 <digits+0x30>
    80006f28:	fffff097          	auipc	ra,0xfffff
    80006f2c:	144080e7          	jalr	324(ra) # 8000606c <panic>

0000000080006f30 <holding>:
    80006f30:	00052783          	lw	a5,0(a0)
    80006f34:	00079663          	bnez	a5,80006f40 <holding+0x10>
    80006f38:	00000513          	li	a0,0
    80006f3c:	00008067          	ret
    80006f40:	fe010113          	addi	sp,sp,-32
    80006f44:	00813823          	sd	s0,16(sp)
    80006f48:	00913423          	sd	s1,8(sp)
    80006f4c:	00113c23          	sd	ra,24(sp)
    80006f50:	02010413          	addi	s0,sp,32
    80006f54:	01053483          	ld	s1,16(a0)
    80006f58:	ffffe097          	auipc	ra,0xffffe
    80006f5c:	75c080e7          	jalr	1884(ra) # 800056b4 <mycpu>
    80006f60:	01813083          	ld	ra,24(sp)
    80006f64:	01013403          	ld	s0,16(sp)
    80006f68:	40a48533          	sub	a0,s1,a0
    80006f6c:	00153513          	seqz	a0,a0
    80006f70:	00813483          	ld	s1,8(sp)
    80006f74:	02010113          	addi	sp,sp,32
    80006f78:	00008067          	ret

0000000080006f7c <push_off>:
    80006f7c:	fe010113          	addi	sp,sp,-32
    80006f80:	00813823          	sd	s0,16(sp)
    80006f84:	00113c23          	sd	ra,24(sp)
    80006f88:	00913423          	sd	s1,8(sp)
    80006f8c:	02010413          	addi	s0,sp,32
    80006f90:	100024f3          	csrr	s1,sstatus
    80006f94:	100027f3          	csrr	a5,sstatus
    80006f98:	ffd7f793          	andi	a5,a5,-3
    80006f9c:	10079073          	csrw	sstatus,a5
    80006fa0:	ffffe097          	auipc	ra,0xffffe
    80006fa4:	714080e7          	jalr	1812(ra) # 800056b4 <mycpu>
    80006fa8:	07852783          	lw	a5,120(a0)
    80006fac:	02078663          	beqz	a5,80006fd8 <push_off+0x5c>
    80006fb0:	ffffe097          	auipc	ra,0xffffe
    80006fb4:	704080e7          	jalr	1796(ra) # 800056b4 <mycpu>
    80006fb8:	07852783          	lw	a5,120(a0)
    80006fbc:	01813083          	ld	ra,24(sp)
    80006fc0:	01013403          	ld	s0,16(sp)
    80006fc4:	0017879b          	addiw	a5,a5,1
    80006fc8:	06f52c23          	sw	a5,120(a0)
    80006fcc:	00813483          	ld	s1,8(sp)
    80006fd0:	02010113          	addi	sp,sp,32
    80006fd4:	00008067          	ret
    80006fd8:	0014d493          	srli	s1,s1,0x1
    80006fdc:	ffffe097          	auipc	ra,0xffffe
    80006fe0:	6d8080e7          	jalr	1752(ra) # 800056b4 <mycpu>
    80006fe4:	0014f493          	andi	s1,s1,1
    80006fe8:	06952e23          	sw	s1,124(a0)
    80006fec:	fc5ff06f          	j	80006fb0 <push_off+0x34>

0000000080006ff0 <pop_off>:
    80006ff0:	ff010113          	addi	sp,sp,-16
    80006ff4:	00813023          	sd	s0,0(sp)
    80006ff8:	00113423          	sd	ra,8(sp)
    80006ffc:	01010413          	addi	s0,sp,16
    80007000:	ffffe097          	auipc	ra,0xffffe
    80007004:	6b4080e7          	jalr	1716(ra) # 800056b4 <mycpu>
    80007008:	100027f3          	csrr	a5,sstatus
    8000700c:	0027f793          	andi	a5,a5,2
    80007010:	04079663          	bnez	a5,8000705c <pop_off+0x6c>
    80007014:	07852783          	lw	a5,120(a0)
    80007018:	02f05a63          	blez	a5,8000704c <pop_off+0x5c>
    8000701c:	fff7871b          	addiw	a4,a5,-1
    80007020:	06e52c23          	sw	a4,120(a0)
    80007024:	00071c63          	bnez	a4,8000703c <pop_off+0x4c>
    80007028:	07c52783          	lw	a5,124(a0)
    8000702c:	00078863          	beqz	a5,8000703c <pop_off+0x4c>
    80007030:	100027f3          	csrr	a5,sstatus
    80007034:	0027e793          	ori	a5,a5,2
    80007038:	10079073          	csrw	sstatus,a5
    8000703c:	00813083          	ld	ra,8(sp)
    80007040:	00013403          	ld	s0,0(sp)
    80007044:	01010113          	addi	sp,sp,16
    80007048:	00008067          	ret
    8000704c:	00001517          	auipc	a0,0x1
    80007050:	6ec50513          	addi	a0,a0,1772 # 80008738 <digits+0x48>
    80007054:	fffff097          	auipc	ra,0xfffff
    80007058:	018080e7          	jalr	24(ra) # 8000606c <panic>
    8000705c:	00001517          	auipc	a0,0x1
    80007060:	6c450513          	addi	a0,a0,1732 # 80008720 <digits+0x30>
    80007064:	fffff097          	auipc	ra,0xfffff
    80007068:	008080e7          	jalr	8(ra) # 8000606c <panic>

000000008000706c <push_on>:
    8000706c:	fe010113          	addi	sp,sp,-32
    80007070:	00813823          	sd	s0,16(sp)
    80007074:	00113c23          	sd	ra,24(sp)
    80007078:	00913423          	sd	s1,8(sp)
    8000707c:	02010413          	addi	s0,sp,32
    80007080:	100024f3          	csrr	s1,sstatus
    80007084:	100027f3          	csrr	a5,sstatus
    80007088:	0027e793          	ori	a5,a5,2
    8000708c:	10079073          	csrw	sstatus,a5
    80007090:	ffffe097          	auipc	ra,0xffffe
    80007094:	624080e7          	jalr	1572(ra) # 800056b4 <mycpu>
    80007098:	07852783          	lw	a5,120(a0)
    8000709c:	02078663          	beqz	a5,800070c8 <push_on+0x5c>
    800070a0:	ffffe097          	auipc	ra,0xffffe
    800070a4:	614080e7          	jalr	1556(ra) # 800056b4 <mycpu>
    800070a8:	07852783          	lw	a5,120(a0)
    800070ac:	01813083          	ld	ra,24(sp)
    800070b0:	01013403          	ld	s0,16(sp)
    800070b4:	0017879b          	addiw	a5,a5,1
    800070b8:	06f52c23          	sw	a5,120(a0)
    800070bc:	00813483          	ld	s1,8(sp)
    800070c0:	02010113          	addi	sp,sp,32
    800070c4:	00008067          	ret
    800070c8:	0014d493          	srli	s1,s1,0x1
    800070cc:	ffffe097          	auipc	ra,0xffffe
    800070d0:	5e8080e7          	jalr	1512(ra) # 800056b4 <mycpu>
    800070d4:	0014f493          	andi	s1,s1,1
    800070d8:	06952e23          	sw	s1,124(a0)
    800070dc:	fc5ff06f          	j	800070a0 <push_on+0x34>

00000000800070e0 <pop_on>:
    800070e0:	ff010113          	addi	sp,sp,-16
    800070e4:	00813023          	sd	s0,0(sp)
    800070e8:	00113423          	sd	ra,8(sp)
    800070ec:	01010413          	addi	s0,sp,16
    800070f0:	ffffe097          	auipc	ra,0xffffe
    800070f4:	5c4080e7          	jalr	1476(ra) # 800056b4 <mycpu>
    800070f8:	100027f3          	csrr	a5,sstatus
    800070fc:	0027f793          	andi	a5,a5,2
    80007100:	04078463          	beqz	a5,80007148 <pop_on+0x68>
    80007104:	07852783          	lw	a5,120(a0)
    80007108:	02f05863          	blez	a5,80007138 <pop_on+0x58>
    8000710c:	fff7879b          	addiw	a5,a5,-1
    80007110:	06f52c23          	sw	a5,120(a0)
    80007114:	07853783          	ld	a5,120(a0)
    80007118:	00079863          	bnez	a5,80007128 <pop_on+0x48>
    8000711c:	100027f3          	csrr	a5,sstatus
    80007120:	ffd7f793          	andi	a5,a5,-3
    80007124:	10079073          	csrw	sstatus,a5
    80007128:	00813083          	ld	ra,8(sp)
    8000712c:	00013403          	ld	s0,0(sp)
    80007130:	01010113          	addi	sp,sp,16
    80007134:	00008067          	ret
    80007138:	00001517          	auipc	a0,0x1
    8000713c:	62850513          	addi	a0,a0,1576 # 80008760 <digits+0x70>
    80007140:	fffff097          	auipc	ra,0xfffff
    80007144:	f2c080e7          	jalr	-212(ra) # 8000606c <panic>
    80007148:	00001517          	auipc	a0,0x1
    8000714c:	5f850513          	addi	a0,a0,1528 # 80008740 <digits+0x50>
    80007150:	fffff097          	auipc	ra,0xfffff
    80007154:	f1c080e7          	jalr	-228(ra) # 8000606c <panic>

0000000080007158 <__memset>:
    80007158:	ff010113          	addi	sp,sp,-16
    8000715c:	00813423          	sd	s0,8(sp)
    80007160:	01010413          	addi	s0,sp,16
    80007164:	1a060e63          	beqz	a2,80007320 <__memset+0x1c8>
    80007168:	40a007b3          	neg	a5,a0
    8000716c:	0077f793          	andi	a5,a5,7
    80007170:	00778693          	addi	a3,a5,7
    80007174:	00b00813          	li	a6,11
    80007178:	0ff5f593          	andi	a1,a1,255
    8000717c:	fff6071b          	addiw	a4,a2,-1
    80007180:	1b06e663          	bltu	a3,a6,8000732c <__memset+0x1d4>
    80007184:	1cd76463          	bltu	a4,a3,8000734c <__memset+0x1f4>
    80007188:	1a078e63          	beqz	a5,80007344 <__memset+0x1ec>
    8000718c:	00b50023          	sb	a1,0(a0)
    80007190:	00100713          	li	a4,1
    80007194:	1ae78463          	beq	a5,a4,8000733c <__memset+0x1e4>
    80007198:	00b500a3          	sb	a1,1(a0)
    8000719c:	00200713          	li	a4,2
    800071a0:	1ae78a63          	beq	a5,a4,80007354 <__memset+0x1fc>
    800071a4:	00b50123          	sb	a1,2(a0)
    800071a8:	00300713          	li	a4,3
    800071ac:	18e78463          	beq	a5,a4,80007334 <__memset+0x1dc>
    800071b0:	00b501a3          	sb	a1,3(a0)
    800071b4:	00400713          	li	a4,4
    800071b8:	1ae78263          	beq	a5,a4,8000735c <__memset+0x204>
    800071bc:	00b50223          	sb	a1,4(a0)
    800071c0:	00500713          	li	a4,5
    800071c4:	1ae78063          	beq	a5,a4,80007364 <__memset+0x20c>
    800071c8:	00b502a3          	sb	a1,5(a0)
    800071cc:	00700713          	li	a4,7
    800071d0:	18e79e63          	bne	a5,a4,8000736c <__memset+0x214>
    800071d4:	00b50323          	sb	a1,6(a0)
    800071d8:	00700e93          	li	t4,7
    800071dc:	00859713          	slli	a4,a1,0x8
    800071e0:	00e5e733          	or	a4,a1,a4
    800071e4:	01059e13          	slli	t3,a1,0x10
    800071e8:	01c76e33          	or	t3,a4,t3
    800071ec:	01859313          	slli	t1,a1,0x18
    800071f0:	006e6333          	or	t1,t3,t1
    800071f4:	02059893          	slli	a7,a1,0x20
    800071f8:	40f60e3b          	subw	t3,a2,a5
    800071fc:	011368b3          	or	a7,t1,a7
    80007200:	02859813          	slli	a6,a1,0x28
    80007204:	0108e833          	or	a6,a7,a6
    80007208:	03059693          	slli	a3,a1,0x30
    8000720c:	003e589b          	srliw	a7,t3,0x3
    80007210:	00d866b3          	or	a3,a6,a3
    80007214:	03859713          	slli	a4,a1,0x38
    80007218:	00389813          	slli	a6,a7,0x3
    8000721c:	00f507b3          	add	a5,a0,a5
    80007220:	00e6e733          	or	a4,a3,a4
    80007224:	000e089b          	sext.w	a7,t3
    80007228:	00f806b3          	add	a3,a6,a5
    8000722c:	00e7b023          	sd	a4,0(a5)
    80007230:	00878793          	addi	a5,a5,8
    80007234:	fed79ce3          	bne	a5,a3,8000722c <__memset+0xd4>
    80007238:	ff8e7793          	andi	a5,t3,-8
    8000723c:	0007871b          	sext.w	a4,a5
    80007240:	01d787bb          	addw	a5,a5,t4
    80007244:	0ce88e63          	beq	a7,a4,80007320 <__memset+0x1c8>
    80007248:	00f50733          	add	a4,a0,a5
    8000724c:	00b70023          	sb	a1,0(a4)
    80007250:	0017871b          	addiw	a4,a5,1
    80007254:	0cc77663          	bgeu	a4,a2,80007320 <__memset+0x1c8>
    80007258:	00e50733          	add	a4,a0,a4
    8000725c:	00b70023          	sb	a1,0(a4)
    80007260:	0027871b          	addiw	a4,a5,2
    80007264:	0ac77e63          	bgeu	a4,a2,80007320 <__memset+0x1c8>
    80007268:	00e50733          	add	a4,a0,a4
    8000726c:	00b70023          	sb	a1,0(a4)
    80007270:	0037871b          	addiw	a4,a5,3
    80007274:	0ac77663          	bgeu	a4,a2,80007320 <__memset+0x1c8>
    80007278:	00e50733          	add	a4,a0,a4
    8000727c:	00b70023          	sb	a1,0(a4)
    80007280:	0047871b          	addiw	a4,a5,4
    80007284:	08c77e63          	bgeu	a4,a2,80007320 <__memset+0x1c8>
    80007288:	00e50733          	add	a4,a0,a4
    8000728c:	00b70023          	sb	a1,0(a4)
    80007290:	0057871b          	addiw	a4,a5,5
    80007294:	08c77663          	bgeu	a4,a2,80007320 <__memset+0x1c8>
    80007298:	00e50733          	add	a4,a0,a4
    8000729c:	00b70023          	sb	a1,0(a4)
    800072a0:	0067871b          	addiw	a4,a5,6
    800072a4:	06c77e63          	bgeu	a4,a2,80007320 <__memset+0x1c8>
    800072a8:	00e50733          	add	a4,a0,a4
    800072ac:	00b70023          	sb	a1,0(a4)
    800072b0:	0077871b          	addiw	a4,a5,7
    800072b4:	06c77663          	bgeu	a4,a2,80007320 <__memset+0x1c8>
    800072b8:	00e50733          	add	a4,a0,a4
    800072bc:	00b70023          	sb	a1,0(a4)
    800072c0:	0087871b          	addiw	a4,a5,8
    800072c4:	04c77e63          	bgeu	a4,a2,80007320 <__memset+0x1c8>
    800072c8:	00e50733          	add	a4,a0,a4
    800072cc:	00b70023          	sb	a1,0(a4)
    800072d0:	0097871b          	addiw	a4,a5,9
    800072d4:	04c77663          	bgeu	a4,a2,80007320 <__memset+0x1c8>
    800072d8:	00e50733          	add	a4,a0,a4
    800072dc:	00b70023          	sb	a1,0(a4)
    800072e0:	00a7871b          	addiw	a4,a5,10
    800072e4:	02c77e63          	bgeu	a4,a2,80007320 <__memset+0x1c8>
    800072e8:	00e50733          	add	a4,a0,a4
    800072ec:	00b70023          	sb	a1,0(a4)
    800072f0:	00b7871b          	addiw	a4,a5,11
    800072f4:	02c77663          	bgeu	a4,a2,80007320 <__memset+0x1c8>
    800072f8:	00e50733          	add	a4,a0,a4
    800072fc:	00b70023          	sb	a1,0(a4)
    80007300:	00c7871b          	addiw	a4,a5,12
    80007304:	00c77e63          	bgeu	a4,a2,80007320 <__memset+0x1c8>
    80007308:	00e50733          	add	a4,a0,a4
    8000730c:	00b70023          	sb	a1,0(a4)
    80007310:	00d7879b          	addiw	a5,a5,13
    80007314:	00c7f663          	bgeu	a5,a2,80007320 <__memset+0x1c8>
    80007318:	00f507b3          	add	a5,a0,a5
    8000731c:	00b78023          	sb	a1,0(a5)
    80007320:	00813403          	ld	s0,8(sp)
    80007324:	01010113          	addi	sp,sp,16
    80007328:	00008067          	ret
    8000732c:	00b00693          	li	a3,11
    80007330:	e55ff06f          	j	80007184 <__memset+0x2c>
    80007334:	00300e93          	li	t4,3
    80007338:	ea5ff06f          	j	800071dc <__memset+0x84>
    8000733c:	00100e93          	li	t4,1
    80007340:	e9dff06f          	j	800071dc <__memset+0x84>
    80007344:	00000e93          	li	t4,0
    80007348:	e95ff06f          	j	800071dc <__memset+0x84>
    8000734c:	00000793          	li	a5,0
    80007350:	ef9ff06f          	j	80007248 <__memset+0xf0>
    80007354:	00200e93          	li	t4,2
    80007358:	e85ff06f          	j	800071dc <__memset+0x84>
    8000735c:	00400e93          	li	t4,4
    80007360:	e7dff06f          	j	800071dc <__memset+0x84>
    80007364:	00500e93          	li	t4,5
    80007368:	e75ff06f          	j	800071dc <__memset+0x84>
    8000736c:	00600e93          	li	t4,6
    80007370:	e6dff06f          	j	800071dc <__memset+0x84>

0000000080007374 <__memmove>:
    80007374:	ff010113          	addi	sp,sp,-16
    80007378:	00813423          	sd	s0,8(sp)
    8000737c:	01010413          	addi	s0,sp,16
    80007380:	0e060863          	beqz	a2,80007470 <__memmove+0xfc>
    80007384:	fff6069b          	addiw	a3,a2,-1
    80007388:	0006881b          	sext.w	a6,a3
    8000738c:	0ea5e863          	bltu	a1,a0,8000747c <__memmove+0x108>
    80007390:	00758713          	addi	a4,a1,7
    80007394:	00a5e7b3          	or	a5,a1,a0
    80007398:	40a70733          	sub	a4,a4,a0
    8000739c:	0077f793          	andi	a5,a5,7
    800073a0:	00f73713          	sltiu	a4,a4,15
    800073a4:	00174713          	xori	a4,a4,1
    800073a8:	0017b793          	seqz	a5,a5
    800073ac:	00e7f7b3          	and	a5,a5,a4
    800073b0:	10078863          	beqz	a5,800074c0 <__memmove+0x14c>
    800073b4:	00900793          	li	a5,9
    800073b8:	1107f463          	bgeu	a5,a6,800074c0 <__memmove+0x14c>
    800073bc:	0036581b          	srliw	a6,a2,0x3
    800073c0:	fff8081b          	addiw	a6,a6,-1
    800073c4:	02081813          	slli	a6,a6,0x20
    800073c8:	01d85893          	srli	a7,a6,0x1d
    800073cc:	00858813          	addi	a6,a1,8
    800073d0:	00058793          	mv	a5,a1
    800073d4:	00050713          	mv	a4,a0
    800073d8:	01088833          	add	a6,a7,a6
    800073dc:	0007b883          	ld	a7,0(a5)
    800073e0:	00878793          	addi	a5,a5,8
    800073e4:	00870713          	addi	a4,a4,8
    800073e8:	ff173c23          	sd	a7,-8(a4)
    800073ec:	ff0798e3          	bne	a5,a6,800073dc <__memmove+0x68>
    800073f0:	ff867713          	andi	a4,a2,-8
    800073f4:	02071793          	slli	a5,a4,0x20
    800073f8:	0207d793          	srli	a5,a5,0x20
    800073fc:	00f585b3          	add	a1,a1,a5
    80007400:	40e686bb          	subw	a3,a3,a4
    80007404:	00f507b3          	add	a5,a0,a5
    80007408:	06e60463          	beq	a2,a4,80007470 <__memmove+0xfc>
    8000740c:	0005c703          	lbu	a4,0(a1)
    80007410:	00e78023          	sb	a4,0(a5)
    80007414:	04068e63          	beqz	a3,80007470 <__memmove+0xfc>
    80007418:	0015c603          	lbu	a2,1(a1)
    8000741c:	00100713          	li	a4,1
    80007420:	00c780a3          	sb	a2,1(a5)
    80007424:	04e68663          	beq	a3,a4,80007470 <__memmove+0xfc>
    80007428:	0025c603          	lbu	a2,2(a1)
    8000742c:	00200713          	li	a4,2
    80007430:	00c78123          	sb	a2,2(a5)
    80007434:	02e68e63          	beq	a3,a4,80007470 <__memmove+0xfc>
    80007438:	0035c603          	lbu	a2,3(a1)
    8000743c:	00300713          	li	a4,3
    80007440:	00c781a3          	sb	a2,3(a5)
    80007444:	02e68663          	beq	a3,a4,80007470 <__memmove+0xfc>
    80007448:	0045c603          	lbu	a2,4(a1)
    8000744c:	00400713          	li	a4,4
    80007450:	00c78223          	sb	a2,4(a5)
    80007454:	00e68e63          	beq	a3,a4,80007470 <__memmove+0xfc>
    80007458:	0055c603          	lbu	a2,5(a1)
    8000745c:	00500713          	li	a4,5
    80007460:	00c782a3          	sb	a2,5(a5)
    80007464:	00e68663          	beq	a3,a4,80007470 <__memmove+0xfc>
    80007468:	0065c703          	lbu	a4,6(a1)
    8000746c:	00e78323          	sb	a4,6(a5)
    80007470:	00813403          	ld	s0,8(sp)
    80007474:	01010113          	addi	sp,sp,16
    80007478:	00008067          	ret
    8000747c:	02061713          	slli	a4,a2,0x20
    80007480:	02075713          	srli	a4,a4,0x20
    80007484:	00e587b3          	add	a5,a1,a4
    80007488:	f0f574e3          	bgeu	a0,a5,80007390 <__memmove+0x1c>
    8000748c:	02069613          	slli	a2,a3,0x20
    80007490:	02065613          	srli	a2,a2,0x20
    80007494:	fff64613          	not	a2,a2
    80007498:	00e50733          	add	a4,a0,a4
    8000749c:	00c78633          	add	a2,a5,a2
    800074a0:	fff7c683          	lbu	a3,-1(a5)
    800074a4:	fff78793          	addi	a5,a5,-1
    800074a8:	fff70713          	addi	a4,a4,-1
    800074ac:	00d70023          	sb	a3,0(a4)
    800074b0:	fec798e3          	bne	a5,a2,800074a0 <__memmove+0x12c>
    800074b4:	00813403          	ld	s0,8(sp)
    800074b8:	01010113          	addi	sp,sp,16
    800074bc:	00008067          	ret
    800074c0:	02069713          	slli	a4,a3,0x20
    800074c4:	02075713          	srli	a4,a4,0x20
    800074c8:	00170713          	addi	a4,a4,1
    800074cc:	00e50733          	add	a4,a0,a4
    800074d0:	00050793          	mv	a5,a0
    800074d4:	0005c683          	lbu	a3,0(a1)
    800074d8:	00178793          	addi	a5,a5,1
    800074dc:	00158593          	addi	a1,a1,1
    800074e0:	fed78fa3          	sb	a3,-1(a5)
    800074e4:	fee798e3          	bne	a5,a4,800074d4 <__memmove+0x160>
    800074e8:	f89ff06f          	j	80007470 <__memmove+0xfc>
	...

Disassembly of section .kernel:

0000000080013628 <copy_and_swap-0x9d8>:
	...

0000000080014000 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80014000:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80014004:	00b29a63          	bne	t0,a1,80014018 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80014008:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    8001400c:	fe029ae3          	bnez	t0,80014000 <copy_and_swap>
    li a0, 0               # Set return to success.
    80014010:	00000513          	li	a0,0
    jr ra                  # Return.
    80014014:	00008067          	ret

0000000080014018 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80014018:	00100513          	li	a0,1
    8001401c:	00008067          	ret

0000000080014020 <_Z9mem_allocm>:
//

#include "../../h/syscall_c.hpp"

void* mem_alloc(size_t size)
{
    80014020:	ff010113          	addi	sp,sp,-16
    80014024:	00813423          	sd	s0,8(sp)
    80014028:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    8001402c:	03f50513          	addi	a0,a0,63
    80014030:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    80014034:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 1");
    80014038:	00100513          	li	a0,1

    __asm__ volatile("ecall"); // system call
    8001403c:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    80014040:	00050513          	mv	a0,a0

    if(allocatedAddr == 0)
        return nullptr;

    return (void*)allocatedAddr;
}
    80014044:	00813403          	ld	s0,8(sp)
    80014048:	01010113          	addi	sp,sp,16
    8001404c:	00008067          	ret

0000000080014050 <_Z8mem_freePv>:

int mem_free(void* p)
{
    80014050:	ff010113          	addi	sp,sp,-16
    80014054:	00813423          	sd	s0,8(sp)
    80014058:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    8001405c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 2");
    80014060:	00200513          	li	a0,2

    __asm__ volatile("ecall"); // system call
    80014064:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80014068:	00050513          	mv	a0,a0

    return result;
}
    8001406c:	0005051b          	sext.w	a0,a0
    80014070:	00813403          	ld	s0,8(sp)
    80014074:	01010113          	addi	sp,sp,16
    80014078:	00008067          	ret

000000008001407c <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    8001407c:	fd010113          	addi	sp,sp,-48
    80014080:	02113423          	sd	ra,40(sp)
    80014084:	02813023          	sd	s0,32(sp)
    80014088:	00913c23          	sd	s1,24(sp)
    8001408c:	01213823          	sd	s2,16(sp)
    80014090:	01313423          	sd	s3,8(sp)
    80014094:	03010413          	addi	s0,sp,48
    80014098:	00050493          	mv	s1,a0
    8001409c:	00058913          	mv	s2,a1
    800140a0:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)args;
    uint64 opLocal = 0x11;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800140a4:	00001537          	lui	a0,0x1
    800140a8:	00000097          	auipc	ra,0x0
    800140ac:	f78080e7          	jalr	-136(ra) # 80014020 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == nullptr)
    800140b0:	04050263          	beqz	a0,800140f4 <_Z13thread_createPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    800140b4:	00050713          	mv	a4,a0
    //__asm__ volatile("mv a4, %0" :  : "r"((uint64)1));
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    800140b8:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    800140bc:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    800140c0:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800140c4:	01100793          	li	a5,17
    800140c8:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    800140cc:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800140d0:	00050513          	mv	a0,a0

    return result;
    800140d4:	0005051b          	sext.w	a0,a0
}
    800140d8:	02813083          	ld	ra,40(sp)
    800140dc:	02013403          	ld	s0,32(sp)
    800140e0:	01813483          	ld	s1,24(sp)
    800140e4:	01013903          	ld	s2,16(sp)
    800140e8:	00813983          	ld	s3,8(sp)
    800140ec:	03010113          	addi	sp,sp,48
    800140f0:	00008067          	ret
        return -1;
    800140f4:	fff00513          	li	a0,-1
    800140f8:	fe1ff06f          	j	800140d8 <_Z13thread_createPP7_threadPFvPvES2_+0x5c>

00000000800140fc <_Z15thread_dispatchv>:

void thread_dispatch()
{
    800140fc:	ff010113          	addi	sp,sp,-16
    80014100:	00813423          	sd	s0,8(sp)
    80014104:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80014108:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    8001410c:	00000073          	ecall
}
    80014110:	00813403          	ld	s0,8(sp)
    80014114:	01010113          	addi	sp,sp,16
    80014118:	00008067          	ret

000000008001411c <_Z11thread_exitv>:

int thread_exit()
{
    8001411c:	ff010113          	addi	sp,sp,-16
    80014120:	00813423          	sd	s0,8(sp)
    80014124:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    80014128:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    8001412c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80014130:	00050513          	mv	a0,a0
    return result;
}
    80014134:	0005051b          	sext.w	a0,a0
    80014138:	00813403          	ld	s0,8(sp)
    8001413c:	01010113          	addi	sp,sp,16
    80014140:	00008067          	ret

0000000080014144 <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned int x)
{
    80014144:	ff010113          	addi	sp,sp,-16
    80014148:	00813423          	sd	s0,8(sp)
    8001414c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)x));
    80014150:	02059593          	slli	a1,a1,0x20
    80014154:	0205d593          	srli	a1,a1,0x20
    80014158:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    8001415c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    80014160:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    80014164:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80014168:	00050513          	mv	a0,a0
    return result;
}
    8001416c:	0005051b          	sext.w	a0,a0
    80014170:	00813403          	ld	s0,8(sp)
    80014174:	01010113          	addi	sp,sp,16
    80014178:	00008067          	ret

000000008001417c <_Z9sem_closeP4_sem>:


int sem_close(sem_t handle)
{
    8001417c:	ff010113          	addi	sp,sp,-16
    80014180:	00813423          	sd	s0,8(sp)
    80014184:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80014188:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    8001418c:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    80014190:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80014194:	00050513          	mv	a0,a0
    return result;
}
    80014198:	0005051b          	sext.w	a0,a0
    8001419c:	00813403          	ld	s0,8(sp)
    800141a0:	01010113          	addi	sp,sp,16
    800141a4:	00008067          	ret

00000000800141a8 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id)
{
    800141a8:	ff010113          	addi	sp,sp,-16
    800141ac:	00813423          	sd	s0,8(sp)
    800141b0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    800141b4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    800141b8:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    800141bc:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800141c0:	00050513          	mv	a0,a0
    return result;
}
    800141c4:	0005051b          	sext.w	a0,a0
    800141c8:	00813403          	ld	s0,8(sp)
    800141cc:	01010113          	addi	sp,sp,16
    800141d0:	00008067          	ret

00000000800141d4 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id)
{
    800141d4:	ff010113          	addi	sp,sp,-16
    800141d8:	00813423          	sd	s0,8(sp)
    800141dc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    800141e0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    800141e4:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    800141e8:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800141ec:	00050513          	mv	a0,a0
    return result;
}
    800141f0:	0005051b          	sext.w	a0,a0
    800141f4:	00813403          	ld	s0,8(sp)
    800141f8:	01010113          	addi	sp,sp,16
    800141fc:	00008067          	ret

0000000080014200 <_Z10time_sleepm>:

int time_sleep(uint64 time)
{
    80014200:	ff010113          	addi	sp,sp,-16
    80014204:	00813423          	sd	s0,8(sp)
    80014208:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)time));
    8001420c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    80014210:	03100513          	li	a0,49

    __asm__ volatile("ecall");
    80014214:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80014218:	00050513          	mv	a0,a0
    return result;
}
    8001421c:	0005051b          	sext.w	a0,a0
    80014220:	00813403          	ld	s0,8(sp)
    80014224:	01010113          	addi	sp,sp,16
    80014228:	00008067          	ret

000000008001422c <_Z12thread_startPv>:

int thread_start(void* p)
{
    8001422c:	ff010113          	addi	sp,sp,-16
    80014230:	00813423          	sd	s0,8(sp)
    80014234:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)p));
    80014238:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x15");
    8001423c:	01500513          	li	a0,21

    __asm__ volatile("ecall");
    80014240:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80014244:	00050513          	mv	a0,a0
    return result;
}
    80014248:	0005051b          	sext.w	a0,a0
    8001424c:	00813403          	ld	s0,8(sp)
    80014250:	01010113          	addi	sp,sp,16
    80014254:	00008067          	ret

0000000080014258 <_Z15thread_make_pcbPP7_threadPFvPvES2_>:

int thread_make_pcb(thread_t* handle, void(*start_routine)(void*), void *arg)
{
    80014258:	fd010113          	addi	sp,sp,-48
    8001425c:	02113423          	sd	ra,40(sp)
    80014260:	02813023          	sd	s0,32(sp)
    80014264:	00913c23          	sd	s1,24(sp)
    80014268:	01213823          	sd	s2,16(sp)
    8001426c:	01313423          	sd	s3,8(sp)
    80014270:	03010413          	addi	s0,sp,48
    80014274:	00050493          	mv	s1,a0
    80014278:	00058913          	mv	s2,a1
    8001427c:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)arg;
    uint64 opLocal = 0x14;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    80014280:	00001537          	lui	a0,0x1
    80014284:	00000097          	auipc	ra,0x0
    80014288:	d9c080e7          	jalr	-612(ra) # 80014020 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == 0)
    8001428c:	04050263          	beqz	a0,800142d0 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    80014290:	00050713          	mv	a4,a0
    //__asm__ volatile("mv a4, %0" :  : "r"((uint64)1));
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    80014294:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    80014298:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    8001429c:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800142a0:	01400793          	li	a5,20
    800142a4:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800142a8:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800142ac:	00050513          	mv	a0,a0
    return result;
    800142b0:	0005051b          	sext.w	a0,a0
}
    800142b4:	02813083          	ld	ra,40(sp)
    800142b8:	02013403          	ld	s0,32(sp)
    800142bc:	01813483          	ld	s1,24(sp)
    800142c0:	01013903          	ld	s2,16(sp)
    800142c4:	00813983          	ld	s3,8(sp)
    800142c8:	03010113          	addi	sp,sp,48
    800142cc:	00008067          	ret
        return -1;
    800142d0:	fff00513          	li	a0,-1
    800142d4:	fe1ff06f          	j	800142b4 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x5c>

00000000800142d8 <_Z4getcv>:

char getc()
{
    800142d8:	ff010113          	addi	sp,sp,-16
    800142dc:	00813423          	sd	s0,8(sp)
    800142e0:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    800142e4:	04100513          	li	a0,65

    __asm__ volatile("ecall");
    800142e8:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800142ec:	00050513          	mv	a0,a0
    return (char)result;
}
    800142f0:	0ff57513          	andi	a0,a0,255
    800142f4:	00813403          	ld	s0,8(sp)
    800142f8:	01010113          	addi	sp,sp,16
    800142fc:	00008067          	ret

0000000080014300 <_Z4putcc>:

void putc(char c)
{
    80014300:	ff010113          	addi	sp,sp,-16
    80014304:	00813423          	sd	s0,8(sp)
    80014308:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)c));
    8001430c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    80014310:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    80014314:	00000073          	ecall
}
    80014318:	00813403          	ld	s0,8(sp)
    8001431c:	01010113          	addi	sp,sp,16
    80014320:	00008067          	ret

0000000080014324 <_Z17thread_delete_pcbP7_thread>:
//    __asm__ volatile("mv %0, a0" : "=r"(result));
//    return (char)result;
//}

int thread_delete_pcb(thread_t handle)
{
    80014324:	ff010113          	addi	sp,sp,-16
    80014328:	00813423          	sd	s0,8(sp)
    8001432c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80014330:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x16");
    80014334:	01600513          	li	a0,22
    __asm__ volatile("ecall");
    80014338:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8001433c:	00050513          	mv	a0,a0
    return (char)result;
}
    80014340:	0ff57513          	andi	a0,a0,255
    80014344:	00813403          	ld	s0,8(sp)
    80014348:	01010113          	addi	sp,sp,16
    8001434c:	00008067          	ret

0000000080014350 <_ZN7_threaddlEPv>:
//

#include "../../h/_thread.hpp"
#include "../../h/syscall_c.hpp"

void _thread::operator delete(void *p) {
    80014350:	ff010113          	addi	sp,sp,-16
    80014354:	00113423          	sd	ra,8(sp)
    80014358:	00813023          	sd	s0,0(sp)
    8001435c:	01010413          	addi	s0,sp,16
    thread_delete_pcb((thread_t)p);
    80014360:	00000097          	auipc	ra,0x0
    80014364:	fc4080e7          	jalr	-60(ra) # 80014324 <_Z17thread_delete_pcbP7_thread>
    80014368:	00813083          	ld	ra,8(sp)
    8001436c:	00013403          	ld	s0,0(sp)
    80014370:	01010113          	addi	sp,sp,16
    80014374:	00008067          	ret

0000000080014378 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80014378:	fe010113          	addi	sp,sp,-32
    8001437c:	00113c23          	sd	ra,24(sp)
    80014380:	00813823          	sd	s0,16(sp)
    80014384:	00913423          	sd	s1,8(sp)
    80014388:	02010413          	addi	s0,sp,32
    8001438c:	00050493          	mv	s1,a0
    LOCK();
    80014390:	00100613          	li	a2,1
    80014394:	00000593          	li	a1,0
    80014398:	00002517          	auipc	a0,0x2
    8001439c:	d8850513          	addi	a0,a0,-632 # 80016120 <lockPrint>
    800143a0:	00000097          	auipc	ra,0x0
    800143a4:	c60080e7          	jalr	-928(ra) # 80014000 <copy_and_swap>
    800143a8:	fe0514e3          	bnez	a0,80014390 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800143ac:	0004c503          	lbu	a0,0(s1)
    800143b0:	00050a63          	beqz	a0,800143c4 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    800143b4:	00000097          	auipc	ra,0x0
    800143b8:	f4c080e7          	jalr	-180(ra) # 80014300 <_Z4putcc>
        string++;
    800143bc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800143c0:	fedff06f          	j	800143ac <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800143c4:	00000613          	li	a2,0
    800143c8:	00100593          	li	a1,1
    800143cc:	00002517          	auipc	a0,0x2
    800143d0:	d5450513          	addi	a0,a0,-684 # 80016120 <lockPrint>
    800143d4:	00000097          	auipc	ra,0x0
    800143d8:	c2c080e7          	jalr	-980(ra) # 80014000 <copy_and_swap>
    800143dc:	fe0514e3          	bnez	a0,800143c4 <_Z11printStringPKc+0x4c>
}
    800143e0:	01813083          	ld	ra,24(sp)
    800143e4:	01013403          	ld	s0,16(sp)
    800143e8:	00813483          	ld	s1,8(sp)
    800143ec:	02010113          	addi	sp,sp,32
    800143f0:	00008067          	ret

00000000800143f4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800143f4:	fd010113          	addi	sp,sp,-48
    800143f8:	02113423          	sd	ra,40(sp)
    800143fc:	02813023          	sd	s0,32(sp)
    80014400:	00913c23          	sd	s1,24(sp)
    80014404:	01213823          	sd	s2,16(sp)
    80014408:	01313423          	sd	s3,8(sp)
    8001440c:	01413023          	sd	s4,0(sp)
    80014410:	03010413          	addi	s0,sp,48
    80014414:	00050993          	mv	s3,a0
    80014418:	00058a13          	mv	s4,a1
    LOCK();
    8001441c:	00100613          	li	a2,1
    80014420:	00000593          	li	a1,0
    80014424:	00002517          	auipc	a0,0x2
    80014428:	cfc50513          	addi	a0,a0,-772 # 80016120 <lockPrint>
    8001442c:	00000097          	auipc	ra,0x0
    80014430:	bd4080e7          	jalr	-1068(ra) # 80014000 <copy_and_swap>
    80014434:	fe0514e3          	bnez	a0,8001441c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80014438:	00000913          	li	s2,0
    8001443c:	00090493          	mv	s1,s2
    80014440:	0019091b          	addiw	s2,s2,1
    80014444:	03495a63          	bge	s2,s4,80014478 <_Z9getStringPci+0x84>
        cc = getc();
    80014448:	00000097          	auipc	ra,0x0
    8001444c:	e90080e7          	jalr	-368(ra) # 800142d8 <_Z4getcv>
        if(cc < 1)
    80014450:	02050463          	beqz	a0,80014478 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80014454:	009984b3          	add	s1,s3,s1
    80014458:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8001445c:	00a00793          	li	a5,10
    80014460:	00f50a63          	beq	a0,a5,80014474 <_Z9getStringPci+0x80>
    80014464:	00d00793          	li	a5,13
    80014468:	fcf51ae3          	bne	a0,a5,8001443c <_Z9getStringPci+0x48>
        buf[i++] = c;
    8001446c:	00090493          	mv	s1,s2
    80014470:	0080006f          	j	80014478 <_Z9getStringPci+0x84>
    80014474:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80014478:	009984b3          	add	s1,s3,s1
    8001447c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80014480:	00000613          	li	a2,0
    80014484:	00100593          	li	a1,1
    80014488:	00002517          	auipc	a0,0x2
    8001448c:	c9850513          	addi	a0,a0,-872 # 80016120 <lockPrint>
    80014490:	00000097          	auipc	ra,0x0
    80014494:	b70080e7          	jalr	-1168(ra) # 80014000 <copy_and_swap>
    80014498:	fe0514e3          	bnez	a0,80014480 <_Z9getStringPci+0x8c>
    return buf;
}
    8001449c:	00098513          	mv	a0,s3
    800144a0:	02813083          	ld	ra,40(sp)
    800144a4:	02013403          	ld	s0,32(sp)
    800144a8:	01813483          	ld	s1,24(sp)
    800144ac:	01013903          	ld	s2,16(sp)
    800144b0:	00813983          	ld	s3,8(sp)
    800144b4:	00013a03          	ld	s4,0(sp)
    800144b8:	03010113          	addi	sp,sp,48
    800144bc:	00008067          	ret

00000000800144c0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800144c0:	ff010113          	addi	sp,sp,-16
    800144c4:	00813423          	sd	s0,8(sp)
    800144c8:	01010413          	addi	s0,sp,16
    800144cc:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800144d0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800144d4:	0006c603          	lbu	a2,0(a3)
    800144d8:	fd06071b          	addiw	a4,a2,-48
    800144dc:	0ff77713          	andi	a4,a4,255
    800144e0:	00900793          	li	a5,9
    800144e4:	02e7e063          	bltu	a5,a4,80014504 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800144e8:	0025179b          	slliw	a5,a0,0x2
    800144ec:	00a787bb          	addw	a5,a5,a0
    800144f0:	0017979b          	slliw	a5,a5,0x1
    800144f4:	00168693          	addi	a3,a3,1
    800144f8:	00c787bb          	addw	a5,a5,a2
    800144fc:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80014500:	fd5ff06f          	j	800144d4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80014504:	00813403          	ld	s0,8(sp)
    80014508:	01010113          	addi	sp,sp,16
    8001450c:	00008067          	ret

0000000080014510 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80014510:	fc010113          	addi	sp,sp,-64
    80014514:	02113c23          	sd	ra,56(sp)
    80014518:	02813823          	sd	s0,48(sp)
    8001451c:	02913423          	sd	s1,40(sp)
    80014520:	03213023          	sd	s2,32(sp)
    80014524:	01313c23          	sd	s3,24(sp)
    80014528:	04010413          	addi	s0,sp,64
    8001452c:	00050493          	mv	s1,a0
    80014530:	00058913          	mv	s2,a1
    80014534:	00060993          	mv	s3,a2
    LOCK();
    80014538:	00100613          	li	a2,1
    8001453c:	00000593          	li	a1,0
    80014540:	00002517          	auipc	a0,0x2
    80014544:	be050513          	addi	a0,a0,-1056 # 80016120 <lockPrint>
    80014548:	00000097          	auipc	ra,0x0
    8001454c:	ab8080e7          	jalr	-1352(ra) # 80014000 <copy_and_swap>
    80014550:	fe0514e3          	bnez	a0,80014538 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80014554:	00098463          	beqz	s3,8001455c <_Z8printIntiii+0x4c>
    80014558:	0804c463          	bltz	s1,800145e0 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8001455c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80014560:	00000593          	li	a1,0
    }

    i = 0;
    80014564:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80014568:	0009079b          	sext.w	a5,s2
    8001456c:	0325773b          	remuw	a4,a0,s2
    80014570:	00048613          	mv	a2,s1
    80014574:	0014849b          	addiw	s1,s1,1
    80014578:	02071693          	slli	a3,a4,0x20
    8001457c:	0206d693          	srli	a3,a3,0x20
    80014580:	00002717          	auipc	a4,0x2
    80014584:	ae870713          	addi	a4,a4,-1304 # 80016068 <digits>
    80014588:	00d70733          	add	a4,a4,a3
    8001458c:	00074683          	lbu	a3,0(a4)
    80014590:	fd040713          	addi	a4,s0,-48
    80014594:	00c70733          	add	a4,a4,a2
    80014598:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8001459c:	0005071b          	sext.w	a4,a0
    800145a0:	0325553b          	divuw	a0,a0,s2
    800145a4:	fcf772e3          	bgeu	a4,a5,80014568 <_Z8printIntiii+0x58>
    if(neg)
    800145a8:	00058c63          	beqz	a1,800145c0 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800145ac:	fd040793          	addi	a5,s0,-48
    800145b0:	009784b3          	add	s1,a5,s1
    800145b4:	02d00793          	li	a5,45
    800145b8:	fef48823          	sb	a5,-16(s1)
    800145bc:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800145c0:	fff4849b          	addiw	s1,s1,-1
    800145c4:	0204c463          	bltz	s1,800145ec <_Z8printIntiii+0xdc>
        putc(buf[i]);
    800145c8:	fd040793          	addi	a5,s0,-48
    800145cc:	009787b3          	add	a5,a5,s1
    800145d0:	ff07c503          	lbu	a0,-16(a5)
    800145d4:	00000097          	auipc	ra,0x0
    800145d8:	d2c080e7          	jalr	-724(ra) # 80014300 <_Z4putcc>
    800145dc:	fe5ff06f          	j	800145c0 <_Z8printIntiii+0xb0>
        x = -xx;
    800145e0:	4090053b          	negw	a0,s1
        neg = 1;
    800145e4:	00100593          	li	a1,1
        x = -xx;
    800145e8:	f7dff06f          	j	80014564 <_Z8printIntiii+0x54>

    UNLOCK();
    800145ec:	00000613          	li	a2,0
    800145f0:	00100593          	li	a1,1
    800145f4:	00002517          	auipc	a0,0x2
    800145f8:	b2c50513          	addi	a0,a0,-1236 # 80016120 <lockPrint>
    800145fc:	00000097          	auipc	ra,0x0
    80014600:	a04080e7          	jalr	-1532(ra) # 80014000 <copy_and_swap>
    80014604:	fe0514e3          	bnez	a0,800145ec <_Z8printIntiii+0xdc>
}
    80014608:	03813083          	ld	ra,56(sp)
    8001460c:	03013403          	ld	s0,48(sp)
    80014610:	02813483          	ld	s1,40(sp)
    80014614:	02013903          	ld	s2,32(sp)
    80014618:	01813983          	ld	s3,24(sp)
    8001461c:	04010113          	addi	sp,sp,64
    80014620:	00008067          	ret

0000000080014624 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80014624:	fd010113          	addi	sp,sp,-48
    80014628:	02113423          	sd	ra,40(sp)
    8001462c:	02813023          	sd	s0,32(sp)
    80014630:	00913c23          	sd	s1,24(sp)
    80014634:	01213823          	sd	s2,16(sp)
    80014638:	01313423          	sd	s3,8(sp)
    8001463c:	03010413          	addi	s0,sp,48
    80014640:	00050493          	mv	s1,a0
    80014644:	00058993          	mv	s3,a1
    80014648:	0015879b          	addiw	a5,a1,1
    8001464c:	0007851b          	sext.w	a0,a5
    80014650:	00f4a023          	sw	a5,0(s1)
    80014654:	0004a823          	sw	zero,16(s1)
    80014658:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8001465c:	00251513          	slli	a0,a0,0x2
    80014660:	00000097          	auipc	ra,0x0
    80014664:	9c0080e7          	jalr	-1600(ra) # 80014020 <_Z9mem_allocm>
    80014668:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8001466c:	01000513          	li	a0,16
    80014670:	00001097          	auipc	ra,0x1
    80014674:	b10080e7          	jalr	-1264(ra) # 80015180 <_Znwm>
    80014678:	00050913          	mv	s2,a0
    8001467c:	00050863          	beqz	a0,8001468c <_ZN9BufferCPPC1Ei+0x68>
    80014680:	00000593          	li	a1,0
    80014684:	00001097          	auipc	ra,0x1
    80014688:	d50080e7          	jalr	-688(ra) # 800153d4 <_ZN9SemaphoreC1Ej>
    8001468c:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80014690:	01000513          	li	a0,16
    80014694:	00001097          	auipc	ra,0x1
    80014698:	aec080e7          	jalr	-1300(ra) # 80015180 <_Znwm>
    8001469c:	00050913          	mv	s2,a0
    800146a0:	00050863          	beqz	a0,800146b0 <_ZN9BufferCPPC1Ei+0x8c>
    800146a4:	00098593          	mv	a1,s3
    800146a8:	00001097          	auipc	ra,0x1
    800146ac:	d2c080e7          	jalr	-724(ra) # 800153d4 <_ZN9SemaphoreC1Ej>
    800146b0:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    800146b4:	01000513          	li	a0,16
    800146b8:	00001097          	auipc	ra,0x1
    800146bc:	ac8080e7          	jalr	-1336(ra) # 80015180 <_Znwm>
    800146c0:	00050913          	mv	s2,a0
    800146c4:	00050863          	beqz	a0,800146d4 <_ZN9BufferCPPC1Ei+0xb0>
    800146c8:	00100593          	li	a1,1
    800146cc:	00001097          	auipc	ra,0x1
    800146d0:	d08080e7          	jalr	-760(ra) # 800153d4 <_ZN9SemaphoreC1Ej>
    800146d4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800146d8:	01000513          	li	a0,16
    800146dc:	00001097          	auipc	ra,0x1
    800146e0:	aa4080e7          	jalr	-1372(ra) # 80015180 <_Znwm>
    800146e4:	00050913          	mv	s2,a0
    800146e8:	00050863          	beqz	a0,800146f8 <_ZN9BufferCPPC1Ei+0xd4>
    800146ec:	00100593          	li	a1,1
    800146f0:	00001097          	auipc	ra,0x1
    800146f4:	ce4080e7          	jalr	-796(ra) # 800153d4 <_ZN9SemaphoreC1Ej>
    800146f8:	0324b823          	sd	s2,48(s1)
}
    800146fc:	02813083          	ld	ra,40(sp)
    80014700:	02013403          	ld	s0,32(sp)
    80014704:	01813483          	ld	s1,24(sp)
    80014708:	01013903          	ld	s2,16(sp)
    8001470c:	00813983          	ld	s3,8(sp)
    80014710:	03010113          	addi	sp,sp,48
    80014714:	00008067          	ret
    80014718:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8001471c:	00090513          	mv	a0,s2
    80014720:	00001097          	auipc	ra,0x1
    80014724:	a88080e7          	jalr	-1400(ra) # 800151a8 <_ZdlPv>
    80014728:	00048513          	mv	a0,s1
    8001472c:	ffffd097          	auipc	ra,0xffffd
    80014730:	48c080e7          	jalr	1164(ra) # 80011bb8 <_Unwind_Resume>
    80014734:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80014738:	00090513          	mv	a0,s2
    8001473c:	00001097          	auipc	ra,0x1
    80014740:	a6c080e7          	jalr	-1428(ra) # 800151a8 <_ZdlPv>
    80014744:	00048513          	mv	a0,s1
    80014748:	ffffd097          	auipc	ra,0xffffd
    8001474c:	470080e7          	jalr	1136(ra) # 80011bb8 <_Unwind_Resume>
    80014750:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80014754:	00090513          	mv	a0,s2
    80014758:	00001097          	auipc	ra,0x1
    8001475c:	a50080e7          	jalr	-1456(ra) # 800151a8 <_ZdlPv>
    80014760:	00048513          	mv	a0,s1
    80014764:	ffffd097          	auipc	ra,0xffffd
    80014768:	454080e7          	jalr	1108(ra) # 80011bb8 <_Unwind_Resume>
    8001476c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80014770:	00090513          	mv	a0,s2
    80014774:	00001097          	auipc	ra,0x1
    80014778:	a34080e7          	jalr	-1484(ra) # 800151a8 <_ZdlPv>
    8001477c:	00048513          	mv	a0,s1
    80014780:	ffffd097          	auipc	ra,0xffffd
    80014784:	438080e7          	jalr	1080(ra) # 80011bb8 <_Unwind_Resume>

0000000080014788 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80014788:	fe010113          	addi	sp,sp,-32
    8001478c:	00113c23          	sd	ra,24(sp)
    80014790:	00813823          	sd	s0,16(sp)
    80014794:	00913423          	sd	s1,8(sp)
    80014798:	01213023          	sd	s2,0(sp)
    8001479c:	02010413          	addi	s0,sp,32
    800147a0:	00050493          	mv	s1,a0
    800147a4:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800147a8:	01853503          	ld	a0,24(a0)
    800147ac:	00001097          	auipc	ra,0x1
    800147b0:	bf0080e7          	jalr	-1040(ra) # 8001539c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800147b4:	0304b503          	ld	a0,48(s1)
    800147b8:	00001097          	auipc	ra,0x1
    800147bc:	be4080e7          	jalr	-1052(ra) # 8001539c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800147c0:	0084b783          	ld	a5,8(s1)
    800147c4:	0144a703          	lw	a4,20(s1)
    800147c8:	00271713          	slli	a4,a4,0x2
    800147cc:	00e787b3          	add	a5,a5,a4
    800147d0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800147d4:	0144a783          	lw	a5,20(s1)
    800147d8:	0017879b          	addiw	a5,a5,1
    800147dc:	0004a703          	lw	a4,0(s1)
    800147e0:	02e7e7bb          	remw	a5,a5,a4
    800147e4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800147e8:	0304b503          	ld	a0,48(s1)
    800147ec:	00001097          	auipc	ra,0x1
    800147f0:	c34080e7          	jalr	-972(ra) # 80015420 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800147f4:	0204b503          	ld	a0,32(s1)
    800147f8:	00001097          	auipc	ra,0x1
    800147fc:	c28080e7          	jalr	-984(ra) # 80015420 <_ZN9Semaphore6signalEv>

}
    80014800:	01813083          	ld	ra,24(sp)
    80014804:	01013403          	ld	s0,16(sp)
    80014808:	00813483          	ld	s1,8(sp)
    8001480c:	00013903          	ld	s2,0(sp)
    80014810:	02010113          	addi	sp,sp,32
    80014814:	00008067          	ret

0000000080014818 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80014818:	fe010113          	addi	sp,sp,-32
    8001481c:	00113c23          	sd	ra,24(sp)
    80014820:	00813823          	sd	s0,16(sp)
    80014824:	00913423          	sd	s1,8(sp)
    80014828:	01213023          	sd	s2,0(sp)
    8001482c:	02010413          	addi	s0,sp,32
    80014830:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80014834:	02053503          	ld	a0,32(a0)
    80014838:	00001097          	auipc	ra,0x1
    8001483c:	b64080e7          	jalr	-1180(ra) # 8001539c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80014840:	0284b503          	ld	a0,40(s1)
    80014844:	00001097          	auipc	ra,0x1
    80014848:	b58080e7          	jalr	-1192(ra) # 8001539c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8001484c:	0084b703          	ld	a4,8(s1)
    80014850:	0104a783          	lw	a5,16(s1)
    80014854:	00279693          	slli	a3,a5,0x2
    80014858:	00d70733          	add	a4,a4,a3
    8001485c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80014860:	0017879b          	addiw	a5,a5,1
    80014864:	0004a703          	lw	a4,0(s1)
    80014868:	02e7e7bb          	remw	a5,a5,a4
    8001486c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80014870:	0284b503          	ld	a0,40(s1)
    80014874:	00001097          	auipc	ra,0x1
    80014878:	bac080e7          	jalr	-1108(ra) # 80015420 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    8001487c:	0184b503          	ld	a0,24(s1)
    80014880:	00001097          	auipc	ra,0x1
    80014884:	ba0080e7          	jalr	-1120(ra) # 80015420 <_ZN9Semaphore6signalEv>

    return ret;
}
    80014888:	00090513          	mv	a0,s2
    8001488c:	01813083          	ld	ra,24(sp)
    80014890:	01013403          	ld	s0,16(sp)
    80014894:	00813483          	ld	s1,8(sp)
    80014898:	00013903          	ld	s2,0(sp)
    8001489c:	02010113          	addi	sp,sp,32
    800148a0:	00008067          	ret

00000000800148a4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800148a4:	fe010113          	addi	sp,sp,-32
    800148a8:	00113c23          	sd	ra,24(sp)
    800148ac:	00813823          	sd	s0,16(sp)
    800148b0:	00913423          	sd	s1,8(sp)
    800148b4:	01213023          	sd	s2,0(sp)
    800148b8:	02010413          	addi	s0,sp,32
    800148bc:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800148c0:	02853503          	ld	a0,40(a0)
    800148c4:	00001097          	auipc	ra,0x1
    800148c8:	ad8080e7          	jalr	-1320(ra) # 8001539c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800148cc:	0304b503          	ld	a0,48(s1)
    800148d0:	00001097          	auipc	ra,0x1
    800148d4:	acc080e7          	jalr	-1332(ra) # 8001539c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800148d8:	0144a783          	lw	a5,20(s1)
    800148dc:	0104a903          	lw	s2,16(s1)
    800148e0:	0327ce63          	blt	a5,s2,8001491c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800148e4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800148e8:	0304b503          	ld	a0,48(s1)
    800148ec:	00001097          	auipc	ra,0x1
    800148f0:	b34080e7          	jalr	-1228(ra) # 80015420 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800148f4:	0284b503          	ld	a0,40(s1)
    800148f8:	00001097          	auipc	ra,0x1
    800148fc:	b28080e7          	jalr	-1240(ra) # 80015420 <_ZN9Semaphore6signalEv>

    return ret;
}
    80014900:	00090513          	mv	a0,s2
    80014904:	01813083          	ld	ra,24(sp)
    80014908:	01013403          	ld	s0,16(sp)
    8001490c:	00813483          	ld	s1,8(sp)
    80014910:	00013903          	ld	s2,0(sp)
    80014914:	02010113          	addi	sp,sp,32
    80014918:	00008067          	ret
        ret = cap - head + tail;
    8001491c:	0004a703          	lw	a4,0(s1)
    80014920:	4127093b          	subw	s2,a4,s2
    80014924:	00f9093b          	addw	s2,s2,a5
    80014928:	fc1ff06f          	j	800148e8 <_ZN9BufferCPP6getCntEv+0x44>

000000008001492c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8001492c:	fe010113          	addi	sp,sp,-32
    80014930:	00113c23          	sd	ra,24(sp)
    80014934:	00813823          	sd	s0,16(sp)
    80014938:	00913423          	sd	s1,8(sp)
    8001493c:	02010413          	addi	s0,sp,32
    80014940:	00050493          	mv	s1,a0
    Console::putc('\n');
    80014944:	00a00513          	li	a0,10
    80014948:	00001097          	auipc	ra,0x1
    8001494c:	b38080e7          	jalr	-1224(ra) # 80015480 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80014950:	00001517          	auipc	a0,0x1
    80014954:	6b050513          	addi	a0,a0,1712 # 80016000 <userDataStart>
    80014958:	00000097          	auipc	ra,0x0
    8001495c:	a20080e7          	jalr	-1504(ra) # 80014378 <_Z11printStringPKc>
    while (getCnt()) {
    80014960:	00048513          	mv	a0,s1
    80014964:	00000097          	auipc	ra,0x0
    80014968:	f40080e7          	jalr	-192(ra) # 800148a4 <_ZN9BufferCPP6getCntEv>
    8001496c:	02050c63          	beqz	a0,800149a4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80014970:	0084b783          	ld	a5,8(s1)
    80014974:	0104a703          	lw	a4,16(s1)
    80014978:	00271713          	slli	a4,a4,0x2
    8001497c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80014980:	0007c503          	lbu	a0,0(a5)
    80014984:	00001097          	auipc	ra,0x1
    80014988:	afc080e7          	jalr	-1284(ra) # 80015480 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    8001498c:	0104a783          	lw	a5,16(s1)
    80014990:	0017879b          	addiw	a5,a5,1
    80014994:	0004a703          	lw	a4,0(s1)
    80014998:	02e7e7bb          	remw	a5,a5,a4
    8001499c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800149a0:	fc1ff06f          	j	80014960 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800149a4:	02100513          	li	a0,33
    800149a8:	00001097          	auipc	ra,0x1
    800149ac:	ad8080e7          	jalr	-1320(ra) # 80015480 <_ZN7Console4putcEc>
    Console::putc('\n');
    800149b0:	00a00513          	li	a0,10
    800149b4:	00001097          	auipc	ra,0x1
    800149b8:	acc080e7          	jalr	-1332(ra) # 80015480 <_ZN7Console4putcEc>
    mem_free(buffer);
    800149bc:	0084b503          	ld	a0,8(s1)
    800149c0:	fffff097          	auipc	ra,0xfffff
    800149c4:	690080e7          	jalr	1680(ra) # 80014050 <_Z8mem_freePv>
    delete itemAvailable;
    800149c8:	0204b503          	ld	a0,32(s1)
    800149cc:	00050863          	beqz	a0,800149dc <_ZN9BufferCPPD1Ev+0xb0>
    800149d0:	00053783          	ld	a5,0(a0)
    800149d4:	0087b783          	ld	a5,8(a5)
    800149d8:	000780e7          	jalr	a5
    delete spaceAvailable;
    800149dc:	0184b503          	ld	a0,24(s1)
    800149e0:	00050863          	beqz	a0,800149f0 <_ZN9BufferCPPD1Ev+0xc4>
    800149e4:	00053783          	ld	a5,0(a0)
    800149e8:	0087b783          	ld	a5,8(a5)
    800149ec:	000780e7          	jalr	a5
    delete mutexTail;
    800149f0:	0304b503          	ld	a0,48(s1)
    800149f4:	00050863          	beqz	a0,80014a04 <_ZN9BufferCPPD1Ev+0xd8>
    800149f8:	00053783          	ld	a5,0(a0)
    800149fc:	0087b783          	ld	a5,8(a5)
    80014a00:	000780e7          	jalr	a5
    delete mutexHead;
    80014a04:	0284b503          	ld	a0,40(s1)
    80014a08:	00050863          	beqz	a0,80014a18 <_ZN9BufferCPPD1Ev+0xec>
    80014a0c:	00053783          	ld	a5,0(a0)
    80014a10:	0087b783          	ld	a5,8(a5)
    80014a14:	000780e7          	jalr	a5
}
    80014a18:	01813083          	ld	ra,24(sp)
    80014a1c:	01013403          	ld	s0,16(sp)
    80014a20:	00813483          	ld	s1,8(sp)
    80014a24:	02010113          	addi	sp,sp,32
    80014a28:	00008067          	ret

0000000080014a2c <_Z12userMainTestv>:
    long id;
    bool finished;
};


void userMainTest() {
    80014a2c:	fc010113          	addi	sp,sp,-64
    80014a30:	02113c23          	sd	ra,56(sp)
    80014a34:	02813823          	sd	s0,48(sp)
    80014a38:	02913423          	sd	s1,40(sp)
    80014a3c:	04010413          	addi	s0,sp,64
    ForkThread(long _id) noexcept : Thread(), id(_id), finished(false) {}
    80014a40:	fc040493          	addi	s1,s0,-64
    80014a44:	00048513          	mv	a0,s1
    80014a48:	00001097          	auipc	ra,0x1
    80014a4c:	90c080e7          	jalr	-1780(ra) # 80015354 <_ZN6ThreadC1Ev>
    80014a50:	00001797          	auipc	a5,0x1
    80014a54:	64078793          	addi	a5,a5,1600 # 80016090 <_ZTV10ForkThread+0x10>
    80014a58:	fcf43023          	sd	a5,-64(s0)
    80014a5c:	00100793          	li	a5,1
    80014a60:	fcf43823          	sd	a5,-48(s0)
    80014a64:	fc040c23          	sb	zero,-40(s0)
    ForkThread thread(1);

    thread.start();
    80014a68:	00048513          	mv	a0,s1
    80014a6c:	00000097          	auipc	ra,0x0
    80014a70:	7e4080e7          	jalr	2020(ra) # 80015250 <_ZN6Thread5startEv>
        return finished;
    80014a74:	fd844783          	lbu	a5,-40(s0)

    while (!thread.isFinished()) {
    80014a78:	00079863          	bnez	a5,80014a88 <_Z12userMainTestv+0x5c>
        thread_dispatch();
    80014a7c:	fffff097          	auipc	ra,0xfffff
    80014a80:	680080e7          	jalr	1664(ra) # 800140fc <_Z15thread_dispatchv>
    80014a84:	ff1ff06f          	j	80014a74 <_Z12userMainTestv+0x48>
    }

    printString("User main finished\n");
    80014a88:	00001517          	auipc	a0,0x1
    80014a8c:	5c850513          	addi	a0,a0,1480 # 80016050 <userDataStart+0x50>
    80014a90:	00000097          	auipc	ra,0x0
    80014a94:	8e8080e7          	jalr	-1816(ra) # 80014378 <_Z11printStringPKc>
class ForkThread : public Thread {
    80014a98:	00001797          	auipc	a5,0x1
    80014a9c:	5f878793          	addi	a5,a5,1528 # 80016090 <_ZTV10ForkThread+0x10>
    80014aa0:	fcf43023          	sd	a5,-64(s0)
    80014aa4:	fc040513          	addi	a0,s0,-64
    80014aa8:	00000097          	auipc	ra,0x0
    80014aac:	658080e7          	jalr	1624(ra) # 80015100 <_ZN6ThreadD1Ev>
}
    80014ab0:	03813083          	ld	ra,56(sp)
    80014ab4:	03013403          	ld	s0,48(sp)
    80014ab8:	02813483          	ld	s1,40(sp)
    80014abc:	04010113          	addi	sp,sp,64
    80014ac0:	00008067          	ret
    80014ac4:	00050493          	mv	s1,a0
class ForkThread : public Thread {
    80014ac8:	00001797          	auipc	a5,0x1
    80014acc:	5c878793          	addi	a5,a5,1480 # 80016090 <_ZTV10ForkThread+0x10>
    80014ad0:	fcf43023          	sd	a5,-64(s0)
    80014ad4:	fc040513          	addi	a0,s0,-64
    80014ad8:	00000097          	auipc	ra,0x0
    80014adc:	628080e7          	jalr	1576(ra) # 80015100 <_ZN6ThreadD1Ev>
    80014ae0:	00048513          	mv	a0,s1
    80014ae4:	ffffd097          	auipc	ra,0xffffd
    80014ae8:	0d4080e7          	jalr	212(ra) # 80011bb8 <_Unwind_Resume>

0000000080014aec <_Z8userMainv>:
//#include "ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

#include "test1OS2.hpp"

void userMain()
{
    80014aec:	ff010113          	addi	sp,sp,-16
    80014af0:	00113423          	sd	ra,8(sp)
    80014af4:	00813023          	sd	s0,0(sp)
    80014af8:	01010413          	addi	s0,sp,16
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    userMainTest();
    80014afc:	00000097          	auipc	ra,0x0
    80014b00:	f30080e7          	jalr	-208(ra) # 80014a2c <_Z12userMainTestv>
    80014b04:	00813083          	ld	ra,8(sp)
    80014b08:	00013403          	ld	s0,0(sp)
    80014b0c:	01010113          	addi	sp,sp,16
    80014b10:	00008067          	ret

0000000080014b14 <_ZN10ForkThread3runEv>:
    virtual void run() {
    80014b14:	fc010113          	addi	sp,sp,-64
    80014b18:	02113c23          	sd	ra,56(sp)
    80014b1c:	02813823          	sd	s0,48(sp)
    80014b20:	02913423          	sd	s1,40(sp)
    80014b24:	03213023          	sd	s2,32(sp)
    80014b28:	01313c23          	sd	s3,24(sp)
    80014b2c:	01413823          	sd	s4,16(sp)
    80014b30:	01513423          	sd	s5,8(sp)
    80014b34:	01613023          	sd	s6,0(sp)
    80014b38:	04010413          	addi	s0,sp,64
    80014b3c:	00050a13          	mv	s4,a0
        printString("Started thread id:");
    80014b40:	00001517          	auipc	a0,0x1
    80014b44:	4d850513          	addi	a0,a0,1240 # 80016018 <userDataStart+0x18>
    80014b48:	00000097          	auipc	ra,0x0
    80014b4c:	830080e7          	jalr	-2000(ra) # 80014378 <_Z11printStringPKc>
        printInt(id);
    80014b50:	00000613          	li	a2,0
    80014b54:	00a00593          	li	a1,10
    80014b58:	010a2503          	lw	a0,16(s4)
    80014b5c:	00000097          	auipc	ra,0x0
    80014b60:	9b4080e7          	jalr	-1612(ra) # 80014510 <_Z8printIntiii>
        printString("\n");
    80014b64:	00001517          	auipc	a0,0x1
    80014b68:	4cc50513          	addi	a0,a0,1228 # 80016030 <userDataStart+0x30>
    80014b6c:	00000097          	auipc	ra,0x0
    80014b70:	80c080e7          	jalr	-2036(ra) # 80014378 <_Z11printStringPKc>
        ForkThread* thread = new ForkThread(id + 1);
    80014b74:	02000513          	li	a0,32
    80014b78:	00000097          	auipc	ra,0x0
    80014b7c:	608080e7          	jalr	1544(ra) # 80015180 <_Znwm>
    80014b80:	00050993          	mv	s3,a0
    80014b84:	02050463          	beqz	a0,80014bac <_ZN10ForkThread3runEv+0x98>
    80014b88:	010a3483          	ld	s1,16(s4)
    80014b8c:	00148493          	addi	s1,s1,1
    ForkThread(long _id) noexcept : Thread(), id(_id), finished(false) {}
    80014b90:	00000097          	auipc	ra,0x0
    80014b94:	7c4080e7          	jalr	1988(ra) # 80015354 <_ZN6ThreadC1Ev>
    80014b98:	00001797          	auipc	a5,0x1
    80014b9c:	4f878793          	addi	a5,a5,1272 # 80016090 <_ZTV10ForkThread+0x10>
    80014ba0:	00f9b023          	sd	a5,0(s3)
    80014ba4:	0099b823          	sd	s1,16(s3)
    80014ba8:	00098c23          	sb	zero,24(s3)
        ForkThread** threads = (ForkThread** ) mem_alloc(sizeof(ForkThread*) * id);
    80014bac:	010a3503          	ld	a0,16(s4)
    80014bb0:	00351513          	slli	a0,a0,0x3
    80014bb4:	fffff097          	auipc	ra,0xfffff
    80014bb8:	46c080e7          	jalr	1132(ra) # 80014020 <_Z9mem_allocm>
    80014bbc:	00050a93          	mv	s5,a0
        if (threads != nullptr) {
    80014bc0:	10050863          	beqz	a0,80014cd0 <_ZN10ForkThread3runEv+0x1bc>
            for (long i = 0; i < id; i++) {
    80014bc4:	00000913          	li	s2,0
    80014bc8:	0140006f          	j	80014bdc <_ZN10ForkThread3runEv+0xc8>
                threads[i] = new ForkThread(id);
    80014bcc:	00391793          	slli	a5,s2,0x3
    80014bd0:	00fa87b3          	add	a5,s5,a5
    80014bd4:	0097b023          	sd	s1,0(a5)
            for (long i = 0; i < id; i++) {
    80014bd8:	00190913          	addi	s2,s2,1
    80014bdc:	010a3783          	ld	a5,16(s4)
    80014be0:	02f95e63          	bge	s2,a5,80014c1c <_ZN10ForkThread3runEv+0x108>
                threads[i] = new ForkThread(id);
    80014be4:	02000513          	li	a0,32
    80014be8:	00000097          	auipc	ra,0x0
    80014bec:	598080e7          	jalr	1432(ra) # 80015180 <_Znwm>
    80014bf0:	00050493          	mv	s1,a0
    80014bf4:	fc050ce3          	beqz	a0,80014bcc <_ZN10ForkThread3runEv+0xb8>
    80014bf8:	010a3b03          	ld	s6,16(s4)
    ForkThread(long _id) noexcept : Thread(), id(_id), finished(false) {}
    80014bfc:	00000097          	auipc	ra,0x0
    80014c00:	758080e7          	jalr	1880(ra) # 80015354 <_ZN6ThreadC1Ev>
    80014c04:	00001797          	auipc	a5,0x1
    80014c08:	48c78793          	addi	a5,a5,1164 # 80016090 <_ZTV10ForkThread+0x10>
    80014c0c:	00f4b023          	sd	a5,0(s1)
    80014c10:	0164b823          	sd	s6,16(s1)
    80014c14:	00048c23          	sb	zero,24(s1)
    80014c18:	fb5ff06f          	j	80014bcc <_ZN10ForkThread3runEv+0xb8>
            if (thread != nullptr) {
    80014c1c:	06098a63          	beqz	s3,80014c90 <_ZN10ForkThread3runEv+0x17c>
                if (thread->start() == 0) {
    80014c20:	00098513          	mv	a0,s3
    80014c24:	00000097          	auipc	ra,0x0
    80014c28:	62c080e7          	jalr	1580(ra) # 80015250 <_ZN6Thread5startEv>
    80014c2c:	00050913          	mv	s2,a0
    80014c30:	04051863          	bnez	a0,80014c80 <_ZN10ForkThread3runEv+0x16c>
                    for (int i = 0; i < 5000; i++) {
    80014c34:	00050493          	mv	s1,a0
    80014c38:	0100006f          	j	80014c48 <_ZN10ForkThread3runEv+0x134>
                        thread_dispatch();
    80014c3c:	fffff097          	auipc	ra,0xfffff
    80014c40:	4c0080e7          	jalr	1216(ra) # 800140fc <_Z15thread_dispatchv>
                    for (int i = 0; i < 5000; i++) {
    80014c44:	0014849b          	addiw	s1,s1,1
    80014c48:	000017b7          	lui	a5,0x1
    80014c4c:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    80014c50:	0097ce63          	blt	a5,s1,80014c6c <_ZN10ForkThread3runEv+0x158>
                        for (int j = 0; j < 5000; j++) {
    80014c54:	00090713          	mv	a4,s2
    80014c58:	000017b7          	lui	a5,0x1
    80014c5c:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    80014c60:	fce7cee3          	blt	a5,a4,80014c3c <_ZN10ForkThread3runEv+0x128>
    80014c64:	0017071b          	addiw	a4,a4,1
    80014c68:	ff1ff06f          	j	80014c58 <_ZN10ForkThread3runEv+0x144>
        return finished;
    80014c6c:	0189c783          	lbu	a5,24(s3)
                    while (!thread->isFinished()) {
    80014c70:	00079863          	bnez	a5,80014c80 <_ZN10ForkThread3runEv+0x16c>
                        thread_dispatch();
    80014c74:	fffff097          	auipc	ra,0xfffff
    80014c78:	488080e7          	jalr	1160(ra) # 800140fc <_Z15thread_dispatchv>
                    while (!thread->isFinished()) {
    80014c7c:	ff1ff06f          	j	80014c6c <_ZN10ForkThread3runEv+0x158>
                delete thread;
    80014c80:	0009b783          	ld	a5,0(s3)
    80014c84:	0087b783          	ld	a5,8(a5)
    80014c88:	00098513          	mv	a0,s3
    80014c8c:	000780e7          	jalr	a5
                        for (int j = 0; j < 5000; j++) {
    80014c90:	00000493          	li	s1,0
    80014c94:	0080006f          	j	80014c9c <_ZN10ForkThread3runEv+0x188>
            for (long i = 0; i < id; i++) {
    80014c98:	00148493          	addi	s1,s1,1
    80014c9c:	010a3783          	ld	a5,16(s4)
    80014ca0:	02f4d263          	bge	s1,a5,80014cc4 <_ZN10ForkThread3runEv+0x1b0>
                delete threads[i];
    80014ca4:	00349793          	slli	a5,s1,0x3
    80014ca8:	00fa87b3          	add	a5,s5,a5
    80014cac:	0007b503          	ld	a0,0(a5)
    80014cb0:	fe0504e3          	beqz	a0,80014c98 <_ZN10ForkThread3runEv+0x184>
    80014cb4:	00053783          	ld	a5,0(a0)
    80014cb8:	0087b783          	ld	a5,8(a5)
    80014cbc:	000780e7          	jalr	a5
    80014cc0:	fd9ff06f          	j	80014c98 <_ZN10ForkThread3runEv+0x184>
            mem_free(threads);
    80014cc4:	000a8513          	mv	a0,s5
    80014cc8:	fffff097          	auipc	ra,0xfffff
    80014ccc:	388080e7          	jalr	904(ra) # 80014050 <_Z8mem_freePv>
        printString("Finished thread id:");
    80014cd0:	00001517          	auipc	a0,0x1
    80014cd4:	36850513          	addi	a0,a0,872 # 80016038 <userDataStart+0x38>
    80014cd8:	fffff097          	auipc	ra,0xfffff
    80014cdc:	6a0080e7          	jalr	1696(ra) # 80014378 <_Z11printStringPKc>
        printInt(id);
    80014ce0:	00000613          	li	a2,0
    80014ce4:	00a00593          	li	a1,10
    80014ce8:	010a2503          	lw	a0,16(s4)
    80014cec:	00000097          	auipc	ra,0x0
    80014cf0:	824080e7          	jalr	-2012(ra) # 80014510 <_Z8printIntiii>
        printString("\n");
    80014cf4:	00001517          	auipc	a0,0x1
    80014cf8:	33c50513          	addi	a0,a0,828 # 80016030 <userDataStart+0x30>
    80014cfc:	fffff097          	auipc	ra,0xfffff
    80014d00:	67c080e7          	jalr	1660(ra) # 80014378 <_Z11printStringPKc>
        finished = true;
    80014d04:	00100793          	li	a5,1
    80014d08:	00fa0c23          	sb	a5,24(s4)
    }
    80014d0c:	03813083          	ld	ra,56(sp)
    80014d10:	03013403          	ld	s0,48(sp)
    80014d14:	02813483          	ld	s1,40(sp)
    80014d18:	02013903          	ld	s2,32(sp)
    80014d1c:	01813983          	ld	s3,24(sp)
    80014d20:	01013a03          	ld	s4,16(sp)
    80014d24:	00813a83          	ld	s5,8(sp)
    80014d28:	00013b03          	ld	s6,0(sp)
    80014d2c:	04010113          	addi	sp,sp,64
    80014d30:	00008067          	ret

0000000080014d34 <_ZN10ForkThreadD1Ev>:
class ForkThread : public Thread {
    80014d34:	ff010113          	addi	sp,sp,-16
    80014d38:	00113423          	sd	ra,8(sp)
    80014d3c:	00813023          	sd	s0,0(sp)
    80014d40:	01010413          	addi	s0,sp,16
    80014d44:	00001797          	auipc	a5,0x1
    80014d48:	34c78793          	addi	a5,a5,844 # 80016090 <_ZTV10ForkThread+0x10>
    80014d4c:	00f53023          	sd	a5,0(a0)
    80014d50:	00000097          	auipc	ra,0x0
    80014d54:	3b0080e7          	jalr	944(ra) # 80015100 <_ZN6ThreadD1Ev>
    80014d58:	00813083          	ld	ra,8(sp)
    80014d5c:	00013403          	ld	s0,0(sp)
    80014d60:	01010113          	addi	sp,sp,16
    80014d64:	00008067          	ret

0000000080014d68 <_ZN10ForkThreadD0Ev>:
    80014d68:	fe010113          	addi	sp,sp,-32
    80014d6c:	00113c23          	sd	ra,24(sp)
    80014d70:	00813823          	sd	s0,16(sp)
    80014d74:	00913423          	sd	s1,8(sp)
    80014d78:	02010413          	addi	s0,sp,32
    80014d7c:	00050493          	mv	s1,a0
    80014d80:	00001797          	auipc	a5,0x1
    80014d84:	31078793          	addi	a5,a5,784 # 80016090 <_ZTV10ForkThread+0x10>
    80014d88:	00f53023          	sd	a5,0(a0)
    80014d8c:	00000097          	auipc	ra,0x0
    80014d90:	374080e7          	jalr	884(ra) # 80015100 <_ZN6ThreadD1Ev>
    80014d94:	00048513          	mv	a0,s1
    80014d98:	00000097          	auipc	ra,0x0
    80014d9c:	410080e7          	jalr	1040(ra) # 800151a8 <_ZdlPv>
    80014da0:	01813083          	ld	ra,24(sp)
    80014da4:	01013403          	ld	s0,16(sp)
    80014da8:	00813483          	ld	s1,8(sp)
    80014dac:	02010113          	addi	sp,sp,32
    80014db0:	00008067          	ret

0000000080014db4 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80014db4:	fe010113          	addi	sp,sp,-32
    80014db8:	00113c23          	sd	ra,24(sp)
    80014dbc:	00813823          	sd	s0,16(sp)
    80014dc0:	00913423          	sd	s1,8(sp)
    80014dc4:	01213023          	sd	s2,0(sp)
    80014dc8:	02010413          	addi	s0,sp,32
    80014dcc:	00050493          	mv	s1,a0
    80014dd0:	00058913          	mv	s2,a1
    80014dd4:	0015879b          	addiw	a5,a1,1
    80014dd8:	0007851b          	sext.w	a0,a5
    80014ddc:	00f4a023          	sw	a5,0(s1)
    80014de0:	0004a823          	sw	zero,16(s1)
    80014de4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80014de8:	00251513          	slli	a0,a0,0x2
    80014dec:	fffff097          	auipc	ra,0xfffff
    80014df0:	234080e7          	jalr	564(ra) # 80014020 <_Z9mem_allocm>
    80014df4:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80014df8:	00000593          	li	a1,0
    80014dfc:	02048513          	addi	a0,s1,32
    80014e00:	fffff097          	auipc	ra,0xfffff
    80014e04:	344080e7          	jalr	836(ra) # 80014144 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80014e08:	00090593          	mv	a1,s2
    80014e0c:	01848513          	addi	a0,s1,24
    80014e10:	fffff097          	auipc	ra,0xfffff
    80014e14:	334080e7          	jalr	820(ra) # 80014144 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80014e18:	00100593          	li	a1,1
    80014e1c:	02848513          	addi	a0,s1,40
    80014e20:	fffff097          	auipc	ra,0xfffff
    80014e24:	324080e7          	jalr	804(ra) # 80014144 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80014e28:	00100593          	li	a1,1
    80014e2c:	03048513          	addi	a0,s1,48
    80014e30:	fffff097          	auipc	ra,0xfffff
    80014e34:	314080e7          	jalr	788(ra) # 80014144 <_Z8sem_openPP4_semj>
}
    80014e38:	01813083          	ld	ra,24(sp)
    80014e3c:	01013403          	ld	s0,16(sp)
    80014e40:	00813483          	ld	s1,8(sp)
    80014e44:	00013903          	ld	s2,0(sp)
    80014e48:	02010113          	addi	sp,sp,32
    80014e4c:	00008067          	ret

0000000080014e50 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80014e50:	fe010113          	addi	sp,sp,-32
    80014e54:	00113c23          	sd	ra,24(sp)
    80014e58:	00813823          	sd	s0,16(sp)
    80014e5c:	00913423          	sd	s1,8(sp)
    80014e60:	01213023          	sd	s2,0(sp)
    80014e64:	02010413          	addi	s0,sp,32
    80014e68:	00050493          	mv	s1,a0
    80014e6c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80014e70:	01853503          	ld	a0,24(a0)
    80014e74:	fffff097          	auipc	ra,0xfffff
    80014e78:	334080e7          	jalr	820(ra) # 800141a8 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80014e7c:	0304b503          	ld	a0,48(s1)
    80014e80:	fffff097          	auipc	ra,0xfffff
    80014e84:	328080e7          	jalr	808(ra) # 800141a8 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80014e88:	0084b783          	ld	a5,8(s1)
    80014e8c:	0144a703          	lw	a4,20(s1)
    80014e90:	00271713          	slli	a4,a4,0x2
    80014e94:	00e787b3          	add	a5,a5,a4
    80014e98:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80014e9c:	0144a783          	lw	a5,20(s1)
    80014ea0:	0017879b          	addiw	a5,a5,1
    80014ea4:	0004a703          	lw	a4,0(s1)
    80014ea8:	02e7e7bb          	remw	a5,a5,a4
    80014eac:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80014eb0:	0304b503          	ld	a0,48(s1)
    80014eb4:	fffff097          	auipc	ra,0xfffff
    80014eb8:	320080e7          	jalr	800(ra) # 800141d4 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80014ebc:	0204b503          	ld	a0,32(s1)
    80014ec0:	fffff097          	auipc	ra,0xfffff
    80014ec4:	314080e7          	jalr	788(ra) # 800141d4 <_Z10sem_signalP4_sem>

}
    80014ec8:	01813083          	ld	ra,24(sp)
    80014ecc:	01013403          	ld	s0,16(sp)
    80014ed0:	00813483          	ld	s1,8(sp)
    80014ed4:	00013903          	ld	s2,0(sp)
    80014ed8:	02010113          	addi	sp,sp,32
    80014edc:	00008067          	ret

0000000080014ee0 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80014ee0:	fe010113          	addi	sp,sp,-32
    80014ee4:	00113c23          	sd	ra,24(sp)
    80014ee8:	00813823          	sd	s0,16(sp)
    80014eec:	00913423          	sd	s1,8(sp)
    80014ef0:	01213023          	sd	s2,0(sp)
    80014ef4:	02010413          	addi	s0,sp,32
    80014ef8:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80014efc:	02053503          	ld	a0,32(a0)
    80014f00:	fffff097          	auipc	ra,0xfffff
    80014f04:	2a8080e7          	jalr	680(ra) # 800141a8 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80014f08:	0284b503          	ld	a0,40(s1)
    80014f0c:	fffff097          	auipc	ra,0xfffff
    80014f10:	29c080e7          	jalr	668(ra) # 800141a8 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80014f14:	0084b703          	ld	a4,8(s1)
    80014f18:	0104a783          	lw	a5,16(s1)
    80014f1c:	00279693          	slli	a3,a5,0x2
    80014f20:	00d70733          	add	a4,a4,a3
    80014f24:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80014f28:	0017879b          	addiw	a5,a5,1
    80014f2c:	0004a703          	lw	a4,0(s1)
    80014f30:	02e7e7bb          	remw	a5,a5,a4
    80014f34:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80014f38:	0284b503          	ld	a0,40(s1)
    80014f3c:	fffff097          	auipc	ra,0xfffff
    80014f40:	298080e7          	jalr	664(ra) # 800141d4 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80014f44:	0184b503          	ld	a0,24(s1)
    80014f48:	fffff097          	auipc	ra,0xfffff
    80014f4c:	28c080e7          	jalr	652(ra) # 800141d4 <_Z10sem_signalP4_sem>

    return ret;
}
    80014f50:	00090513          	mv	a0,s2
    80014f54:	01813083          	ld	ra,24(sp)
    80014f58:	01013403          	ld	s0,16(sp)
    80014f5c:	00813483          	ld	s1,8(sp)
    80014f60:	00013903          	ld	s2,0(sp)
    80014f64:	02010113          	addi	sp,sp,32
    80014f68:	00008067          	ret

0000000080014f6c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80014f6c:	fe010113          	addi	sp,sp,-32
    80014f70:	00113c23          	sd	ra,24(sp)
    80014f74:	00813823          	sd	s0,16(sp)
    80014f78:	00913423          	sd	s1,8(sp)
    80014f7c:	01213023          	sd	s2,0(sp)
    80014f80:	02010413          	addi	s0,sp,32
    80014f84:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80014f88:	02853503          	ld	a0,40(a0)
    80014f8c:	fffff097          	auipc	ra,0xfffff
    80014f90:	21c080e7          	jalr	540(ra) # 800141a8 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80014f94:	0304b503          	ld	a0,48(s1)
    80014f98:	fffff097          	auipc	ra,0xfffff
    80014f9c:	210080e7          	jalr	528(ra) # 800141a8 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80014fa0:	0144a783          	lw	a5,20(s1)
    80014fa4:	0104a903          	lw	s2,16(s1)
    80014fa8:	0327ce63          	blt	a5,s2,80014fe4 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80014fac:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80014fb0:	0304b503          	ld	a0,48(s1)
    80014fb4:	fffff097          	auipc	ra,0xfffff
    80014fb8:	220080e7          	jalr	544(ra) # 800141d4 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80014fbc:	0284b503          	ld	a0,40(s1)
    80014fc0:	fffff097          	auipc	ra,0xfffff
    80014fc4:	214080e7          	jalr	532(ra) # 800141d4 <_Z10sem_signalP4_sem>

    return ret;
    80014fc8:	00090513          	mv	a0,s2
    80014fcc:	01813083          	ld	ra,24(sp)
    80014fd0:	01013403          	ld	s0,16(sp)
    80014fd4:	00813483          	ld	s1,8(sp)
    80014fd8:	00013903          	ld	s2,0(sp)
    80014fdc:	02010113          	addi	sp,sp,32
    80014fe0:	00008067          	ret
        ret = cap - head + tail;
    80014fe4:	0004a703          	lw	a4,0(s1)
    80014fe8:	4127093b          	subw	s2,a4,s2
    80014fec:	00f9093b          	addw	s2,s2,a5
    80014ff0:	fc1ff06f          	j	80014fb0 <_ZN6Buffer6getCntEv+0x44>

0000000080014ff4 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80014ff4:	fe010113          	addi	sp,sp,-32
    80014ff8:	00113c23          	sd	ra,24(sp)
    80014ffc:	00813823          	sd	s0,16(sp)
    80015000:	00913423          	sd	s1,8(sp)
    80015004:	02010413          	addi	s0,sp,32
    80015008:	00050493          	mv	s1,a0
    putc('\n');
    8001500c:	00a00513          	li	a0,10
    80015010:	fffff097          	auipc	ra,0xfffff
    80015014:	2f0080e7          	jalr	752(ra) # 80014300 <_Z4putcc>
    printString("Buffer deleted!\n");
    80015018:	00001517          	auipc	a0,0x1
    8001501c:	fe850513          	addi	a0,a0,-24 # 80016000 <userDataStart>
    80015020:	fffff097          	auipc	ra,0xfffff
    80015024:	358080e7          	jalr	856(ra) # 80014378 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80015028:	00048513          	mv	a0,s1
    8001502c:	00000097          	auipc	ra,0x0
    80015030:	f40080e7          	jalr	-192(ra) # 80014f6c <_ZN6Buffer6getCntEv>
    80015034:	02a05c63          	blez	a0,8001506c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80015038:	0084b783          	ld	a5,8(s1)
    8001503c:	0104a703          	lw	a4,16(s1)
    80015040:	00271713          	slli	a4,a4,0x2
    80015044:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80015048:	0007c503          	lbu	a0,0(a5)
    8001504c:	fffff097          	auipc	ra,0xfffff
    80015050:	2b4080e7          	jalr	692(ra) # 80014300 <_Z4putcc>
        head = (head + 1) % cap;
    80015054:	0104a783          	lw	a5,16(s1)
    80015058:	0017879b          	addiw	a5,a5,1
    8001505c:	0004a703          	lw	a4,0(s1)
    80015060:	02e7e7bb          	remw	a5,a5,a4
    80015064:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80015068:	fc1ff06f          	j	80015028 <_ZN6BufferD1Ev+0x34>
    putc('!');
    8001506c:	02100513          	li	a0,33
    80015070:	fffff097          	auipc	ra,0xfffff
    80015074:	290080e7          	jalr	656(ra) # 80014300 <_Z4putcc>
    putc('\n');
    80015078:	00a00513          	li	a0,10
    8001507c:	fffff097          	auipc	ra,0xfffff
    80015080:	284080e7          	jalr	644(ra) # 80014300 <_Z4putcc>
    mem_free(buffer);
    80015084:	0084b503          	ld	a0,8(s1)
    80015088:	fffff097          	auipc	ra,0xfffff
    8001508c:	fc8080e7          	jalr	-56(ra) # 80014050 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80015090:	0204b503          	ld	a0,32(s1)
    80015094:	fffff097          	auipc	ra,0xfffff
    80015098:	0e8080e7          	jalr	232(ra) # 8001417c <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    8001509c:	0184b503          	ld	a0,24(s1)
    800150a0:	fffff097          	auipc	ra,0xfffff
    800150a4:	0dc080e7          	jalr	220(ra) # 8001417c <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    800150a8:	0304b503          	ld	a0,48(s1)
    800150ac:	fffff097          	auipc	ra,0xfffff
    800150b0:	0d0080e7          	jalr	208(ra) # 8001417c <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    800150b4:	0284b503          	ld	a0,40(s1)
    800150b8:	fffff097          	auipc	ra,0xfffff
    800150bc:	0c4080e7          	jalr	196(ra) # 8001417c <_Z9sem_closeP4_sem>
}
    800150c0:	01813083          	ld	ra,24(sp)
    800150c4:	01013403          	ld	s0,16(sp)
    800150c8:	00813483          	ld	s1,8(sp)
    800150cc:	02010113          	addi	sp,sp,32
    800150d0:	00008067          	ret

00000000800150d4 <_ZN6Thread6runnerEPv>:
    myHandle = nullptr;
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    800150d4:	ff010113          	addi	sp,sp,-16
    800150d8:	00113423          	sd	ra,8(sp)
    800150dc:	00813023          	sd	s0,0(sp)
    800150e0:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    800150e4:	00053783          	ld	a5,0(a0)
    800150e8:	0107b783          	ld	a5,16(a5)
    800150ec:	000780e7          	jalr	a5
}
    800150f0:	00813083          	ld	ra,8(sp)
    800150f4:	00013403          	ld	s0,0(sp)
    800150f8:	01010113          	addi	sp,sp,16
    800150fc:	00008067          	ret

0000000080015100 <_ZN6ThreadD1Ev>:

Thread::~Thread()
    80015100:	00001797          	auipc	a5,0x1
    80015104:	fe878793          	addi	a5,a5,-24 # 800160e8 <_ZTV6Thread+0x10>
    80015108:	00f53023          	sd	a5,0(a0)
{
    delete myHandle;
    8001510c:	00853503          	ld	a0,8(a0)
    80015110:	02050663          	beqz	a0,8001513c <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread()
    80015114:	ff010113          	addi	sp,sp,-16
    80015118:	00113423          	sd	ra,8(sp)
    8001511c:	00813023          	sd	s0,0(sp)
    80015120:	01010413          	addi	s0,sp,16
    delete myHandle;
    80015124:	fffff097          	auipc	ra,0xfffff
    80015128:	22c080e7          	jalr	556(ra) # 80014350 <_ZN7_threaddlEPv>
}
    8001512c:	00813083          	ld	ra,8(sp)
    80015130:	00013403          	ld	s0,0(sp)
    80015134:	01010113          	addi	sp,sp,16
    80015138:	00008067          	ret
    8001513c:	00008067          	ret

0000000080015140 <_ZN9SemaphoreD1Ev>:
    if(myHandle == nullptr)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    80015140:	00001797          	auipc	a5,0x1
    80015144:	fd078793          	addi	a5,a5,-48 # 80016110 <_ZTV9Semaphore+0x10>
    80015148:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    8001514c:	00853503          	ld	a0,8(a0)
    80015150:	02050663          	beqz	a0,8001517c <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80015154:	ff010113          	addi	sp,sp,-16
    80015158:	00113423          	sd	ra,8(sp)
    8001515c:	00813023          	sd	s0,0(sp)
    80015160:	01010413          	addi	s0,sp,16
    delete myHandle;
    80015164:	00000097          	auipc	ra,0x0
    80015168:	4c4080e7          	jalr	1220(ra) # 80015628 <_ZN4_semdlEPv>
}
    8001516c:	00813083          	ld	ra,8(sp)
    80015170:	00013403          	ld	s0,0(sp)
    80015174:	01010113          	addi	sp,sp,16
    80015178:	00008067          	ret
    8001517c:	00008067          	ret

0000000080015180 <_Znwm>:
{
    80015180:	ff010113          	addi	sp,sp,-16
    80015184:	00113423          	sd	ra,8(sp)
    80015188:	00813023          	sd	s0,0(sp)
    8001518c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80015190:	fffff097          	auipc	ra,0xfffff
    80015194:	e90080e7          	jalr	-368(ra) # 80014020 <_Z9mem_allocm>
}
    80015198:	00813083          	ld	ra,8(sp)
    8001519c:	00013403          	ld	s0,0(sp)
    800151a0:	01010113          	addi	sp,sp,16
    800151a4:	00008067          	ret

00000000800151a8 <_ZdlPv>:
{
    800151a8:	ff010113          	addi	sp,sp,-16
    800151ac:	00113423          	sd	ra,8(sp)
    800151b0:	00813023          	sd	s0,0(sp)
    800151b4:	01010413          	addi	s0,sp,16
    mem_free(p);
    800151b8:	fffff097          	auipc	ra,0xfffff
    800151bc:	e98080e7          	jalr	-360(ra) # 80014050 <_Z8mem_freePv>
}
    800151c0:	00813083          	ld	ra,8(sp)
    800151c4:	00013403          	ld	s0,0(sp)
    800151c8:	01010113          	addi	sp,sp,16
    800151cc:	00008067          	ret

00000000800151d0 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    800151d0:	fe010113          	addi	sp,sp,-32
    800151d4:	00113c23          	sd	ra,24(sp)
    800151d8:	00813823          	sd	s0,16(sp)
    800151dc:	00913423          	sd	s1,8(sp)
    800151e0:	02010413          	addi	s0,sp,32
    800151e4:	00050493          	mv	s1,a0
}
    800151e8:	00000097          	auipc	ra,0x0
    800151ec:	f18080e7          	jalr	-232(ra) # 80015100 <_ZN6ThreadD1Ev>
    800151f0:	00048513          	mv	a0,s1
    800151f4:	00000097          	auipc	ra,0x0
    800151f8:	fb4080e7          	jalr	-76(ra) # 800151a8 <_ZdlPv>
    800151fc:	01813083          	ld	ra,24(sp)
    80015200:	01013403          	ld	s0,16(sp)
    80015204:	00813483          	ld	s1,8(sp)
    80015208:	02010113          	addi	sp,sp,32
    8001520c:	00008067          	ret

0000000080015210 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80015210:	fe010113          	addi	sp,sp,-32
    80015214:	00113c23          	sd	ra,24(sp)
    80015218:	00813823          	sd	s0,16(sp)
    8001521c:	00913423          	sd	s1,8(sp)
    80015220:	02010413          	addi	s0,sp,32
    80015224:	00050493          	mv	s1,a0
}
    80015228:	00000097          	auipc	ra,0x0
    8001522c:	f18080e7          	jalr	-232(ra) # 80015140 <_ZN9SemaphoreD1Ev>
    80015230:	00048513          	mv	a0,s1
    80015234:	00000097          	auipc	ra,0x0
    80015238:	f74080e7          	jalr	-140(ra) # 800151a8 <_ZdlPv>
    8001523c:	01813083          	ld	ra,24(sp)
    80015240:	01013403          	ld	s0,16(sp)
    80015244:	00813483          	ld	s1,8(sp)
    80015248:	02010113          	addi	sp,sp,32
    8001524c:	00008067          	ret

0000000080015250 <_ZN6Thread5startEv>:
    if(myHandle != nullptr)
    80015250:	00853503          	ld	a0,8(a0)
    80015254:	02050663          	beqz	a0,80015280 <_ZN6Thread5startEv+0x30>
{
    80015258:	ff010113          	addi	sp,sp,-16
    8001525c:	00113423          	sd	ra,8(sp)
    80015260:	00813023          	sd	s0,0(sp)
    80015264:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    80015268:	fffff097          	auipc	ra,0xfffff
    8001526c:	fc4080e7          	jalr	-60(ra) # 8001422c <_Z12thread_startPv>
}
    80015270:	00813083          	ld	ra,8(sp)
    80015274:	00013403          	ld	s0,0(sp)
    80015278:	01010113          	addi	sp,sp,16
    8001527c:	00008067          	ret
        return -1;
    80015280:	fff00513          	li	a0,-1
}
    80015284:	00008067          	ret

0000000080015288 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80015288:	ff010113          	addi	sp,sp,-16
    8001528c:	00113423          	sd	ra,8(sp)
    80015290:	00813023          	sd	s0,0(sp)
    80015294:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80015298:	fffff097          	auipc	ra,0xfffff
    8001529c:	e64080e7          	jalr	-412(ra) # 800140fc <_Z15thread_dispatchv>
}
    800152a0:	00813083          	ld	ra,8(sp)
    800152a4:	00013403          	ld	s0,0(sp)
    800152a8:	01010113          	addi	sp,sp,16
    800152ac:	00008067          	ret

00000000800152b0 <_ZN6Thread5sleepEm>:
{
    800152b0:	ff010113          	addi	sp,sp,-16
    800152b4:	00113423          	sd	ra,8(sp)
    800152b8:	00813023          	sd	s0,0(sp)
    800152bc:	01010413          	addi	s0,sp,16
    time_sleep(time);
    800152c0:	fffff097          	auipc	ra,0xfffff
    800152c4:	f40080e7          	jalr	-192(ra) # 80014200 <_Z10time_sleepm>
}
    800152c8:	00813083          	ld	ra,8(sp)
    800152cc:	00013403          	ld	s0,0(sp)
    800152d0:	01010113          	addi	sp,sp,16
    800152d4:	00008067          	ret

00000000800152d8 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    800152d8:	fe010113          	addi	sp,sp,-32
    800152dc:	00113c23          	sd	ra,24(sp)
    800152e0:	00813823          	sd	s0,16(sp)
    800152e4:	00913423          	sd	s1,8(sp)
    800152e8:	01213023          	sd	s2,0(sp)
    800152ec:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    800152f0:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    800152f4:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    800152f8:	0004b783          	ld	a5,0(s1)
    800152fc:	0187b783          	ld	a5,24(a5)
    80015300:	00048513          	mv	a0,s1
    80015304:	000780e7          	jalr	a5
        Thread::sleep(time);
    80015308:	00090513          	mv	a0,s2
    8001530c:	00000097          	auipc	ra,0x0
    80015310:	fa4080e7          	jalr	-92(ra) # 800152b0 <_ZN6Thread5sleepEm>
    while(true)
    80015314:	fe5ff06f          	j	800152f8 <_ZN14PeriodicThread6runnerEPv+0x20>

0000000080015318 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    80015318:	ff010113          	addi	sp,sp,-16
    8001531c:	00113423          	sd	ra,8(sp)
    80015320:	00813023          	sd	s0,0(sp)
    80015324:	01010413          	addi	s0,sp,16
    80015328:	00001797          	auipc	a5,0x1
    8001532c:	dc078793          	addi	a5,a5,-576 # 800160e8 <_ZTV6Thread+0x10>
    80015330:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80015334:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, body, args);
    80015338:	00850513          	addi	a0,a0,8
    8001533c:	fffff097          	auipc	ra,0xfffff
    80015340:	f1c080e7          	jalr	-228(ra) # 80014258 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    80015344:	00813083          	ld	ra,8(sp)
    80015348:	00013403          	ld	s0,0(sp)
    8001534c:	01010113          	addi	sp,sp,16
    80015350:	00008067          	ret

0000000080015354 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80015354:	ff010113          	addi	sp,sp,-16
    80015358:	00113423          	sd	ra,8(sp)
    8001535c:	00813023          	sd	s0,0(sp)
    80015360:	01010413          	addi	s0,sp,16
    80015364:	00001797          	auipc	a5,0x1
    80015368:	d8478793          	addi	a5,a5,-636 # 800160e8 <_ZTV6Thread+0x10>
    8001536c:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80015370:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    80015374:	00050613          	mv	a2,a0
    80015378:	00000597          	auipc	a1,0x0
    8001537c:	d5c58593          	addi	a1,a1,-676 # 800150d4 <_ZN6Thread6runnerEPv>
    80015380:	00850513          	addi	a0,a0,8
    80015384:	fffff097          	auipc	ra,0xfffff
    80015388:	ed4080e7          	jalr	-300(ra) # 80014258 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    8001538c:	00813083          	ld	ra,8(sp)
    80015390:	00013403          	ld	s0,0(sp)
    80015394:	01010113          	addi	sp,sp,16
    80015398:	00008067          	ret

000000008001539c <_ZN9Semaphore4waitEv>:
    if(myHandle == nullptr)
    8001539c:	00853503          	ld	a0,8(a0)
    800153a0:	02050663          	beqz	a0,800153cc <_ZN9Semaphore4waitEv+0x30>
{
    800153a4:	ff010113          	addi	sp,sp,-16
    800153a8:	00113423          	sd	ra,8(sp)
    800153ac:	00813023          	sd	s0,0(sp)
    800153b0:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800153b4:	fffff097          	auipc	ra,0xfffff
    800153b8:	df4080e7          	jalr	-524(ra) # 800141a8 <_Z8sem_waitP4_sem>
}
    800153bc:	00813083          	ld	ra,8(sp)
    800153c0:	00013403          	ld	s0,0(sp)
    800153c4:	01010113          	addi	sp,sp,16
    800153c8:	00008067          	ret
        return -1;
    800153cc:	fff00513          	li	a0,-1
}
    800153d0:	00008067          	ret

00000000800153d4 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    800153d4:	fe010113          	addi	sp,sp,-32
    800153d8:	00113c23          	sd	ra,24(sp)
    800153dc:	00813823          	sd	s0,16(sp)
    800153e0:	00913423          	sd	s1,8(sp)
    800153e4:	02010413          	addi	s0,sp,32
    800153e8:	00050493          	mv	s1,a0
    800153ec:	00001797          	auipc	a5,0x1
    800153f0:	d2478793          	addi	a5,a5,-732 # 80016110 <_ZTV9Semaphore+0x10>
    800153f4:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    800153f8:	00850513          	addi	a0,a0,8
    800153fc:	fffff097          	auipc	ra,0xfffff
    80015400:	d48080e7          	jalr	-696(ra) # 80014144 <_Z8sem_openPP4_semj>
    if(retval != 0)
    80015404:	00050463          	beqz	a0,8001540c <_ZN9SemaphoreC1Ej+0x38>
        myHandle = nullptr;
    80015408:	0004b423          	sd	zero,8(s1)
}
    8001540c:	01813083          	ld	ra,24(sp)
    80015410:	01013403          	ld	s0,16(sp)
    80015414:	00813483          	ld	s1,8(sp)
    80015418:	02010113          	addi	sp,sp,32
    8001541c:	00008067          	ret

0000000080015420 <_ZN9Semaphore6signalEv>:
    if(myHandle == nullptr)
    80015420:	00853503          	ld	a0,8(a0)
    80015424:	02050663          	beqz	a0,80015450 <_ZN9Semaphore6signalEv+0x30>
{
    80015428:	ff010113          	addi	sp,sp,-16
    8001542c:	00113423          	sd	ra,8(sp)
    80015430:	00813023          	sd	s0,0(sp)
    80015434:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80015438:	fffff097          	auipc	ra,0xfffff
    8001543c:	d9c080e7          	jalr	-612(ra) # 800141d4 <_Z10sem_signalP4_sem>
}
    80015440:	00813083          	ld	ra,8(sp)
    80015444:	00013403          	ld	s0,0(sp)
    80015448:	01010113          	addi	sp,sp,16
    8001544c:	00008067          	ret
        return -1;
    80015450:	fff00513          	li	a0,-1
}
    80015454:	00008067          	ret

0000000080015458 <_ZN7Console4getcEv>:
{
    80015458:	ff010113          	addi	sp,sp,-16
    8001545c:	00113423          	sd	ra,8(sp)
    80015460:	00813023          	sd	s0,0(sp)
    80015464:	01010413          	addi	s0,sp,16
    return ::getc();
    80015468:	fffff097          	auipc	ra,0xfffff
    8001546c:	e70080e7          	jalr	-400(ra) # 800142d8 <_Z4getcv>
}
    80015470:	00813083          	ld	ra,8(sp)
    80015474:	00013403          	ld	s0,0(sp)
    80015478:	01010113          	addi	sp,sp,16
    8001547c:	00008067          	ret

0000000080015480 <_ZN7Console4putcEc>:
{
    80015480:	ff010113          	addi	sp,sp,-16
    80015484:	00113423          	sd	ra,8(sp)
    80015488:	00813023          	sd	s0,0(sp)
    8001548c:	01010413          	addi	s0,sp,16
    return ::putc(c);
    80015490:	fffff097          	auipc	ra,0xfffff
    80015494:	e70080e7          	jalr	-400(ra) # 80014300 <_Z4putcc>
}
    80015498:	00813083          	ld	ra,8(sp)
    8001549c:	00013403          	ld	s0,0(sp)
    800154a0:	01010113          	addi	sp,sp,16
    800154a4:	00008067          	ret

00000000800154a8 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    800154a8:	fe010113          	addi	sp,sp,-32
    800154ac:	00113c23          	sd	ra,24(sp)
    800154b0:	00813823          	sd	s0,16(sp)
    800154b4:	00913423          	sd	s1,8(sp)
    800154b8:	01213023          	sd	s2,0(sp)
    800154bc:	02010413          	addi	s0,sp,32
    800154c0:	00050493          	mv	s1,a0
    800154c4:	00058913          	mv	s2,a1
    800154c8:	01000513          	li	a0,16
    800154cc:	00000097          	auipc	ra,0x0
    800154d0:	cb4080e7          	jalr	-844(ra) # 80015180 <_Znwm>
    800154d4:	00050613          	mv	a2,a0
    800154d8:	00050663          	beqz	a0,800154e4 <_ZN14PeriodicThreadC1Em+0x3c>
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    800154dc:	00953023          	sd	s1,0(a0)
    800154e0:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    800154e4:	00000597          	auipc	a1,0x0
    800154e8:	df458593          	addi	a1,a1,-524 # 800152d8 <_ZN14PeriodicThread6runnerEPv>
    800154ec:	00048513          	mv	a0,s1
    800154f0:	00000097          	auipc	ra,0x0
    800154f4:	e28080e7          	jalr	-472(ra) # 80015318 <_ZN6ThreadC1EPFvPvES0_>
    800154f8:	00001797          	auipc	a5,0x1
    800154fc:	bc078793          	addi	a5,a5,-1088 # 800160b8 <_ZTV14PeriodicThread+0x10>
    80015500:	00f4b023          	sd	a5,0(s1)
}
    80015504:	01813083          	ld	ra,24(sp)
    80015508:	01013403          	ld	s0,16(sp)
    8001550c:	00813483          	ld	s1,8(sp)
    80015510:	00013903          	ld	s2,0(sp)
    80015514:	02010113          	addi	sp,sp,32
    80015518:	00008067          	ret

000000008001551c <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    8001551c:	ff010113          	addi	sp,sp,-16
    80015520:	00813423          	sd	s0,8(sp)
    80015524:	01010413          	addi	s0,sp,16
    80015528:	00813403          	ld	s0,8(sp)
    8001552c:	01010113          	addi	sp,sp,16
    80015530:	00008067          	ret

0000000080015534 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    80015534:	ff010113          	addi	sp,sp,-16
    80015538:	00813423          	sd	s0,8(sp)
    8001553c:	01010413          	addi	s0,sp,16
    80015540:	00813403          	ld	s0,8(sp)
    80015544:	01010113          	addi	sp,sp,16
    80015548:	00008067          	ret

000000008001554c <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    8001554c:	ff010113          	addi	sp,sp,-16
    80015550:	00113423          	sd	ra,8(sp)
    80015554:	00813023          	sd	s0,0(sp)
    80015558:	01010413          	addi	s0,sp,16
    8001555c:	00001797          	auipc	a5,0x1
    80015560:	b5c78793          	addi	a5,a5,-1188 # 800160b8 <_ZTV14PeriodicThread+0x10>
    80015564:	00f53023          	sd	a5,0(a0)
    80015568:	00000097          	auipc	ra,0x0
    8001556c:	b98080e7          	jalr	-1128(ra) # 80015100 <_ZN6ThreadD1Ev>
    80015570:	00813083          	ld	ra,8(sp)
    80015574:	00013403          	ld	s0,0(sp)
    80015578:	01010113          	addi	sp,sp,16
    8001557c:	00008067          	ret

0000000080015580 <_ZN14PeriodicThreadD0Ev>:
    80015580:	fe010113          	addi	sp,sp,-32
    80015584:	00113c23          	sd	ra,24(sp)
    80015588:	00813823          	sd	s0,16(sp)
    8001558c:	00913423          	sd	s1,8(sp)
    80015590:	02010413          	addi	s0,sp,32
    80015594:	00050493          	mv	s1,a0
    80015598:	00001797          	auipc	a5,0x1
    8001559c:	b2078793          	addi	a5,a5,-1248 # 800160b8 <_ZTV14PeriodicThread+0x10>
    800155a0:	00f53023          	sd	a5,0(a0)
    800155a4:	00000097          	auipc	ra,0x0
    800155a8:	b5c080e7          	jalr	-1188(ra) # 80015100 <_ZN6ThreadD1Ev>
    800155ac:	00048513          	mv	a0,s1
    800155b0:	00000097          	auipc	ra,0x0
    800155b4:	bf8080e7          	jalr	-1032(ra) # 800151a8 <_ZdlPv>
    800155b8:	01813083          	ld	ra,24(sp)
    800155bc:	01013403          	ld	s0,16(sp)
    800155c0:	00813483          	ld	s1,8(sp)
    800155c4:	02010113          	addi	sp,sp,32
    800155c8:	00008067          	ret

00000000800155cc <_ZN14PCBWrapperUser15userMainWrapperEPv>:
#include "../../h/PCBWrapperUser.hpp"
#include "../../h/syscall_c.hpp"
#include "test/userMain.hpp"

void PCBWrapperUser::userMainWrapper(void* a)
{
    800155cc:	ff010113          	addi	sp,sp,-16
    800155d0:	00113423          	sd	ra,8(sp)
    800155d4:	00813023          	sd	s0,0(sp)
    800155d8:	01010413          	addi	s0,sp,16
    userMain();
    800155dc:	fffff097          	auipc	ra,0xfffff
    800155e0:	510080e7          	jalr	1296(ra) # 80014aec <_Z8userMainv>
}
    800155e4:	00813083          	ld	ra,8(sp)
    800155e8:	00013403          	ld	s0,0(sp)
    800155ec:	01010113          	addi	sp,sp,16
    800155f0:	00008067          	ret

00000000800155f4 <_ZN14PCBWrapperUser11wrapperUserEPFvPvES0_>:

void PCBWrapperUser::wrapperUser(Body body, void* args)
{
    800155f4:	ff010113          	addi	sp,sp,-16
    800155f8:	00113423          	sd	ra,8(sp)
    800155fc:	00813023          	sd	s0,0(sp)
    80015600:	01010413          	addi	s0,sp,16
    80015604:	00050793          	mv	a5,a0
    body(args);
    80015608:	00058513          	mv	a0,a1
    8001560c:	000780e7          	jalr	a5
    thread_exit();
    80015610:	fffff097          	auipc	ra,0xfffff
    80015614:	b0c080e7          	jalr	-1268(ra) # 8001411c <_Z11thread_exitv>
    80015618:	00813083          	ld	ra,8(sp)
    8001561c:	00013403          	ld	s0,0(sp)
    80015620:	01010113          	addi	sp,sp,16
    80015624:	00008067          	ret

0000000080015628 <_ZN4_semdlEPv>:
//

#include "../../h/_sem.hpp"
#include "../../h/syscall_c.hpp"

void _sem::operator delete(void *p) {
    80015628:	ff010113          	addi	sp,sp,-16
    8001562c:	00113423          	sd	ra,8(sp)
    80015630:	00813023          	sd	s0,0(sp)
    80015634:	01010413          	addi	s0,sp,16
    sem_close((sem_t)p);
    80015638:	fffff097          	auipc	ra,0xfffff
    8001563c:	b44080e7          	jalr	-1212(ra) # 8001417c <_Z9sem_closeP4_sem>
}
    80015640:	00813083          	ld	ra,8(sp)
    80015644:	00013403          	ld	s0,0(sp)
    80015648:	01010113          	addi	sp,sp,16
    8001564c:	00008067          	ret
	...

0000000080016000 <userDataStart>:
    80016000:	7542                	ld	a0,48(sp)
    80016002:	6666                	ld	a2,88(sp)
    80016004:	7265                	lui	tp,0xffff9
    80016006:	6420                	ld	s0,72(s0)
    80016008:	6c65                	lui	s8,0x19
    8001600a:	7465                	lui	s0,0xffff9
    8001600c:	6465                	lui	s0,0x19
    8001600e:	0a21                	addi	s4,s4,8
	...
    80016018:	72617453          	0x72617453
    8001601c:	6574                	ld	a3,200(a0)
    8001601e:	2064                	fld	fs1,192(s0)
    80016020:	6874                	ld	a3,208(s0)
    80016022:	6572                	ld	a0,280(sp)
    80016024:	6461                	lui	s0,0x18
    80016026:	6920                	ld	s0,80(a0)
    80016028:	3a64                	fld	fs1,240(a2)
    8001602a:	0000                	unimp
    8001602c:	0000                	unimp
    8001602e:	0000                	unimp
    80016030:	000a                	c.slli	zero,0x2
    80016032:	0000                	unimp
    80016034:	0000                	unimp
    80016036:	0000                	unimp
    80016038:	6946                	ld	s2,80(sp)
    8001603a:	696e                	ld	s2,216(sp)
    8001603c:	64656873          	csrrsi	a6,0x646,10
    80016040:	7420                	ld	s0,104(s0)
    80016042:	7268                	ld	a0,224(a2)
    80016044:	6165                	addi	sp,sp,112
    80016046:	2064                	fld	fs1,192(s0)
    80016048:	6469                	lui	s0,0x1a
    8001604a:	003a                	c.slli	zero,0xe
    8001604c:	0000                	unimp
    8001604e:	0000                	unimp
    80016050:	7355                	lui	t1,0xffff5
    80016052:	7265                	lui	tp,0xffff9
    80016054:	6d20                	ld	s0,88(a0)
    80016056:	6961                	lui	s2,0x18
    80016058:	206e                	fld	ft0,216(sp)
    8001605a:	6966                	ld	s2,88(sp)
    8001605c:	696e                	ld	s2,216(sp)
    8001605e:	64656873          	csrrsi	a6,0x646,10
    80016062:	000a                	c.slli	zero,0x2
    80016064:	0000                	unimp
	...

0000000080016068 <digits>:
    80016068:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF
	...

0000000080016080 <_ZTV10ForkThread>:
	...
    80016090:	4d34 8001 0000 0000 4d68 8001 0000 0000     4M......hM......
    800160a0:	4b14 8001 0000 0000                         .K......

00000000800160a8 <_ZTV14PeriodicThread>:
	...
    800160b8:	554c 8001 0000 0000 5580 8001 0000 0000     LU.......U......
    800160c8:	551c 8001 0000 0000 5534 8001 0000 0000     .U......4U......

00000000800160d8 <_ZTV6Thread>:
	...
    800160e8:	5100 8001 0000 0000 51d0 8001 0000 0000     .Q.......Q......
    800160f8:	551c 8001 0000 0000                         .U......

0000000080016100 <_ZTV9Semaphore>:
	...
    80016110:	5140 8001 0000 0000 5210 8001 0000 0000     @Q.......R......

0000000080016120 <lockPrint>:
	...
    80016128:	0010 0000 0000 0000 7a03 0052 7c01 0101     .........zR..|..
    80016138:	0d1b 0002 0020 0000 0018 0000 dedc ffff     .... ...........
    80016148:	0030 0000 4400 100e 8844 4402 000c 0000     0....D..D..D....
    80016158:	0c00 1002 0e44 0000 0020 0000 003c 0000     ....D... ...<...
    80016168:	dee8 ffff 002c 0000 4400 100e 8844 4402     ....,....D..D..D
    80016178:	000c 0000 0c00 1002 0e44 0000 0034 0000     ........D...4...
    80016188:	0060 0000 def0 ffff 0080 0000 4400 000e     `............D..
	...
    800161a0:	9300 440a 080c 0000 0000 0000 0c00 3002     ...D...........0
    800161b0:	c944 d244 d344 0e44 4400 000b 0020 0000     D.D.D.D..D.. ...
    800161c0:	0098 0000 df38 ffff 0020 0000 4400 100e     ....8... ....D..
    800161d0:	8844 4402 000c 0000 0c00 1002 0e44 0000     D..D........D...
    800161e0:	0020 0000 00bc 0000 df34 ffff 0028 0000      .......4...(...
    800161f0:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    80016200:	0e44 0000 0020 0000 00e0 0000 df38 ffff     D... .......8...
    80016210:	0038 0000 4400 100e 8844 4402 000c 0000     8....D..D..D....
    80016220:	0c00 1002 0e44 0000 0020 0000 0104 0000     ....D... .......
    80016230:	df4c ffff 002c 0000 4400 100e 8844 4402     L...,....D..D..D
    80016240:	000c 0000 0c00 1002 0e44 0000 0020 0000     ........D... ...
    80016250:	0128 0000 df54 ffff 002c 0000 4400 100e     (...T...,....D..
    80016260:	8844 4402 000c 0000 0c00 1002 0e44 0000     D..D........D...
    80016270:	0020 0000 014c 0000 df5c ffff 002c 0000      ...L...\...,...
    80016280:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    80016290:	0e44 0000 0020 0000 0170 0000 df64 ffff     D... ...p...d...
    800162a0:	002c 0000 4400 100e 8844 4402 000c 0000     ,....D..D..D....
    800162b0:	0c00 1002 0e44 0000 0020 0000 0194 0000     ....D... .......
    800162c0:	df6c ffff 002c 0000 4400 100e 8844 4402     l...,....D..D..D
    800162d0:	000c 0000 0c00 1002 0e44 0000 0034 0000     ........D...4...
    800162e0:	01b8 0000 df74 ffff 0080 0000 4400 000e     ....t........D..
	...
    800162f8:	9300 440a 080c 0000 0000 0000 0c00 3002     ...D...........0
    80016308:	c944 d244 d344 0e44 4400 000b 0020 0000     D.D.D.D..D.. ...
    80016318:	01f0 0000 dfbc ffff 0028 0000 4400 100e     ........(....D..
    80016328:	8844 4402 000c 0000 0c00 1002 0e44 0000     D..D........D...
    80016338:	0020 0000 0214 0000 dfc0 ffff 0024 0000      ...........$...
    80016348:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    80016358:	0e44 0000 0020 0000 0238 0000 dfc0 ffff     D... ...8.......
    80016368:	002c 0000 4400 100e 8844 4402 000c 0000     ,....D..D..D....
    80016378:	0c00 1002 0e44 0000 0010 0000 0000 0000     ....D...........
    80016388:	7a03 0052 7c01 0101 0d1b 0002 0028 0000     .zR..|......(...
    80016398:	0018 0000 dfb4 ffff 0028 0000 4400 000e     ........(....D..
    800163a8:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    800163b8:	0e44 0000 0000 0000 0010 0000 0000 0000     D...............
    800163c8:	7a03 0052 7c01 0101 0d1b 0002 0028 0000     .zR..|......(...
    800163d8:	0018 0000 df9c ffff 007c 0000 4400 000e     ........|....D..
    800163e8:	0000 0000 8900 4406 080c 0200 0000 0000     .......D........
    800163f8:	020c 4420 44c9 000e 0034 0000 0044 0000     .. D.D..4...D...
    80016408:	dfec ffff 00cc 0000 4400 000e 0000 0000     .........D......
    80016418:	0000 0000 0000 9400 440c 080c 0200 0000     .........D......
    80016428:	0000 020c 4430 44c9 44d2 44d3 44d4 000e     ....0D.D.D.D.D..
    80016438:	0020 0000 007c 0000 e080 ffff 0050 0000      ...|.......P...
    80016448:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    80016458:	0e44 0000 0030 0000 00a0 0000 e0ac ffff     D...0...........
    80016468:	0114 0000 4400 000e 0000 0000 0000 0000     .....D..........
    80016478:	9300 440a 080c 0200 0000 0000 020c 4440     ...D..........@D
    80016488:	44c9 44d2 44d3 000e 0018 0000 0000 0000     .D.D.D..........
    80016498:	7a03 4c50 0052 7c01 0701 2d9b ff24 1bff     .zPLR..|...-$...
    800164a8:	0d1b 0002 0038 0000 0020 0000 e170 ffff     ....8... ...p...
    800164b8:	0164 0000 0404 ff23 44ff 000e 0000 0000     d.....#..D......
    800164c8:	0000 0000 9300 440a 080c 0000 0000 0000     .......D........
    800164d8:	0c00 3002 c944 d244 d344 0e44 4400 000b     ...0D.D.D.D..D..
    800164e8:	0010 0000 0000 0000 7a03 0052 7c01 0101     .........zR..|..
    800164f8:	0d1b 0002 002c 0000 0018 0000 e284 ffff     ....,...........
    80016508:	0090 0000 4400 000e 0000 0000 0000 9200     .....D..........
    80016518:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    80016528:	44d2 000e 002c 0000 0048 0000 e2e4 ffff     .D..,...H.......
    80016538:	008c 0000 4400 000e 0000 0000 0000 9200     .....D..........
    80016548:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    80016558:	44d2 000e 0030 0000 0078 0000 e340 ffff     .D..0...x...@...
    80016568:	0088 0000 4400 000e 0000 0000 0000 9200     .....D..........
    80016578:	4408 080c 0000 0000 0000 0c00 2002 c944     .D........... D.
    80016588:	d244 0e44 4400 000b 002c 0000 0104 0000     D.D..D..,.......
    80016598:	e394 ffff 0100 0000 c104 ff22 44ff 000e     .........."..D..
    800165a8:	0000 0000 8900 4406 080c 0200 0000 0000     .......D........
    800165b8:	020c 4420 44c9 000e 0018 0000 0000 0000     .. D.D..........
    800165c8:	7a03 4c50 0052 7c01 0701 fd9b ff22 1bff     .zPLR..|...."...
    800165d8:	0d1b 0002 0044 0000 0020 0000 e530 ffff     ....D... ...0...
    800165e8:	0220 0000 a304 ff22 44ff 000e 0000 0000      ....."..D......
	...
    80016600:	0000 9600 4410 080c 0300 00d4 0000 0c00     .....D..........
    80016610:	4002 c944 d244 d344 d444 d544 d644 0e44     .@D.D.D.D.D.D.D.
    80016620:	0000 0000 0010 0000 0000 0000 7a03 0052     .............zR.
    80016630:	7c01 0101 0d1b 0002 0024 0000 0018 0000     .|......$.......
    80016640:	e6f4 ffff 0034 0000 4400 000e 0000 8800     ....4....D......
    80016650:	4404 080c 0000 0000 0c00 1002 0e44 0000     .D..........D...
    80016660:	0028 0000 0040 0000 e700 ffff 004c 0000     (...@.......L...
    80016670:	4400 000e 0000 0000 8900 4406 080c 0000     .D.........D....
    80016680:	0000 0c00 2002 c944 0e44 0000 0030 0000     ..... D.D...0...
    80016690:	00d0 0000 e398 ffff 00c0 0000 c904 ff21     ..............!.
    800166a0:	44ff 000e 0000 0000 8900 4406 080c 0000     .D.........D....
    800166b0:	0000 0000 0c00 4002 c944 0e44 4400 000b     .......@D.D..D..
    800166c0:	0024 0000 00a0 0000 e424 ffff 0028 0000     $.......$...(...
    800166d0:	4400 000e 0000 8800 4404 080c 0000 0000     .D.......D......
    800166e0:	0c00 1002 0e44 0000 0010 0000 0000 0000     ....D...........
    800166f0:	7a03 0052 7c01 0101 0d1b 0002 002c 0000     .zR..|......,...
    80016700:	0018 0000 e6b0 ffff 009c 0000 4400 000e     .............D..
    80016710:	0000 0000 0000 9200 4408 080c 0200 0000     .........D......
    80016720:	0000 020c 4420 44c9 44d2 000e 002c 0000     .... D.D.D..,...
    80016730:	0048 0000 e71c ffff 0090 0000 4400 000e     H............D..
    80016740:	0000 0000 0000 9200 4408 080c 0200 0000     .........D......
    80016750:	0000 020c 4420 44c9 44d2 000e 002c 0000     .... D.D.D..,...
    80016760:	0078 0000 e77c ffff 008c 0000 4400 000e     x...|........D..
    80016770:	0000 0000 0000 9200 4408 080c 0200 0000     .........D......
    80016780:	0000 020c 4420 44c9 44d2 000e 0030 0000     .... D.D.D..0...
    80016790:	00a8 0000 e7d8 ffff 0088 0000 4400 000e     .............D..
    800167a0:	0000 0000 0000 9200 4408 080c 0000 0000     .........D......
    800167b0:	0000 0c00 2002 c944 d244 0e44 4400 000b     ..... D.D.D..D..
    800167c0:	0018 0000 0000 0000 7a03 4c50 0052 7c01     .........zPLR..|
    800167d0:	0701 fd9b ff20 1bff 0d1b 0002 0030 0000     .... .......0...
    800167e0:	0020 0000 e810 ffff 00e0 0000 9704 ff20      ............. .
    800167f0:	44ff 000e 0000 0000 8900 4406 080c 0200     .D.........D....
    80016800:	0000 0000 020c 4420 44c9 000e 0000 0000     ...... D.D......
    80016810:	0010 0000 0000 0000 7a03 0052 7c01 0101     .........zR..|..
    80016820:	0d1b 0002 0020 0000 0018 0000 ecf0 ffff     .... ...........
    80016830:	0018 0000 4400 100e 8844 4402 000c 0000     .....D..D..D....
    80016840:	0c00 1002 0e44 0000 0020 0000 003c 0000     ....D... ...<...
    80016850:	ece4 ffff 0018 0000 4400 100e 8844 4402     .........D..D..D
    80016860:	000c 0000 0c00 1002 0e44 0000 0024 0000     ........D...$...
    80016870:	0060 0000 e860 ffff 002c 0000 4400 000e     `...`...,....D..
    80016880:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    80016890:	0e44 0000 0018 0000 0000 0000 7a03 4c50     D............zPL
    800168a0:	0052 7c01 0701 299b ff20 1bff 0d1b 0002     R..|...) .......
    800168b0:	0028 0000 0020 0000 e848 ffff 0040 0000     (... ...H...@...
    800168c0:	c704 ff1f 58ff 000e 0000 8800 4404 080c     .....X.......D..
    800168d0:	0000 0000 0c00 1002 0e44 0000 0024 0000     ........D...$...
    800168e0:	00d0 0000 ec68 ffff 0034 0000 4400 000e     ....h...4....D..
    800168f0:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    80016900:	0e44 0000 0028 0000 0074 0000 e834 ffff     D...(...t...4...
    80016910:	0040 0000 7704 ff1f 58ff 000e 0000 8800     @....w...X......
    80016920:	4404 080c 0000 0000 0c00 1002 0e44 0000     .D..........D...
    80016930:	0024 0000 0124 0000 e848 ffff 0028 0000     $...$...H...(...
    80016940:	4400 000e 0000 8800 4404 080c 0000 0000     .D.......D......
    80016950:	0c00 1002 0e44 0000 0024 0000 014c 0000     ....D...$...L...
    80016960:	e848 ffff 0028 0000 4400 000e 0000 8800     H...(....D......
    80016970:	4404 080c 0000 0000 0c00 1002 0e44 0000     .D..........D...
    80016980:	0028 0000 0174 0000 e848 ffff 0040 0000     (...t...H...@...
    80016990:	4400 000e 0000 0000 8900 4406 080c 0000     .D.........D....
    800169a0:	0000 0c00 2002 c944 0e44 0000 0028 0000     ..... D.D...(...
    800169b0:	01a0 0000 e85c ffff 0040 0000 4400 000e     ....\...@....D..
    800169c0:	0000 0000 8900 4406 080c 0000 0000 0c00     .......D........
    800169d0:	2002 c944 0e44 0000 0028 0000 01cc 0000     . D.D...(.......
    800169e0:	eba0 ffff 004c 0000 4400 000e 0000 0000     ....L....D......
    800169f0:	8900 4406 080c 0000 0000 0c00 2002 c944     ...D......... D.
    80016a00:	0e44 0000 0024 0000 01f8 0000 e844 ffff     D...$.......D...
    80016a10:	0038 0000 4c00 000e 0000 8800 4404 080c     8....L.......D..
    80016a20:	0000 0000 0c00 1002 0e44 0000 0024 0000     ........D...$...
    80016a30:	0220 0000 e854 ffff 0028 0000 4400 000e      ...T...(....D..
    80016a40:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    80016a50:	0e44 0000 0024 0000 0248 0000 e854 ffff     D...$...H...T...
    80016a60:	0028 0000 4400 000e 0000 8800 4404 080c     (....D.......D..
    80016a70:	0000 0000 0c00 1002 0e44 0000 0020 0000     ........D... ...
    80016a80:	0270 0000 e854 ffff 0040 0000 4400 000e     p...T...@....D..
    80016a90:	0000 0000 0000 9200 4408 080c 0000 0000     .........D......
    80016aa0:	0024 0000 0294 0000 e870 ffff 003c 0000     $.......p...<...
    80016ab0:	4400 000e 0000 8800 4404 080c 0000 0000     .D.......D......
    80016ac0:	0c00 1002 0e44 0000 0024 0000 02bc 0000     ....D...$.......
    80016ad0:	e884 ffff 0048 0000 4400 000e 0000 8800     ....H....D......
    80016ae0:	4404 080c 0000 0000 0c00 1002 0e44 0000     .D..........D...
    80016af0:	0024 0000 02e4 0000 e8a4 ffff 0038 0000     $...........8...
    80016b00:	4c00 000e 0000 8800 4404 080c 0000 0000     .L.......D......
    80016b10:	0c00 1002 0e44 0000 0028 0000 030c 0000     ....D...(.......
    80016b20:	e8b4 ffff 004c 0000 4400 000e 0000 0000     ....L....D......
    80016b30:	8900 4406 080c 0000 0000 0c00 2002 c944     ...D......... D.
    80016b40:	0e44 0000 0024 0000 0338 0000 e8d4 ffff     D...$...8.......
    80016b50:	0038 0000 4c00 000e 0000 8800 4404 080c     8....L.......D..
    80016b60:	0000 0000 0c00 1002 0e44 0000 0024 0000     ........D...$...
    80016b70:	0360 0000 e8e4 ffff 0028 0000 4400 000e     `.......(....D..
    80016b80:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    80016b90:	0e44 0000 0024 0000 0388 0000 e8e4 ffff     D...$...........
    80016ba0:	0028 0000 4400 000e 0000 8800 4404 080c     (....D.......D..
    80016bb0:	0000 0000 0c00 1002 0e44 0000 0030 0000     ........D...0...
    80016bc0:	03b0 0000 e8e4 ffff 0074 0000 4400 000e     ........t....D..
    80016bd0:	0000 0000 0000 9200 4408 080c 0200 0000     .........D......
    80016be0:	0000 020c 4420 44c9 44d2 000e 0000 0000     .... D.D.D......
    80016bf0:	0010 0000 0000 0000 7a03 0052 7c01 0101     .........zR..|..
    80016c00:	0d1b 0002 0024 0000 0018 0000 e9c0 ffff     ....$...........
    80016c10:	0028 0000 4400 000e 0000 8800 4404 080c     (....D.......D..
    80016c20:	0000 0000 0c00 1002 0e44 0000 0028 0000     ........D...(...
    80016c30:	0040 0000 e9c0 ffff 0034 0000 4400 000e     @.......4....D..
    80016c40:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    80016c50:	0e44 0000 0000 0000 0010 0000 0000 0000     D...............
    80016c60:	7a03 0052 7c01 0101 0d1b 0002 0028 0000     .zR..|......(...
    80016c70:	0018 0000 e9b4 ffff 0028 0000 4400 000e     ........(....D..
    80016c80:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    80016c90:	0e44 0000 0000 0000                         D.......
