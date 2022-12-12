
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00009117          	auipc	sp,0x9
    80000004:	ec813103          	ld	sp,-312(sp) # 80008ec8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	3a9040ef          	jal	ra,80004bc4 <start>

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
    80001088:	775010ef          	jal	ra,80002ffc <_ZN5Riscv20handleSupervisorTrapEv>

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

0000000080001218 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001218:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    8000121c:	00b29a63          	bne	t0,a1,80001230 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001220:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001224:	fe029ae3          	bnez	t0,80001218 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001228:	00000513          	li	a0,0
    jr ra                  # Return.
    8000122c:	00008067          	ret

0000000080001230 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001230:	00100513          	li	a0,1
    80001234:	00008067          	ret

0000000080001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    #a0 - &old->Context
    #a1 - &running->Context
    sd sp, 0 * 8(a0)
    80001238:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 1 * 8(a0)
    8000123c:	00153423          	sd	ra,8(a0)

    ld sp, 0 * 8(a1)
    80001240:	0005b103          	ld	sp,0(a1)
    ld ra, 1 * 8(a1)
    80001244:	0085b083          	ld	ra,8(a1)

    ret
    80001248:	00008067          	ret

000000008000124c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>:

.global _ZN3PCB20contextSwitchExitingEPNS_7ContextE
.type _ZN3PCB20contextSwitchExitingEPNS_7ContextE, @function
_ZN3PCB20contextSwitchExitingEPNS_7ContextE:
    #a0 - &running->Context
    ld sp, 0 * 8(a0)
    8000124c:	00053103          	ld	sp,0(a0)
    ld ra, 1 * 8(a0)
    80001250:	00853083          	ld	ra,8(a0)

    80001254:	00008067          	ret

0000000080001258 <_Z9mem_allocm>:
//

#include "../h/syscall_c.hpp"

void* mem_alloc(size_t size)
{
    80001258:	ff010113          	addi	sp,sp,-16
    8000125c:	00813423          	sd	s0,8(sp)
    80001260:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001264:	03f50513          	addi	a0,a0,63
    80001268:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    8000126c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 1");
    80001270:	00100513          	li	a0,1

    __asm__ volatile("ecall"); // system call
    80001274:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    80001278:	00050513          	mv	a0,a0

    return (void*)allocatedAddr;
}
    8000127c:	00813403          	ld	s0,8(sp)
    80001280:	01010113          	addi	sp,sp,16
    80001284:	00008067          	ret

0000000080001288 <_Z8mem_freePv>:

int mem_free(void* p)
{
    80001288:	ff010113          	addi	sp,sp,-16
    8000128c:	00813423          	sd	s0,8(sp)
    80001290:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    80001294:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 2");
    80001298:	00200513          	li	a0,2

    __asm__ volatile("ecall"); // system call
    8000129c:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800012a0:	00050513          	mv	a0,a0

    return result;
}
    800012a4:	0005051b          	sext.w	a0,a0
    800012a8:	00813403          	ld	s0,8(sp)
    800012ac:	01010113          	addi	sp,sp,16
    800012b0:	00008067          	ret

00000000800012b4 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    800012b4:	fd010113          	addi	sp,sp,-48
    800012b8:	02113423          	sd	ra,40(sp)
    800012bc:	02813023          	sd	s0,32(sp)
    800012c0:	00913c23          	sd	s1,24(sp)
    800012c4:	01213823          	sd	s2,16(sp)
    800012c8:	01313423          	sd	s3,8(sp)
    800012cc:	03010413          	addi	s0,sp,48
    800012d0:	00050493          	mv	s1,a0
    800012d4:	00058913          	mv	s2,a1
    800012d8:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)args;
    uint64 opLocal = 0x11;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800012dc:	00001537          	lui	a0,0x1
    800012e0:	00000097          	auipc	ra,0x0
    800012e4:	f78080e7          	jalr	-136(ra) # 80001258 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    //todo
    //handle this error
    if(stack_space == 0)
    800012e8:	04050263          	beqz	a0,8000132c <_Z13thread_createPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    800012ec:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    800012f0:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    800012f4:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    800012f8:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800012fc:	01100793          	li	a5,17
    80001300:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    80001304:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001308:	00050513          	mv	a0,a0

    return result;
    8000130c:	0005051b          	sext.w	a0,a0
}
    80001310:	02813083          	ld	ra,40(sp)
    80001314:	02013403          	ld	s0,32(sp)
    80001318:	01813483          	ld	s1,24(sp)
    8000131c:	01013903          	ld	s2,16(sp)
    80001320:	00813983          	ld	s3,8(sp)
    80001324:	03010113          	addi	sp,sp,48
    80001328:	00008067          	ret
        return -1;
    8000132c:	fff00513          	li	a0,-1
    80001330:	fe1ff06f          	j	80001310 <_Z13thread_createPP7_threadPFvPvES2_+0x5c>

0000000080001334 <_Z15thread_dispatchv>:

void thread_dispatch()
{
    80001334:	ff010113          	addi	sp,sp,-16
    80001338:	00813423          	sd	s0,8(sp)
    8000133c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001340:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80001344:	00000073          	ecall
}
    80001348:	00813403          	ld	s0,8(sp)
    8000134c:	01010113          	addi	sp,sp,16
    80001350:	00008067          	ret

0000000080001354 <_Z11thread_exitv>:

int thread_exit()
{
    80001354:	ff010113          	addi	sp,sp,-16
    80001358:	00813423          	sd	s0,8(sp)
    8000135c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    80001360:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    80001364:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001368:	00050513          	mv	a0,a0
    return result;
}
    8000136c:	0005051b          	sext.w	a0,a0
    80001370:	00813403          	ld	s0,8(sp)
    80001374:	01010113          	addi	sp,sp,16
    80001378:	00008067          	ret

000000008000137c <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned int x)
{
    8000137c:	ff010113          	addi	sp,sp,-16
    80001380:	00813423          	sd	s0,8(sp)
    80001384:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)x));
    80001388:	02059593          	slli	a1,a1,0x20
    8000138c:	0205d593          	srli	a1,a1,0x20
    80001390:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80001394:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    80001398:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    8000139c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800013a0:	00050513          	mv	a0,a0
    return result;
}
    800013a4:	0005051b          	sext.w	a0,a0
    800013a8:	00813403          	ld	s0,8(sp)
    800013ac:	01010113          	addi	sp,sp,16
    800013b0:	00008067          	ret

00000000800013b4 <_Z9sem_closeP4_sem>:


int sem_close(sem_t handle)
{
    800013b4:	ff010113          	addi	sp,sp,-16
    800013b8:	00813423          	sd	s0,8(sp)
    800013bc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    800013c0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    800013c4:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    800013c8:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800013cc:	00050513          	mv	a0,a0
    return result;
}
    800013d0:	0005051b          	sext.w	a0,a0
    800013d4:	00813403          	ld	s0,8(sp)
    800013d8:	01010113          	addi	sp,sp,16
    800013dc:	00008067          	ret

00000000800013e0 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id)
{
    800013e0:	ff010113          	addi	sp,sp,-16
    800013e4:	00813423          	sd	s0,8(sp)
    800013e8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    800013ec:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    800013f0:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    800013f4:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800013f8:	00050513          	mv	a0,a0
    return result;
}
    800013fc:	0005051b          	sext.w	a0,a0
    80001400:	00813403          	ld	s0,8(sp)
    80001404:	01010113          	addi	sp,sp,16
    80001408:	00008067          	ret

000000008000140c <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id)
{
    8000140c:	ff010113          	addi	sp,sp,-16
    80001410:	00813423          	sd	s0,8(sp)
    80001414:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    80001418:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    8000141c:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    80001420:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001424:	00050513          	mv	a0,a0
    return result;
}
    80001428:	0005051b          	sext.w	a0,a0
    8000142c:	00813403          	ld	s0,8(sp)
    80001430:	01010113          	addi	sp,sp,16
    80001434:	00008067          	ret

0000000080001438 <_Z10time_sleepm>:

int time_sleep(uint64 time)
{
    80001438:	ff010113          	addi	sp,sp,-16
    8000143c:	00813423          	sd	s0,8(sp)
    80001440:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)time));
    80001444:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    80001448:	03100513          	li	a0,49

    __asm__ volatile("ecall");
    8000144c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001450:	00050513          	mv	a0,a0
    return result;
}
    80001454:	0005051b          	sext.w	a0,a0
    80001458:	00813403          	ld	s0,8(sp)
    8000145c:	01010113          	addi	sp,sp,16
    80001460:	00008067          	ret

0000000080001464 <_Z12thread_startPv>:

int thread_start(void* p)
{
    80001464:	ff010113          	addi	sp,sp,-16
    80001468:	00813423          	sd	s0,8(sp)
    8000146c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)p));
    80001470:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x15");
    80001474:	01500513          	li	a0,21

    __asm__ volatile("ecall");
    80001478:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000147c:	00050513          	mv	a0,a0
    return result;
}
    80001480:	0005051b          	sext.w	a0,a0
    80001484:	00813403          	ld	s0,8(sp)
    80001488:	01010113          	addi	sp,sp,16
    8000148c:	00008067          	ret

0000000080001490 <_Z15thread_make_pcbPP7_threadPFvPvES2_>:

int thread_make_pcb(thread_t* handle, void(*start_routine)(void*), void *arg)
{
    80001490:	fd010113          	addi	sp,sp,-48
    80001494:	02113423          	sd	ra,40(sp)
    80001498:	02813023          	sd	s0,32(sp)
    8000149c:	00913c23          	sd	s1,24(sp)
    800014a0:	01213823          	sd	s2,16(sp)
    800014a4:	01313423          	sd	s3,8(sp)
    800014a8:	03010413          	addi	s0,sp,48
    800014ac:	00050493          	mv	s1,a0
    800014b0:	00058913          	mv	s2,a1
    800014b4:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)arg;
    uint64 opLocal = 0x14;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800014b8:	00001537          	lui	a0,0x1
    800014bc:	00000097          	auipc	ra,0x0
    800014c0:	d9c080e7          	jalr	-612(ra) # 80001258 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == 0)
    800014c4:	04050263          	beqz	a0,80001508 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    800014c8:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    800014cc:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    800014d0:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    800014d4:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800014d8:	01400793          	li	a5,20
    800014dc:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800014e0:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800014e4:	00050513          	mv	a0,a0
    return result;
    800014e8:	0005051b          	sext.w	a0,a0
}
    800014ec:	02813083          	ld	ra,40(sp)
    800014f0:	02013403          	ld	s0,32(sp)
    800014f4:	01813483          	ld	s1,24(sp)
    800014f8:	01013903          	ld	s2,16(sp)
    800014fc:	00813983          	ld	s3,8(sp)
    80001500:	03010113          	addi	sp,sp,48
    80001504:	00008067          	ret
        return -1;
    80001508:	fff00513          	li	a0,-1
    8000150c:	fe1ff06f          	j	800014ec <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x5c>

0000000080001510 <_Z4getcv>:

char getc()
{
    80001510:	ff010113          	addi	sp,sp,-16
    80001514:	00813423          	sd	s0,8(sp)
    80001518:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    8000151c:	04100513          	li	a0,65

    __asm__ volatile("ecall");
    80001520:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001524:	00050513          	mv	a0,a0
    return (char)result;
}
    80001528:	0ff57513          	andi	a0,a0,255
    8000152c:	00813403          	ld	s0,8(sp)
    80001530:	01010113          	addi	sp,sp,16
    80001534:	00008067          	ret

0000000080001538 <_Z4putcc>:

void putc(char c)
{
    80001538:	ff010113          	addi	sp,sp,-16
    8000153c:	00813423          	sd	s0,8(sp)
    80001540:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)c));
    80001544:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    80001548:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    8000154c:	00000073          	ecall
}
    80001550:	00813403          	ld	s0,8(sp)
    80001554:	01010113          	addi	sp,sp,16
    80001558:	00008067          	ret

000000008000155c <_Z20sysCallGetCharOutputv>:

char sysCallGetCharOutput()
{
    8000155c:	ff010113          	addi	sp,sp,-16
    80001560:	00813423          	sd	s0,8(sp)
    80001564:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x43");
    80001568:	04300513          	li	a0,67

    __asm__ volatile("ecall");
    8000156c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001570:	00050513          	mv	a0,a0
    return (char)result;
}
    80001574:	0ff57513          	andi	a0,a0,255
    80001578:	00813403          	ld	s0,8(sp)
    8000157c:	01010113          	addi	sp,sp,16
    80001580:	00008067          	ret

0000000080001584 <_Z17thread_delete_pcbP7_thread>:

int thread_delete_pcb(thread_t handle)
{
    80001584:	ff010113          	addi	sp,sp,-16
    80001588:	00813423          	sd	s0,8(sp)
    8000158c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80001590:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x16");
    80001594:	01600513          	li	a0,22
    __asm__ volatile("ecall");
    80001598:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000159c:	00050513          	mv	a0,a0
    return (char)result;
}
    800015a0:	0ff57513          	andi	a0,a0,255
    800015a4:	00813403          	ld	s0,8(sp)
    800015a8:	01010113          	addi	sp,sp,16
    800015ac:	00008067          	ret

00000000800015b0 <_ZN7_threaddlEPv>:
//

#include "../h/_thread.hpp"
#include "../h/syscall_c.hpp"

void _thread::operator delete(void *p) {
    800015b0:	ff010113          	addi	sp,sp,-16
    800015b4:	00113423          	sd	ra,8(sp)
    800015b8:	00813023          	sd	s0,0(sp)
    800015bc:	01010413          	addi	s0,sp,16
    thread_delete_pcb((thread_t)p);
    800015c0:	00000097          	auipc	ra,0x0
    800015c4:	fc4080e7          	jalr	-60(ra) # 80001584 <_Z17thread_delete_pcbP7_thread>
    800015c8:	00813083          	ld	ra,8(sp)
    800015cc:	00013403          	ld	s0,0(sp)
    800015d0:	01010113          	addi	sp,sp,16
    800015d4:	00008067          	ret

00000000800015d8 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    800015d8:	ff010113          	addi	sp,sp,-16
    800015dc:	00113423          	sd	ra,8(sp)
    800015e0:	00813023          	sd	s0,0(sp)
    800015e4:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    800015e8:	00002097          	auipc	ra,0x2
    800015ec:	8bc080e7          	jalr	-1860(ra) # 80002ea4 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    800015f0:	00008797          	auipc	a5,0x8
    800015f4:	9707b783          	ld	a5,-1680(a5) # 80008f60 <_ZN3PCB7runningE>
    800015f8:	0287b703          	ld	a4,40(a5)
    800015fc:	0307b503          	ld	a0,48(a5)
    80001600:	000700e7          	jalr	a4

    thread_exit();
    80001604:	00000097          	auipc	ra,0x0
    80001608:	d50080e7          	jalr	-688(ra) # 80001354 <_Z11thread_exitv>
}
    8000160c:	00813083          	ld	ra,8(sp)
    80001610:	00013403          	ld	s0,0(sp)
    80001614:	01010113          	addi	sp,sp,16
    80001618:	00008067          	ret

000000008000161c <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    8000161c:	ff010113          	addi	sp,sp,-16
    80001620:	00813423          	sd	s0,8(sp)
    80001624:	01010413          	addi	s0,sp,16
    })
    80001628:	00050023          	sb	zero,0(a0) # 1000 <_entry-0x7ffff000>
    8000162c:	00e53c23          	sd	a4,24(a0)
    80001630:	02053023          	sd	zero,32(a0)
    80001634:	02b53423          	sd	a1,40(a0)
    80001638:	02c53823          	sd	a2,48(a0)
    8000163c:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80001640:	000017b7          	lui	a5,0x1
    80001644:	00f686b3          	add	a3,a3,a5
    })
    80001648:	04d53423          	sd	a3,72(a0)
    8000164c:	00000797          	auipc	a5,0x0
    80001650:	f8c78793          	addi	a5,a5,-116 # 800015d8 <_ZN3PCB6runnerEv>
    80001654:	04f53823          	sd	a5,80(a0)
    80001658:	04050c23          	sb	zero,88(a0)
    nextPCB = 0;
    8000165c:	00053423          	sd	zero,8(a0)
}
    80001660:	00813403          	ld	s0,8(sp)
    80001664:	01010113          	addi	sp,sp,16
    80001668:	00008067          	ret

000000008000166c <_ZN3PCB5startEv>:
{
    8000166c:	ff010113          	addi	sp,sp,-16
    80001670:	00113423          	sd	ra,8(sp)
    80001674:	00813023          	sd	s0,0(sp)
    80001678:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    8000167c:	00001097          	auipc	ra,0x1
    80001680:	0d4080e7          	jalr	212(ra) # 80002750 <_ZN9Scheduler3putEP3PCB>
}
    80001684:	00813083          	ld	ra,8(sp)
    80001688:	00013403          	ld	s0,0(sp)
    8000168c:	01010113          	addi	sp,sp,16
    80001690:	00008067          	ret

0000000080001694 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    80001694:	fe010113          	addi	sp,sp,-32
    80001698:	00113c23          	sd	ra,24(sp)
    8000169c:	00813823          	sd	s0,16(sp)
    800016a0:	00913423          	sd	s1,8(sp)
    800016a4:	01213023          	sd	s2,0(sp)
    800016a8:	02010413          	addi	s0,sp,32
    PCB* old = running;
    800016ac:	00008497          	auipc	s1,0x8
    800016b0:	8b44b483          	ld	s1,-1868(s1) # 80008f60 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    800016b4:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    800016b8:	00100793          	li	a5,1
    800016bc:	04f70a63          	beq	a4,a5,80001710 <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    800016c0:	00001097          	auipc	ra,0x1
    800016c4:	0e4080e7          	jalr	228(ra) # 800027a4 <_ZN9Scheduler3getEv>
    800016c8:	00008917          	auipc	s2,0x8
    800016cc:	89890913          	addi	s2,s2,-1896 # 80008f60 <_ZN3PCB7runningE>
    800016d0:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    800016d4:	00100793          	li	a5,1
    800016d8:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);

    Riscv::changePrivMode();
    800016dc:	00002097          	auipc	ra,0x2
    800016e0:	8e0080e7          	jalr	-1824(ra) # 80002fbc <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    800016e4:	00093583          	ld	a1,0(s2)
    800016e8:	04858593          	addi	a1,a1,72
    800016ec:	04848513          	addi	a0,s1,72
    800016f0:	00000097          	auipc	ra,0x0
    800016f4:	b48080e7          	jalr	-1208(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800016f8:	01813083          	ld	ra,24(sp)
    800016fc:	01013403          	ld	s0,16(sp)
    80001700:	00813483          	ld	s1,8(sp)
    80001704:	00013903          	ld	s2,0(sp)
    80001708:	02010113          	addi	sp,sp,32
    8000170c:	00008067          	ret
        Scheduler::put(old);
    80001710:	00048513          	mv	a0,s1
    80001714:	00001097          	auipc	ra,0x1
    80001718:	03c080e7          	jalr	60(ra) # 80002750 <_ZN9Scheduler3putEP3PCB>
    8000171c:	fa5ff06f          	j	800016c0 <_ZN3PCB8dispatchEv+0x2c>

0000000080001720 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    80001720:	ff010113          	addi	sp,sp,-16
    80001724:	00113423          	sd	ra,8(sp)
    80001728:	00813023          	sd	s0,0(sp)
    8000172c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80001730:	00002097          	auipc	ra,0x2
    80001734:	fc4080e7          	jalr	-60(ra) # 800036f4 <_ZN15MemoryAllocator7kmallocEm>
}
    80001738:	00813083          	ld	ra,8(sp)
    8000173c:	00013403          	ld	s0,0(sp)
    80001740:	01010113          	addi	sp,sp,16
    80001744:	00008067          	ret

0000000080001748 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80001748:	ff010113          	addi	sp,sp,-16
    8000174c:	00113423          	sd	ra,8(sp)
    80001750:	00813023          	sd	s0,0(sp)
    80001754:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80001758:	00002097          	auipc	ra,0x2
    8000175c:	000080e7          	jalr	ra # 80003758 <_ZN15MemoryAllocator5kfreeEPv>
}
    80001760:	00813083          	ld	ra,8(sp)
    80001764:	00013403          	ld	s0,0(sp)
    80001768:	01010113          	addi	sp,sp,16
    8000176c:	00008067          	ret

0000000080001770 <_ZN3PCBD1Ev>:

PCB::~PCB()
    80001770:	ff010113          	addi	sp,sp,-16
    80001774:	00113423          	sd	ra,8(sp)
    80001778:	00813023          	sd	s0,0(sp)
    8000177c:	01010413          	addi	s0,sp,16
{
    MemoryAllocator::kfree(beginSP);
    80001780:	03853503          	ld	a0,56(a0)
    80001784:	00002097          	auipc	ra,0x2
    80001788:	fd4080e7          	jalr	-44(ra) # 80003758 <_ZN15MemoryAllocator5kfreeEPv>
}
    8000178c:	00813083          	ld	ra,8(sp)
    80001790:	00013403          	ld	s0,0(sp)
    80001794:	01010113          	addi	sp,sp,16
    80001798:	00008067          	ret

000000008000179c <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    8000179c:	fd010113          	addi	sp,sp,-48
    800017a0:	02113423          	sd	ra,40(sp)
    800017a4:	02813023          	sd	s0,32(sp)
    800017a8:	00913c23          	sd	s1,24(sp)
    800017ac:	01213823          	sd	s2,16(sp)
    800017b0:	01313423          	sd	s3,8(sp)
    800017b4:	01413023          	sd	s4,0(sp)
    800017b8:	03010413          	addi	s0,sp,48
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    800017bc:	06000513          	li	a0,96
    800017c0:	00000097          	auipc	ra,0x0
    800017c4:	f60080e7          	jalr	-160(ra) # 80001720 <_ZN3PCBnwEm>
    800017c8:	00050493          	mv	s1,a0
    800017cc:	00000713          	li	a4,0
    800017d0:	00000693          	li	a3,0
    800017d4:	00000613          	li	a2,0
    800017d8:	00000593          	li	a1,0
    800017dc:	00000097          	auipc	ra,0x0
    800017e0:	e40080e7          	jalr	-448(ra) # 8000161c <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    800017e4:	00100793          	li	a5,1
    800017e8:	00f48023          	sb	a5,0(s1)
    PCB::running = mainSystem;
    800017ec:	00007917          	auipc	s2,0x7
    800017f0:	77490913          	addi	s2,s2,1908 # 80008f60 <_ZN3PCB7runningE>
    800017f4:	00993023          	sd	s1,0(s2)
    800017f8:	00100a13          	li	s4,1
    800017fc:	0544a023          	sw	s4,64(s1)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80001800:	00001537          	lui	a0,0x1
    80001804:	00002097          	auipc	ra,0x2
    80001808:	ef0080e7          	jalr	-272(ra) # 800036f4 <_ZN15MemoryAllocator7kmallocEm>
    8000180c:	00050993          	mv	s3,a0
    80001810:	06000513          	li	a0,96
    80001814:	00000097          	auipc	ra,0x0
    80001818:	f0c080e7          	jalr	-244(ra) # 80001720 <_ZN3PCBnwEm>
    8000181c:	00050493          	mv	s1,a0
    80001820:	00200713          	li	a4,2
    80001824:	00098693          	mv	a3,s3
    80001828:	00000613          	li	a2,0
    8000182c:	00007597          	auipc	a1,0x7
    80001830:	6ac5b583          	ld	a1,1708(a1) # 80008ed8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001834:	00000097          	auipc	ra,0x0
    80001838:	de8080e7          	jalr	-536(ra) # 8000161c <_ZN3PCBC1EPFvPvES0_S0_m>
    8000183c:	00993423          	sd	s1,8(s2)
    PCB::consolePCB->systemThread = true;
    80001840:	01448023          	sb	s4,0(s1)
    PCB::consolePCB->start();
    80001844:	00893503          	ld	a0,8(s2)
    80001848:	00000097          	auipc	ra,0x0
    8000184c:	e24080e7          	jalr	-476(ra) # 8000166c <_ZN3PCB5startEv>
    PCB::userPCB = new PCB(&Riscv::userMainWrapper, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80001850:	00001537          	lui	a0,0x1
    80001854:	00002097          	auipc	ra,0x2
    80001858:	ea0080e7          	jalr	-352(ra) # 800036f4 <_ZN15MemoryAllocator7kmallocEm>
    8000185c:	00050993          	mv	s3,a0
    80001860:	06000513          	li	a0,96
    80001864:	00000097          	auipc	ra,0x0
    80001868:	ebc080e7          	jalr	-324(ra) # 80001720 <_ZN3PCBnwEm>
    8000186c:	00050493          	mv	s1,a0
    80001870:	00200713          	li	a4,2
    80001874:	00098693          	mv	a3,s3
    80001878:	00000613          	li	a2,0
    8000187c:	00007597          	auipc	a1,0x7
    80001880:	68c5b583          	ld	a1,1676(a1) # 80008f08 <_GLOBAL_OFFSET_TABLE_+0x80>
    80001884:	00000097          	auipc	ra,0x0
    80001888:	d98080e7          	jalr	-616(ra) # 8000161c <_ZN3PCBC1EPFvPvES0_S0_m>
    8000188c:	00993823          	sd	s1,16(s2)
    PCB::userPCB->start();
    80001890:	00048513          	mv	a0,s1
    80001894:	00000097          	auipc	ra,0x0
    80001898:	dd8080e7          	jalr	-552(ra) # 8000166c <_ZN3PCB5startEv>
}
    8000189c:	02813083          	ld	ra,40(sp)
    800018a0:	02013403          	ld	s0,32(sp)
    800018a4:	01813483          	ld	s1,24(sp)
    800018a8:	01013903          	ld	s2,16(sp)
    800018ac:	00813983          	ld	s3,8(sp)
    800018b0:	00013a03          	ld	s4,0(sp)
    800018b4:	03010113          	addi	sp,sp,48
    800018b8:	00008067          	ret

00000000800018bc <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    800018bc:	ff010113          	addi	sp,sp,-16
    800018c0:	00813423          	sd	s0,8(sp)
    800018c4:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    800018c8:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    800018cc:	ffd50513          	addi	a0,a0,-3
}
    800018d0:	00153513          	seqz	a0,a0
    800018d4:	00813403          	ld	s0,8(sp)
    800018d8:	01010113          	addi	sp,sp,16
    800018dc:	00008067          	ret

00000000800018e0 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    800018e0:	ff010113          	addi	sp,sp,-16
    800018e4:	00113423          	sd	ra,8(sp)
    800018e8:	00813023          	sd	s0,0(sp)
    800018ec:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    800018f0:	00007797          	auipc	a5,0x7
    800018f4:	67078793          	addi	a5,a5,1648 # 80008f60 <_ZN3PCB7runningE>
    800018f8:	0007bc23          	sd	zero,24(a5)
    PCB::running->setState(PCB::FINISHED);
    800018fc:	0007b783          	ld	a5,0(a5)
    80001900:	00300713          	li	a4,3
    80001904:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    80001908:	00000097          	auipc	ra,0x0
    8000190c:	d8c080e7          	jalr	-628(ra) # 80001694 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    80001910:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80001914:	00001097          	auipc	ra,0x1
    80001918:	670080e7          	jalr	1648(ra) # 80002f84 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000191c:	00813083          	ld	ra,8(sp)
    80001920:	00013403          	ld	s0,0(sp)
    80001924:	01010113          	addi	sp,sp,16
    80001928:	00008067          	ret

000000008000192c <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    8000192c:	ff010113          	addi	sp,sp,-16
    80001930:	00113423          	sd	ra,8(sp)
    80001934:	00813023          	sd	s0,0(sp)
    80001938:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    8000193c:	00007797          	auipc	a5,0x7
    80001940:	6207be23          	sd	zero,1596(a5) # 80008f78 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    80001944:	00000097          	auipc	ra,0x0
    80001948:	d50080e7          	jalr	-688(ra) # 80001694 <_ZN3PCB8dispatchEv>
}
    8000194c:	00813083          	ld	ra,8(sp)
    80001950:	00013403          	ld	s0,0(sp)
    80001954:	01010113          	addi	sp,sp,16
    80001958:	00008067          	ret

000000008000195c <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    8000195c:	ff010113          	addi	sp,sp,-16
    80001960:	00113423          	sd	ra,8(sp)
    80001964:	00813023          	sd	s0,0(sp)
    80001968:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    8000196c:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    80001970:	00007717          	auipc	a4,0x7
    80001974:	5f070713          	addi	a4,a4,1520 # 80008f60 <_ZN3PCB7runningE>
    80001978:	00073c23          	sd	zero,24(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    8000197c:	00073703          	ld	a4,0(a4)
    80001980:	00007697          	auipc	a3,0x7
    80001984:	5506b683          	ld	a3,1360(a3) # 80008ed0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001988:	0006b683          	ld	a3,0(a3)
    8000198c:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80001990:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    80001994:	00001097          	auipc	ra,0x1
    80001998:	c40080e7          	jalr	-960(ra) # 800025d4 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    8000199c:	00000097          	auipc	ra,0x0
    800019a0:	cf8080e7          	jalr	-776(ra) # 80001694 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    800019a4:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800019a8:	00001097          	auipc	ra,0x1
    800019ac:	5dc080e7          	jalr	1500(ra) # 80002f84 <_ZN5Riscv13w_a0_sscratchEv>
}
    800019b0:	00813083          	ld	ra,8(sp)
    800019b4:	00013403          	ld	s0,0(sp)
    800019b8:	01010113          	addi	sp,sp,16
    800019bc:	00008067          	ret

00000000800019c0 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    800019c0:	fd010113          	addi	sp,sp,-48
    800019c4:	02113423          	sd	ra,40(sp)
    800019c8:	02813023          	sd	s0,32(sp)
    800019cc:	00913c23          	sd	s1,24(sp)
    800019d0:	01213823          	sd	s2,16(sp)
    800019d4:	01313423          	sd	s3,8(sp)
    800019d8:	01413023          	sd	s4,0(sp)
    800019dc:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    800019e0:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    800019e4:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    800019e8:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    800019ec:	06000513          	li	a0,96
    800019f0:	00000097          	auipc	ra,0x0
    800019f4:	d30080e7          	jalr	-720(ra) # 80001720 <_ZN3PCBnwEm>
    800019f8:	00050493          	mv	s1,a0
    800019fc:	00200713          	li	a4,2
    80001a00:	00007697          	auipc	a3,0x7
    80001a04:	5806b683          	ld	a3,1408(a3) # 80008f80 <_ZN3PCB10savedRegA4E>
    80001a08:	000a0613          	mv	a2,s4
    80001a0c:	00098593          	mv	a1,s3
    80001a10:	00000097          	auipc	ra,0x0
    80001a14:	c0c080e7          	jalr	-1012(ra) # 8000161c <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80001a18:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80001a1c:	02048e63          	beqz	s1,80001a58 <_ZN3PCB19threadCreateHandlerEv+0x98>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    80001a20:	00048513          	mv	a0,s1
    80001a24:	00000097          	auipc	ra,0x0
    80001a28:	c48080e7          	jalr	-952(ra) # 8000166c <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80001a2c:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80001a30:	00001097          	auipc	ra,0x1
    80001a34:	554080e7          	jalr	1364(ra) # 80002f84 <_ZN5Riscv13w_a0_sscratchEv>
}
    80001a38:	02813083          	ld	ra,40(sp)
    80001a3c:	02013403          	ld	s0,32(sp)
    80001a40:	01813483          	ld	s1,24(sp)
    80001a44:	01013903          	ld	s2,16(sp)
    80001a48:	00813983          	ld	s3,8(sp)
    80001a4c:	00013a03          	ld	s4,0(sp)
    80001a50:	03010113          	addi	sp,sp,48
    80001a54:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80001a58:	fff00513          	li	a0,-1
    80001a5c:	fd5ff06f          	j	80001a30 <_ZN3PCB19threadCreateHandlerEv+0x70>

0000000080001a60 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80001a60:	ff010113          	addi	sp,sp,-16
    80001a64:	00113423          	sd	ra,8(sp)
    80001a68:	00813023          	sd	s0,0(sp)
    80001a6c:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80001a70:	00058513          	mv	a0,a1
    if(pcb != 0)
    80001a74:	02050463          	beqz	a0,80001a9c <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80001a78:	00000097          	auipc	ra,0x0
    80001a7c:	bf4080e7          	jalr	-1036(ra) # 8000166c <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80001a80:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }
    Riscv::w_a0_sscratch();
    80001a84:	00001097          	auipc	ra,0x1
    80001a88:	500080e7          	jalr	1280(ra) # 80002f84 <_ZN5Riscv13w_a0_sscratchEv>
}
    80001a8c:	00813083          	ld	ra,8(sp)
    80001a90:	00013403          	ld	s0,0(sp)
    80001a94:	01010113          	addi	sp,sp,16
    80001a98:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80001a9c:	fff00513          	li	a0,-1
    80001aa0:	fe5ff06f          	j	80001a84 <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080001aa4 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80001aa4:	fd010113          	addi	sp,sp,-48
    80001aa8:	02113423          	sd	ra,40(sp)
    80001aac:	02813023          	sd	s0,32(sp)
    80001ab0:	00913c23          	sd	s1,24(sp)
    80001ab4:	01213823          	sd	s2,16(sp)
    80001ab8:	01313423          	sd	s3,8(sp)
    80001abc:	01413023          	sd	s4,0(sp)
    80001ac0:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80001ac4:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80001ac8:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80001acc:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80001ad0:	06000513          	li	a0,96
    80001ad4:	00000097          	auipc	ra,0x0
    80001ad8:	c4c080e7          	jalr	-948(ra) # 80001720 <_ZN3PCBnwEm>
    80001adc:	00050493          	mv	s1,a0
    80001ae0:	00200713          	li	a4,2
    80001ae4:	00007697          	auipc	a3,0x7
    80001ae8:	49c6b683          	ld	a3,1180(a3) # 80008f80 <_ZN3PCB10savedRegA4E>
    80001aec:	000a0613          	mv	a2,s4
    80001af0:	00098593          	mv	a1,s3
    80001af4:	00000097          	auipc	ra,0x0
    80001af8:	b28080e7          	jalr	-1240(ra) # 8000161c <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80001afc:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80001b00:	02048863          	beqz	s1,80001b30 <_ZN3PCB20threadMakePCBHandlerEv+0x8c>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
    80001b04:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80001b08:	00001097          	auipc	ra,0x1
    80001b0c:	47c080e7          	jalr	1148(ra) # 80002f84 <_ZN5Riscv13w_a0_sscratchEv>
}
    80001b10:	02813083          	ld	ra,40(sp)
    80001b14:	02013403          	ld	s0,32(sp)
    80001b18:	01813483          	ld	s1,24(sp)
    80001b1c:	01013903          	ld	s2,16(sp)
    80001b20:	00813983          	ld	s3,8(sp)
    80001b24:	00013a03          	ld	s4,0(sp)
    80001b28:	03010113          	addi	sp,sp,48
    80001b2c:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80001b30:	fff00513          	li	a0,-1
    80001b34:	fd5ff06f          	j	80001b08 <_ZN3PCB20threadMakePCBHandlerEv+0x64>

0000000080001b38 <_ZN3PCB19threadDelPCBHandlerEv>:

void PCB::threadDelPCBHandler()
{
    80001b38:	fe010113          	addi	sp,sp,-32
    80001b3c:	00113c23          	sd	ra,24(sp)
    80001b40:	00813823          	sd	s0,16(sp)
    80001b44:	00913423          	sd	s1,8(sp)
    80001b48:	02010413          	addi	s0,sp,32
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80001b4c:	00058493          	mv	s1,a1
    if(pcb != 0)
    80001b50:	02048e63          	beqz	s1,80001b8c <_ZN3PCB19threadDelPCBHandlerEv+0x54>
    {
        delete pcb;
    80001b54:	00048513          	mv	a0,s1
    80001b58:	00000097          	auipc	ra,0x0
    80001b5c:	c18080e7          	jalr	-1000(ra) # 80001770 <_ZN3PCBD1Ev>
    80001b60:	00048513          	mv	a0,s1
    80001b64:	00000097          	auipc	ra,0x0
    80001b68:	be4080e7          	jalr	-1052(ra) # 80001748 <_ZN3PCBdlEPv>
        __asm__ volatile("li a0, 0x0");
    80001b6c:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x1");
    }
    Riscv::w_a0_sscratch();
    80001b70:	00001097          	auipc	ra,0x1
    80001b74:	414080e7          	jalr	1044(ra) # 80002f84 <_ZN5Riscv13w_a0_sscratchEv>
}
    80001b78:	01813083          	ld	ra,24(sp)
    80001b7c:	01013403          	ld	s0,16(sp)
    80001b80:	00813483          	ld	s1,8(sp)
    80001b84:	02010113          	addi	sp,sp,32
    80001b88:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80001b8c:	00100513          	li	a0,1
    80001b90:	fe1ff06f          	j	80001b70 <_ZN3PCB19threadDelPCBHandlerEv+0x38>

0000000080001b94 <_Z15addBlockToLevelP14buddyAllocatorPvm>:

    addBlockToLevel(buddy, addr, level);
}

void addBlockToLevel(buddyAllocator* buddy, void* addr, size_t level)
{
    80001b94:	ff010113          	addi	sp,sp,-16
    80001b98:	00813423          	sd	s0,8(sp)
    80001b9c:	01010413          	addi	s0,sp,16
    if(buddy->bucket[level].first == nullptr)
    80001ba0:	00260793          	addi	a5,a2,2
    80001ba4:	00479793          	slli	a5,a5,0x4
    80001ba8:	00f507b3          	add	a5,a0,a5
    80001bac:	0007b783          	ld	a5,0(a5)
    80001bb0:	02078663          	beqz	a5,80001bdc <_Z15addBlockToLevelP14buddyAllocatorPvm+0x48>
        buddy->bucket[level].first = buddy->bucket[level].last = (uint64*)addr;
        *(buddy->bucket[level].last) = 0;
    }
    else
    {
        *(buddy->bucket[level].last) = (uint64)addr;
    80001bb4:	00260613          	addi	a2,a2,2
    80001bb8:	00461613          	slli	a2,a2,0x4
    80001bbc:	00c50633          	add	a2,a0,a2
    80001bc0:	00863783          	ld	a5,8(a2)
    80001bc4:	00b7b023          	sd	a1,0(a5)
        buddy->bucket[level].last = (uint64*)addr;
    80001bc8:	00b63423          	sd	a1,8(a2)
        *(buddy->bucket[level].last) = 0;
    80001bcc:	0005b023          	sd	zero,0(a1)
    }
}
    80001bd0:	00813403          	ld	s0,8(sp)
    80001bd4:	01010113          	addi	sp,sp,16
    80001bd8:	00008067          	ret
        buddy->bucket[level].first = buddy->bucket[level].last = (uint64*)addr;
    80001bdc:	00260613          	addi	a2,a2,2
    80001be0:	00461613          	slli	a2,a2,0x4
    80001be4:	00c50633          	add	a2,a0,a2
    80001be8:	00b63423          	sd	a1,8(a2)
    80001bec:	00b63023          	sd	a1,0(a2)
        *(buddy->bucket[level].last) = 0;
    80001bf0:	0005b023          	sd	zero,0(a1)
    80001bf4:	fddff06f          	j	80001bd0 <_Z15addBlockToLevelP14buddyAllocatorPvm+0x3c>

0000000080001bf8 <_Z17getBuddyBlockAddrPvm>:

size_t getBuddyBlockAddr(void* addr, size_t level)
{
    80001bf8:	ff010113          	addi	sp,sp,-16
    80001bfc:	00813423          	sd	s0,8(sp)
    80001c00:	01010413          	addi	s0,sp,16
    return (size_t)addr ^ (1 << level);
    80001c04:	00100793          	li	a5,1
    80001c08:	00b797bb          	sllw	a5,a5,a1
}
    80001c0c:	00a7c533          	xor	a0,a5,a0
    80001c10:	00813403          	ld	s0,8(sp)
    80001c14:	01010113          	addi	sp,sp,16
    80001c18:	00008067          	ret

0000000080001c1c <_Z5splitP14buddyAllocatorPvmmb>:
{
    80001c1c:	fd010113          	addi	sp,sp,-48
    80001c20:	02113423          	sd	ra,40(sp)
    80001c24:	02813023          	sd	s0,32(sp)
    80001c28:	00913c23          	sd	s1,24(sp)
    80001c2c:	01213823          	sd	s2,16(sp)
    80001c30:	01313423          	sd	s3,8(sp)
    80001c34:	01413023          	sd	s4,0(sp)
    80001c38:	03010413          	addi	s0,sp,48
    80001c3c:	00050993          	mv	s3,a0
    80001c40:	00058a13          	mv	s4,a1
    if(!splitMore)
    80001c44:	02070863          	beqz	a4,80001c74 <_Z5splitP14buddyAllocatorPvmmb+0x58>
    80001c48:	00060913          	mv	s2,a2
        if(currLevel == finalLevel)
    80001c4c:	00c68463          	beq	a3,a2,80001c54 <_Z5splitP14buddyAllocatorPvmmb+0x38>
        if(currLevel > finalLevel) // condition not necessary, just for protection
    80001c50:	02d66a63          	bltu	a2,a3,80001c84 <_Z5splitP14buddyAllocatorPvmmb+0x68>
}
    80001c54:	02813083          	ld	ra,40(sp)
    80001c58:	02013403          	ld	s0,32(sp)
    80001c5c:	01813483          	ld	s1,24(sp)
    80001c60:	01013903          	ld	s2,16(sp)
    80001c64:	00813983          	ld	s3,8(sp)
    80001c68:	00013a03          	ld	s4,0(sp)
    80001c6c:	03010113          	addi	sp,sp,48
    80001c70:	00008067          	ret
        addBlockToLevel(buddy, addr, currLevel);
    80001c74:	00068613          	mv	a2,a3
    80001c78:	00000097          	auipc	ra,0x0
    80001c7c:	f1c080e7          	jalr	-228(ra) # 80001b94 <_Z15addBlockToLevelP14buddyAllocatorPvm>
    80001c80:	fd5ff06f          	j	80001c54 <_Z5splitP14buddyAllocatorPvmmb+0x38>
            size_t buddyBlock = getBuddyBlockAddr(addr, currLevel - 1); // currLevel - 1 for next step
    80001c84:	fff68493          	addi	s1,a3,-1
    80001c88:	00048593          	mv	a1,s1
    80001c8c:	000a0513          	mv	a0,s4
    80001c90:	00000097          	auipc	ra,0x0
    80001c94:	f68080e7          	jalr	-152(ra) # 80001bf8 <_Z17getBuddyBlockAddrPvm>
    80001c98:	00050593          	mv	a1,a0
            split(buddy, (void*)buddyBlock, finalLevel, currLevel - 1, false);
    80001c9c:	00000713          	li	a4,0
    80001ca0:	00048693          	mv	a3,s1
    80001ca4:	00090613          	mv	a2,s2
    80001ca8:	00098513          	mv	a0,s3
    80001cac:	00000097          	auipc	ra,0x0
    80001cb0:	f70080e7          	jalr	-144(ra) # 80001c1c <_Z5splitP14buddyAllocatorPvmmb>
            split(buddy, addr, finalLevel, currLevel - 1, true);
    80001cb4:	00100713          	li	a4,1
    80001cb8:	00048693          	mv	a3,s1
    80001cbc:	00090613          	mv	a2,s2
    80001cc0:	000a0593          	mv	a1,s4
    80001cc4:	00098513          	mv	a0,s3
    80001cc8:	00000097          	auipc	ra,0x0
    80001ccc:	f54080e7          	jalr	-172(ra) # 80001c1c <_Z5splitP14buddyAllocatorPvmmb>
    80001cd0:	f85ff06f          	j	80001c54 <_Z5splitP14buddyAllocatorPvmmb+0x38>

0000000080001cd4 <_Z11buddy_allocP14buddyAllocatorm>:
{
    80001cd4:	fe010113          	addi	sp,sp,-32
    80001cd8:	00113c23          	sd	ra,24(sp)
    80001cdc:	00813823          	sd	s0,16(sp)
    80001ce0:	00913423          	sd	s1,8(sp)
    80001ce4:	02010413          	addi	s0,sp,32
    size_t deg = 0;
    80001ce8:	00000613          	li	a2,0
    size_t x = 1;
    80001cec:	00100793          	li	a5,1
    while(x < num)
    80001cf0:	00b7f863          	bgeu	a5,a1,80001d00 <_Z11buddy_allocP14buddyAllocatorm+0x2c>
        deg++;
    80001cf4:	00160613          	addi	a2,a2,1
        x<<=1;
    80001cf8:	00179793          	slli	a5,a5,0x1
    while(x < num)
    80001cfc:	ff5ff06f          	j	80001cf0 <_Z11buddy_allocP14buddyAllocatorm+0x1c>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80001d00:	00060693          	mv	a3,a2
    80001d04:	01853783          	ld	a5,24(a0)
    80001d08:	06d7e063          	bltu	a5,a3,80001d68 <_Z11buddy_allocP14buddyAllocatorm+0x94>
        if(buddy->bucket[i].first != nullptr)
    80001d0c:	00268793          	addi	a5,a3,2
    80001d10:	00479793          	slli	a5,a5,0x4
    80001d14:	00f507b3          	add	a5,a0,a5
    80001d18:	0007b483          	ld	s1,0(a5)
    80001d1c:	00049663          	bnez	s1,80001d28 <_Z11buddy_allocP14buddyAllocatorm+0x54>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80001d20:	00168693          	addi	a3,a3,1
    80001d24:	fe1ff06f          	j	80001d04 <_Z11buddy_allocP14buddyAllocatorm+0x30>
            buddy->bucket[i].first = (uint64*)*ret;
    80001d28:	0004b703          	ld	a4,0(s1)
    80001d2c:	00268793          	addi	a5,a3,2
    80001d30:	00479793          	slli	a5,a5,0x4
    80001d34:	00f507b3          	add	a5,a0,a5
    80001d38:	00e7b023          	sd	a4,0(a5)
            if(buddy->bucket[i].first == nullptr)
    80001d3c:	00070c63          	beqz	a4,80001d54 <_Z11buddy_allocP14buddyAllocatorm+0x80>
            split(buddy, (void*)ret, level, i, true);
    80001d40:	00100713          	li	a4,1
    80001d44:	00048593          	mv	a1,s1
    80001d48:	00000097          	auipc	ra,0x0
    80001d4c:	ed4080e7          	jalr	-300(ra) # 80001c1c <_Z5splitP14buddyAllocatorPvmmb>
            return ret;
    80001d50:	01c0006f          	j	80001d6c <_Z11buddy_allocP14buddyAllocatorm+0x98>
                buddy->bucket[i].last = nullptr;
    80001d54:	00268793          	addi	a5,a3,2
    80001d58:	00479793          	slli	a5,a5,0x4
    80001d5c:	00f507b3          	add	a5,a0,a5
    80001d60:	0007b423          	sd	zero,8(a5)
    80001d64:	fddff06f          	j	80001d40 <_Z11buddy_allocP14buddyAllocatorm+0x6c>
    return nullptr;
    80001d68:	00000493          	li	s1,0
}
    80001d6c:	00048513          	mv	a0,s1
    80001d70:	01813083          	ld	ra,24(sp)
    80001d74:	01013403          	ld	s0,16(sp)
    80001d78:	00813483          	ld	s1,8(sp)
    80001d7c:	02010113          	addi	sp,sp,32
    80001d80:	00008067          	ret

0000000080001d84 <_Z9addBlocksP14buddyAllocatorPvm>:
{
    80001d84:	fd010113          	addi	sp,sp,-48
    80001d88:	02113423          	sd	ra,40(sp)
    80001d8c:	02813023          	sd	s0,32(sp)
    80001d90:	00913c23          	sd	s1,24(sp)
    80001d94:	01213823          	sd	s2,16(sp)
    80001d98:	01313423          	sd	s3,8(sp)
    80001d9c:	03010413          	addi	s0,sp,48
    80001da0:	00050913          	mv	s2,a0
    80001da4:	00058993          	mv	s3,a1
    size_t deg = 0;
    80001da8:	00000493          	li	s1,0
    size_t x = 1;
    80001dac:	00100793          	li	a5,1
    while(x < num)
    80001db0:	00c7f863          	bgeu	a5,a2,80001dc0 <_Z9addBlocksP14buddyAllocatorPvm+0x3c>
        deg++;
    80001db4:	00148493          	addi	s1,s1,1
        x<<=1;
    80001db8:	00179793          	slli	a5,a5,0x1
    while(x < num)
    80001dbc:	ff5ff06f          	j	80001db0 <_Z9addBlocksP14buddyAllocatorPvm+0x2c>
    if(level == buddy->maxLevel)
    80001dc0:	01893783          	ld	a5,24(s2)
    80001dc4:	02978e63          	beq	a5,s1,80001e00 <_Z9addBlocksP14buddyAllocatorPvm+0x7c>
    size_t buddyBlock = getBuddyBlockAddr(addr, level);
    80001dc8:	00048593          	mv	a1,s1
    80001dcc:	00098513          	mv	a0,s3
    80001dd0:	00000097          	auipc	ra,0x0
    80001dd4:	e28080e7          	jalr	-472(ra) # 80001bf8 <_Z17getBuddyBlockAddrPvm>
    uint64* curr = buddy->bucket[level].first;
    80001dd8:	00248793          	addi	a5,s1,2
    80001ddc:	00479793          	slli	a5,a5,0x4
    80001de0:	00f907b3          	add	a5,s2,a5
    80001de4:	0007b783          	ld	a5,0(a5)
    uint64* prev = nullptr;
    80001de8:	00000713          	li	a4,0
    while(curr != nullptr)
    80001dec:	0c078c63          	beqz	a5,80001ec4 <_Z9addBlocksP14buddyAllocatorPvm+0x140>
        if((size_t)curr == buddyBlock)
    80001df0:	02a78463          	beq	a5,a0,80001e18 <_Z9addBlocksP14buddyAllocatorPvm+0x94>
        prev = curr;
    80001df4:	00078713          	mv	a4,a5
        curr = (uint64*)*curr;
    80001df8:	0007b783          	ld	a5,0(a5)
    while(curr != nullptr)
    80001dfc:	ff1ff06f          	j	80001dec <_Z9addBlocksP14buddyAllocatorPvm+0x68>
        addBlockToLevel(buddy, addr, level);
    80001e00:	00048613          	mv	a2,s1
    80001e04:	00098593          	mv	a1,s3
    80001e08:	00090513          	mv	a0,s2
    80001e0c:	00000097          	auipc	ra,0x0
    80001e10:	d88080e7          	jalr	-632(ra) # 80001b94 <_Z15addBlockToLevelP14buddyAllocatorPvm>
        return;
    80001e14:	0c40006f          	j	80001ed8 <_Z9addBlocksP14buddyAllocatorPvm+0x154>
            if(prev != nullptr)
    80001e18:	04070c63          	beqz	a4,80001e70 <_Z9addBlocksP14buddyAllocatorPvm+0xec>
                *prev = *curr;
    80001e1c:	0007b683          	ld	a3,0(a5)
    80001e20:	00d73023          	sd	a3,0(a4)
                if(curr == buddy->bucket[level].last)
    80001e24:	00248693          	addi	a3,s1,2
    80001e28:	00469693          	slli	a3,a3,0x4
    80001e2c:	00d906b3          	add	a3,s2,a3
    80001e30:	0086b683          	ld	a3,8(a3)
    80001e34:	02f68463          	beq	a3,a5,80001e5c <_Z9addBlocksP14buddyAllocatorPvm+0xd8>
            if((size_t)addr < buddyBlock) addBlocks(buddy, addr, 1 << (level + 1));
    80001e38:	06a9f663          	bgeu	s3,a0,80001ea4 <_Z9addBlocksP14buddyAllocatorPvm+0x120>
    80001e3c:	0014849b          	addiw	s1,s1,1
    80001e40:	00100613          	li	a2,1
    80001e44:	0096163b          	sllw	a2,a2,s1
    80001e48:	00098593          	mv	a1,s3
    80001e4c:	00090513          	mv	a0,s2
    80001e50:	00000097          	auipc	ra,0x0
    80001e54:	f34080e7          	jalr	-204(ra) # 80001d84 <_Z9addBlocksP14buddyAllocatorPvm>
    80001e58:	0800006f          	j	80001ed8 <_Z9addBlocksP14buddyAllocatorPvm+0x154>
                    buddy->bucket[level].last = prev;
    80001e5c:	00248793          	addi	a5,s1,2
    80001e60:	00479793          	slli	a5,a5,0x4
    80001e64:	00f907b3          	add	a5,s2,a5
    80001e68:	00e7b423          	sd	a4,8(a5)
    80001e6c:	fcdff06f          	j	80001e38 <_Z9addBlocksP14buddyAllocatorPvm+0xb4>
                if(*curr == 0)
    80001e70:	0007b703          	ld	a4,0(a5)
    80001e74:	00071e63          	bnez	a4,80001e90 <_Z9addBlocksP14buddyAllocatorPvm+0x10c>
                    buddy->bucket[level].first = buddy->bucket[level].last = nullptr;
    80001e78:	00248793          	addi	a5,s1,2
    80001e7c:	00479793          	slli	a5,a5,0x4
    80001e80:	00f907b3          	add	a5,s2,a5
    80001e84:	0007b423          	sd	zero,8(a5)
    80001e88:	0007b023          	sd	zero,0(a5)
    80001e8c:	fadff06f          	j	80001e38 <_Z9addBlocksP14buddyAllocatorPvm+0xb4>
                    buddy->bucket[level].first = (uint64*)*curr;
    80001e90:	00248793          	addi	a5,s1,2
    80001e94:	00479793          	slli	a5,a5,0x4
    80001e98:	00f907b3          	add	a5,s2,a5
    80001e9c:	00e7b023          	sd	a4,0(a5)
    80001ea0:	f99ff06f          	j	80001e38 <_Z9addBlocksP14buddyAllocatorPvm+0xb4>
            else addBlocks(buddy, (void*)buddyBlock, 1 << (level + 1));
    80001ea4:	0014849b          	addiw	s1,s1,1
    80001ea8:	00100613          	li	a2,1
    80001eac:	0096163b          	sllw	a2,a2,s1
    80001eb0:	00050593          	mv	a1,a0
    80001eb4:	00090513          	mv	a0,s2
    80001eb8:	00000097          	auipc	ra,0x0
    80001ebc:	ecc080e7          	jalr	-308(ra) # 80001d84 <_Z9addBlocksP14buddyAllocatorPvm>
            return;
    80001ec0:	0180006f          	j	80001ed8 <_Z9addBlocksP14buddyAllocatorPvm+0x154>
    addBlockToLevel(buddy, addr, level);
    80001ec4:	00048613          	mv	a2,s1
    80001ec8:	00098593          	mv	a1,s3
    80001ecc:	00090513          	mv	a0,s2
    80001ed0:	00000097          	auipc	ra,0x0
    80001ed4:	cc4080e7          	jalr	-828(ra) # 80001b94 <_Z15addBlockToLevelP14buddyAllocatorPvm>
}
    80001ed8:	02813083          	ld	ra,40(sp)
    80001edc:	02013403          	ld	s0,32(sp)
    80001ee0:	01813483          	ld	s1,24(sp)
    80001ee4:	01013903          	ld	s2,16(sp)
    80001ee8:	00813983          	ld	s3,8(sp)
    80001eec:	03010113          	addi	sp,sp,48
    80001ef0:	00008067          	ret

0000000080001ef4 <_Z10buddy_initPvm>:
{
    80001ef4:	fd010113          	addi	sp,sp,-48
    80001ef8:	02113423          	sd	ra,40(sp)
    80001efc:	02813023          	sd	s0,32(sp)
    80001f00:	00913c23          	sd	s1,24(sp)
    80001f04:	01213823          	sd	s2,16(sp)
    80001f08:	01313423          	sd	s3,8(sp)
    80001f0c:	03010413          	addi	s0,sp,48
    size_t blockAddr = getBlockAddr((size_t)addr);
    80001f10:	00050793          	mv	a5,a0
    return addr & mask;
    80001f14:	fffff737          	lui	a4,0xfffff
    80001f18:	00e57533          	and	a0,a0,a4
    if((size_t)addr != blockAddr) // if start address not aligned
    80001f1c:	00a78863          	beq	a5,a0,80001f2c <_Z10buddy_initPvm+0x38>
    return currBlock + BLOCK_SIZE;
    80001f20:	000017b7          	lui	a5,0x1
    80001f24:	00f507b3          	add	a5,a0,a5
        numOfBlocks--;
    80001f28:	fff58593          	addi	a1,a1,-1
    numOfBlocks--; // take one block for buddy metadata
    80001f2c:	fff58993          	addi	s3,a1,-1
    buddyAllocator* buddy = (buddyAllocator*)buddyAddr;
    80001f30:	00078913          	mv	s2,a5
    return addr & mask;
    80001f34:	fffff737          	lui	a4,0xfffff
    80001f38:	00e7f733          	and	a4,a5,a4
    return currBlock + BLOCK_SIZE;
    80001f3c:	000016b7          	lui	a3,0x1
    80001f40:	00d70733          	add	a4,a4,a3
    buddy->startAddr = (void*)getNextBlockAddr(buddyAddr);
    80001f44:	00e7b423          	sd	a4,8(a5) # 1008 <_entry-0x7fffeff8>
    buddy->numOfBlocks = numOfBlocks;
    80001f48:	0137b023          	sd	s3,0(a5)
    buddy->numOfFreeBlocks = numOfBlocks;
    80001f4c:	0137b823          	sd	s3,16(a5)
    size_t deg = 0;
    80001f50:	00000793          	li	a5,0
    size_t x = 1;
    80001f54:	00100713          	li	a4,1
    while(x <= num)
    80001f58:	00e9e863          	bltu	s3,a4,80001f68 <_Z10buddy_initPvm+0x74>
        deg++;
    80001f5c:	00178793          	addi	a5,a5,1
        x<<=1;
    80001f60:	00171713          	slli	a4,a4,0x1
    while(x <= num)
    80001f64:	ff5ff06f          	j	80001f58 <_Z10buddy_initPvm+0x64>
    return deg - 1;
    80001f68:	fff78693          	addi	a3,a5,-1
    buddy->maxLevel = getDeg2Floor(numOfBlocks);
    80001f6c:	00d93c23          	sd	a3,24(s2)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80001f70:	00000713          	li	a4,0
    80001f74:	02e6e063          	bltu	a3,a4,80001f94 <_Z10buddy_initPvm+0xa0>
        buddy->bucket[i].first = buddy->bucket[i].last = nullptr;
    80001f78:	00270793          	addi	a5,a4,2 # fffffffffffff002 <end+0xffffffff7fff0d82>
    80001f7c:	00479793          	slli	a5,a5,0x4
    80001f80:	00f907b3          	add	a5,s2,a5
    80001f84:	0007b423          	sd	zero,8(a5)
    80001f88:	0007b023          	sd	zero,0(a5)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80001f8c:	00170713          	addi	a4,a4,1
    80001f90:	fe5ff06f          	j	80001f74 <_Z10buddy_initPvm+0x80>
    for(size_t i = 0;i < numOfBlocks;i++)
    80001f94:	00000493          	li	s1,0
    80001f98:	0334f463          	bgeu	s1,s3,80001fc0 <_Z10buddy_initPvm+0xcc>
        addBlocks(buddy, (block*)buddy->startAddr + i, 1);
    80001f9c:	00893583          	ld	a1,8(s2)
    80001fa0:	00c49793          	slli	a5,s1,0xc
    80001fa4:	00100613          	li	a2,1
    80001fa8:	00f585b3          	add	a1,a1,a5
    80001fac:	00090513          	mv	a0,s2
    80001fb0:	00000097          	auipc	ra,0x0
    80001fb4:	dd4080e7          	jalr	-556(ra) # 80001d84 <_Z9addBlocksP14buddyAllocatorPvm>
    for(size_t i = 0;i < numOfBlocks;i++)
    80001fb8:	00148493          	addi	s1,s1,1
    80001fbc:	fddff06f          	j	80001f98 <_Z10buddy_initPvm+0xa4>
}
    80001fc0:	00090513          	mv	a0,s2
    80001fc4:	02813083          	ld	ra,40(sp)
    80001fc8:	02013403          	ld	s0,32(sp)
    80001fcc:	01813483          	ld	s1,24(sp)
    80001fd0:	01013903          	ld	s2,16(sp)
    80001fd4:	00813983          	ld	s3,8(sp)
    80001fd8:	03010113          	addi	sp,sp,48
    80001fdc:	00008067          	ret

0000000080001fe0 <_Z10buddy_freeP14buddyAllocatorPvm>:
{
    80001fe0:	ff010113          	addi	sp,sp,-16
    80001fe4:	00113423          	sd	ra,8(sp)
    80001fe8:	00813023          	sd	s0,0(sp)
    80001fec:	01010413          	addi	s0,sp,16
    addBlocks(buddy, addr, numOfBlocks);
    80001ff0:	00000097          	auipc	ra,0x0
    80001ff4:	d94080e7          	jalr	-620(ra) # 80001d84 <_Z9addBlocksP14buddyAllocatorPvm>
}
    80001ff8:	00813083          	ld	ra,8(sp)
    80001ffc:	00013403          	ld	s0,0(sp)
    80002000:	01010113          	addi	sp,sp,16
    80002004:	00008067          	ret

0000000080002008 <_ZN8KConsole10initializeEv>:
char KConsole::inputBuffer[bufferSize];
char KConsole::outputBuffer[bufferSize];
uint64 KConsole::pendingPutc = 0;

void KConsole::initialize()
{
    80002008:	fe010113          	addi	sp,sp,-32
    8000200c:	00113c23          	sd	ra,24(sp)
    80002010:	00813823          	sd	s0,16(sp)
    80002014:	00913423          	sd	s1,8(sp)
    80002018:	01213023          	sd	s2,0(sp)
    8000201c:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80002020:	01800513          	li	a0,24
    80002024:	00002097          	auipc	ra,0x2
    80002028:	9f8080e7          	jalr	-1544(ra) # 80003a1c <_ZN10KSemaphorenwEm>
    8000202c:	00050493          	mv	s1,a0
    80002030:	00000593          	li	a1,0
    80002034:	00001097          	auipc	ra,0x1
    80002038:	784080e7          	jalr	1924(ra) # 800037b8 <_ZN10KSemaphoreC1Ei>
    8000203c:	00007797          	auipc	a5,0x7
    80002040:	f497b623          	sd	s1,-180(a5) # 80008f88 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002044:	01800513          	li	a0,24
    80002048:	00002097          	auipc	ra,0x2
    8000204c:	9d4080e7          	jalr	-1580(ra) # 80003a1c <_ZN10KSemaphorenwEm>
    80002050:	00050493          	mv	s1,a0
    80002054:	00000593          	li	a1,0
    80002058:	00001097          	auipc	ra,0x1
    8000205c:	760080e7          	jalr	1888(ra) # 800037b8 <_ZN10KSemaphoreC1Ei>
    80002060:	00007797          	auipc	a5,0x7
    80002064:	f297b823          	sd	s1,-208(a5) # 80008f90 <_ZN8KConsole19hasCharactersOutputE>
}
    80002068:	01813083          	ld	ra,24(sp)
    8000206c:	01013403          	ld	s0,16(sp)
    80002070:	00813483          	ld	s1,8(sp)
    80002074:	00013903          	ld	s2,0(sp)
    80002078:	02010113          	addi	sp,sp,32
    8000207c:	00008067          	ret
    80002080:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80002084:	00048513          	mv	a0,s1
    80002088:	00002097          	auipc	ra,0x2
    8000208c:	a34080e7          	jalr	-1484(ra) # 80003abc <_ZN10KSemaphoredlEPv>
    80002090:	00090513          	mv	a0,s2
    80002094:	0000c097          	auipc	ra,0xc
    80002098:	054080e7          	jalr	84(ra) # 8000e0e8 <_Unwind_Resume>
    8000209c:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    800020a0:	00048513          	mv	a0,s1
    800020a4:	00002097          	auipc	ra,0x2
    800020a8:	a18080e7          	jalr	-1512(ra) # 80003abc <_ZN10KSemaphoredlEPv>
    800020ac:	00090513          	mv	a0,s2
    800020b0:	0000c097          	auipc	ra,0xc
    800020b4:	038080e7          	jalr	56(ra) # 8000e0e8 <_Unwind_Resume>

00000000800020b8 <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    800020b8:	00007697          	auipc	a3,0x7
    800020bc:	ed068693          	addi	a3,a3,-304 # 80008f88 <_ZN8KConsole18hasCharactersInputE>
    800020c0:	0106b603          	ld	a2,16(a3)
    800020c4:	00160793          	addi	a5,a2,1
    800020c8:	00002737          	lui	a4,0x2
    800020cc:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    800020d0:	00e7f7b3          	and	a5,a5,a4
    800020d4:	0186b703          	ld	a4,24(a3)
    800020d8:	04e78263          	beq	a5,a4,8000211c <_ZN8KConsole17putCharacterInputEc+0x64>
{
    800020dc:	ff010113          	addi	sp,sp,-16
    800020e0:	00113423          	sd	ra,8(sp)
    800020e4:	00813023          	sd	s0,0(sp)
    800020e8:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    800020ec:	00009717          	auipc	a4,0x9
    800020f0:	edc70713          	addi	a4,a4,-292 # 8000afc8 <_ZN8KConsole11inputBufferE>
    800020f4:	00c70633          	add	a2,a4,a2
    800020f8:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    800020fc:	00f6b823          	sd	a5,16(a3)
    hasCharactersInput->signal();
    80002100:	0006b503          	ld	a0,0(a3)
    80002104:	00002097          	auipc	ra,0x2
    80002108:	8d0080e7          	jalr	-1840(ra) # 800039d4 <_ZN10KSemaphore6signalEv>
}
    8000210c:	00813083          	ld	ra,8(sp)
    80002110:	00013403          	ld	s0,0(sp)
    80002114:	01010113          	addi	sp,sp,16
    80002118:	00008067          	ret
    8000211c:	00008067          	ret

0000000080002120 <_ZN8KConsole24getCharactersFromConsoleEv>:
    uint64 operation = *(uint8*)CONSOLE_STATUS;
    80002120:	00007797          	auipc	a5,0x7
    80002124:	d787b783          	ld	a5,-648(a5) # 80008e98 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002128:	0007b783          	ld	a5,0(a5)
    8000212c:	0007c783          	lbu	a5,0(a5)
    if(operation & KConsole::STATUS_READ_MASK)
    80002130:	0017f793          	andi	a5,a5,1
    80002134:	02078063          	beqz	a5,80002154 <_ZN8KConsole24getCharactersFromConsoleEv+0x34>
        char c = *(uint8*)CONSOLE_TX_DATA;
    80002138:	00007797          	auipc	a5,0x7
    8000213c:	d807b783          	ld	a5,-640(a5) # 80008eb8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002140:	0007b783          	ld	a5,0(a5)
    80002144:	0007c503          	lbu	a0,0(a5)
        if(KConsole::pendingGetc > 0)
    80002148:	00007797          	auipc	a5,0x7
    8000214c:	e607b783          	ld	a5,-416(a5) # 80008fa8 <_ZN8KConsole11pendingGetcE>
    80002150:	00079463          	bnez	a5,80002158 <_ZN8KConsole24getCharactersFromConsoleEv+0x38>
    80002154:	00008067          	ret
{
    80002158:	ff010113          	addi	sp,sp,-16
    8000215c:	00113423          	sd	ra,8(sp)
    80002160:	00813023          	sd	s0,0(sp)
    80002164:	01010413          	addi	s0,sp,16
            KConsole::pendingGetc--;
    80002168:	fff78793          	addi	a5,a5,-1
    8000216c:	00007717          	auipc	a4,0x7
    80002170:	e2f73e23          	sd	a5,-452(a4) # 80008fa8 <_ZN8KConsole11pendingGetcE>
            KConsole::putCharacterInput(c);
    80002174:	00000097          	auipc	ra,0x0
    80002178:	f44080e7          	jalr	-188(ra) # 800020b8 <_ZN8KConsole17putCharacterInputEc>
}
    8000217c:	00813083          	ld	ra,8(sp)
    80002180:	00013403          	ld	s0,0(sp)
    80002184:	01010113          	addi	sp,sp,16
    80002188:	00008067          	ret

000000008000218c <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    8000218c:	fe010113          	addi	sp,sp,-32
    80002190:	00113c23          	sd	ra,24(sp)
    80002194:	00813823          	sd	s0,16(sp)
    80002198:	00913423          	sd	s1,8(sp)
    8000219c:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    800021a0:	00007497          	auipc	s1,0x7
    800021a4:	de848493          	addi	s1,s1,-536 # 80008f88 <_ZN8KConsole18hasCharactersInputE>
    800021a8:	0004b503          	ld	a0,0(s1)
    800021ac:	00001097          	auipc	ra,0x1
    800021b0:	6b0080e7          	jalr	1712(ra) # 8000385c <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    800021b4:	0184b783          	ld	a5,24(s1)
    800021b8:	0104b703          	ld	a4,16(s1)
    800021bc:	04e78063          	beq	a5,a4,800021fc <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    800021c0:	00009717          	auipc	a4,0x9
    800021c4:	e0870713          	addi	a4,a4,-504 # 8000afc8 <_ZN8KConsole11inputBufferE>
    800021c8:	00f70733          	add	a4,a4,a5
    800021cc:	00074503          	lbu	a0,0(a4)
    inputHead = (inputHead+1)%bufferSize;
    800021d0:	00178793          	addi	a5,a5,1
    800021d4:	00002737          	lui	a4,0x2
    800021d8:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    800021dc:	00e7f7b3          	and	a5,a5,a4
    800021e0:	00007717          	auipc	a4,0x7
    800021e4:	dcf73023          	sd	a5,-576(a4) # 80008fa0 <_ZN8KConsole9inputHeadE>
    return c;
}
    800021e8:	01813083          	ld	ra,24(sp)
    800021ec:	01013403          	ld	s0,16(sp)
    800021f0:	00813483          	ld	s1,8(sp)
    800021f4:	02010113          	addi	sp,sp,32
    800021f8:	00008067          	ret
        return -1;
    800021fc:	0ff00513          	li	a0,255
    80002200:	fe9ff06f          	j	800021e8 <_ZN8KConsole17getCharacterInputEv+0x5c>

0000000080002204 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    80002204:	00007697          	auipc	a3,0x7
    80002208:	d8468693          	addi	a3,a3,-636 # 80008f88 <_ZN8KConsole18hasCharactersInputE>
    8000220c:	0286b603          	ld	a2,40(a3)
    80002210:	00160793          	addi	a5,a2,1
    80002214:	00002737          	lui	a4,0x2
    80002218:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    8000221c:	00e7f7b3          	and	a5,a5,a4
    80002220:	0306b703          	ld	a4,48(a3)
    80002224:	04e78a63          	beq	a5,a4,80002278 <_ZN8KConsole18putCharacterOutputEc+0x74>
{
    80002228:	ff010113          	addi	sp,sp,-16
    8000222c:	00113423          	sd	ra,8(sp)
    80002230:	00813023          	sd	s0,0(sp)
    80002234:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    80002238:	00068713          	mv	a4,a3
    8000223c:	0386b683          	ld	a3,56(a3)
    80002240:	00168693          	addi	a3,a3,1
    80002244:	02d73c23          	sd	a3,56(a4)
    outputBuffer[outputTail] = c;
    80002248:	00007697          	auipc	a3,0x7
    8000224c:	d8068693          	addi	a3,a3,-640 # 80008fc8 <_ZN8KConsole12outputBufferE>
    80002250:	00c68633          	add	a2,a3,a2
    80002254:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    80002258:	02f73423          	sd	a5,40(a4)
    hasCharactersOutput->signal();
    8000225c:	00873503          	ld	a0,8(a4)
    80002260:	00001097          	auipc	ra,0x1
    80002264:	774080e7          	jalr	1908(ra) # 800039d4 <_ZN10KSemaphore6signalEv>
}
    80002268:	00813083          	ld	ra,8(sp)
    8000226c:	00013403          	ld	s0,0(sp)
    80002270:	01010113          	addi	sp,sp,16
    80002274:	00008067          	ret
    80002278:	00008067          	ret

000000008000227c <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    8000227c:	fe010113          	addi	sp,sp,-32
    80002280:	00113c23          	sd	ra,24(sp)
    80002284:	00813823          	sd	s0,16(sp)
    80002288:	00913423          	sd	s1,8(sp)
    8000228c:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    80002290:	00007497          	auipc	s1,0x7
    80002294:	cf848493          	addi	s1,s1,-776 # 80008f88 <_ZN8KConsole18hasCharactersInputE>
    80002298:	0084b503          	ld	a0,8(s1)
    8000229c:	00001097          	auipc	ra,0x1
    800022a0:	5c0080e7          	jalr	1472(ra) # 8000385c <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    800022a4:	0304b783          	ld	a5,48(s1)
    800022a8:	0284b703          	ld	a4,40(s1)
    800022ac:	04e78063          	beq	a5,a4,800022ec <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;
    char c = outputBuffer[outputHead];
    800022b0:	00007717          	auipc	a4,0x7
    800022b4:	d1870713          	addi	a4,a4,-744 # 80008fc8 <_ZN8KConsole12outputBufferE>
    800022b8:	00f70733          	add	a4,a4,a5
    800022bc:	00074503          	lbu	a0,0(a4)
    outputHead = (outputHead+1)%bufferSize;
    800022c0:	00178793          	addi	a5,a5,1
    800022c4:	00002737          	lui	a4,0x2
    800022c8:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    800022cc:	00e7f7b3          	and	a5,a5,a4
    800022d0:	00007717          	auipc	a4,0x7
    800022d4:	cef73423          	sd	a5,-792(a4) # 80008fb8 <_ZN8KConsole10outputHeadE>
    return c;
}
    800022d8:	01813083          	ld	ra,24(sp)
    800022dc:	01013403          	ld	s0,16(sp)
    800022e0:	00813483          	ld	s1,8(sp)
    800022e4:	02010113          	addi	sp,sp,32
    800022e8:	00008067          	ret
        return -1;
    800022ec:	0ff00513          	li	a0,255
    800022f0:	fe9ff06f          	j	800022d8 <_ZN8KConsole18getCharacterOutputEv+0x5c>

00000000800022f4 <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    800022f4:	ff010113          	addi	sp,sp,-16
    800022f8:	00113423          	sd	ra,8(sp)
    800022fc:	00813023          	sd	s0,0(sp)
    80002300:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    80002304:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    80002308:	0ff57513          	andi	a0,a0,255
    8000230c:	00000097          	auipc	ra,0x0
    80002310:	ef8080e7          	jalr	-264(ra) # 80002204 <_ZN8KConsole18putCharacterOutputEc>
}
    80002314:	00813083          	ld	ra,8(sp)
    80002318:	00013403          	ld	s0,0(sp)
    8000231c:	01010113          	addi	sp,sp,16
    80002320:	00008067          	ret

0000000080002324 <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    80002324:	fe010113          	addi	sp,sp,-32
    80002328:	00113c23          	sd	ra,24(sp)
    8000232c:	00813823          	sd	s0,16(sp)
    80002330:	00913423          	sd	s1,8(sp)
    80002334:	02010413          	addi	s0,sp,32
    pendingGetc++;
    80002338:	00007717          	auipc	a4,0x7
    8000233c:	c5070713          	addi	a4,a4,-944 # 80008f88 <_ZN8KConsole18hasCharactersInputE>
    80002340:	02073783          	ld	a5,32(a4)
    80002344:	00178793          	addi	a5,a5,1
    80002348:	02f73023          	sd	a5,32(a4)
    char ch;
    ch = getCharacterInput();
    8000234c:	00000097          	auipc	ra,0x0
    80002350:	e40080e7          	jalr	-448(ra) # 8000218c <_ZN8KConsole17getCharacterInputEv>
    80002354:	00050493          	mv	s1,a0
    if(ch!=0x01b)
    80002358:	01b00793          	li	a5,27
    8000235c:	02f51663          	bne	a0,a5,80002388 <_ZN8KConsole11getcHandlerEv+0x64>
        putCharacterOutput(ch);

    if(ch==13)
    80002360:	00d00793          	li	a5,13
    80002364:	02f48863          	beq	s1,a5,80002394 <_ZN8KConsole11getcHandlerEv+0x70>
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80002368:	00048513          	mv	a0,s1
    Riscv::w_a0_sscratch();
    8000236c:	00001097          	auipc	ra,0x1
    80002370:	c18080e7          	jalr	-1000(ra) # 80002f84 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002374:	01813083          	ld	ra,24(sp)
    80002378:	01013403          	ld	s0,16(sp)
    8000237c:	00813483          	ld	s1,8(sp)
    80002380:	02010113          	addi	sp,sp,32
    80002384:	00008067          	ret
        putCharacterOutput(ch);
    80002388:	00000097          	auipc	ra,0x0
    8000238c:	e7c080e7          	jalr	-388(ra) # 80002204 <_ZN8KConsole18putCharacterOutputEc>
    80002390:	fd1ff06f          	j	80002360 <_ZN8KConsole11getcHandlerEv+0x3c>
        putCharacterOutput(13);
    80002394:	00d00513          	li	a0,13
    80002398:	00000097          	auipc	ra,0x0
    8000239c:	e6c080e7          	jalr	-404(ra) # 80002204 <_ZN8KConsole18putCharacterOutputEc>
        putCharacterOutput(10);
    800023a0:	00a00513          	li	a0,10
    800023a4:	00000097          	auipc	ra,0x0
    800023a8:	e60080e7          	jalr	-416(ra) # 80002204 <_ZN8KConsole18putCharacterOutputEc>
    800023ac:	fbdff06f          	j	80002368 <_ZN8KConsole11getcHandlerEv+0x44>

00000000800023b0 <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    800023b0:	ff010113          	addi	sp,sp,-16
    800023b4:	00813423          	sd	s0,8(sp)
    800023b8:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    800023bc:	00007517          	auipc	a0,0x7
    800023c0:	c0453503          	ld	a0,-1020(a0) # 80008fc0 <_ZN8KConsole11pendingPutcE>
    800023c4:	00153513          	seqz	a0,a0
    800023c8:	00813403          	ld	s0,8(sp)
    800023cc:	01010113          	addi	sp,sp,16
    800023d0:	00008067          	ret

00000000800023d4 <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    800023d4:	fe010113          	addi	sp,sp,-32
    800023d8:	00113c23          	sd	ra,24(sp)
    800023dc:	00813823          	sd	s0,16(sp)
    800023e0:	02010413          	addi	s0,sp,32
    800023e4:	0180006f          	j	800023fc <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>
                thread_exit();
    800023e8:	fffff097          	auipc	ra,0xfffff
    800023ec:	f6c080e7          	jalr	-148(ra) # 80001354 <_Z11thread_exitv>
    800023f0:	0340006f          	j	80002424 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
                thread_dispatch();
    800023f4:	fffff097          	auipc	ra,0xfffff
    800023f8:	f40080e7          	jalr	-192(ra) # 80001334 <_Z15thread_dispatchv>
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    800023fc:	00007797          	auipc	a5,0x7
    80002400:	af47b783          	ld	a5,-1292(a5) # 80008ef0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002404:	0007c783          	lbu	a5,0(a5)
    80002408:	00078e63          	beqz	a5,80002424 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    8000240c:	00000097          	auipc	ra,0x0
    80002410:	fa4080e7          	jalr	-92(ra) # 800023b0 <_ZN8KConsole17outputBufferEmptyEv>
    80002414:	00050863          	beqz	a0,80002424 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80002418:	00007797          	auipc	a5,0x7
    8000241c:	b907b783          	ld	a5,-1136(a5) # 80008fa8 <_ZN8KConsole11pendingGetcE>
    80002420:	fc0784e3          	beqz	a5,800023e8 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 operation = *(uint8*)CONSOLE_STATUS;
    80002424:	00007797          	auipc	a5,0x7
    80002428:	a747b783          	ld	a5,-1420(a5) # 80008e98 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000242c:	0007b783          	ld	a5,0(a5)
    80002430:	0007c783          	lbu	a5,0(a5)
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
    80002434:	0207f793          	andi	a5,a5,32
    80002438:	fa078ee3          	beqz	a5,800023f4 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
    8000243c:	00007797          	auipc	a5,0x7
    80002440:	b847b783          	ld	a5,-1148(a5) # 80008fc0 <_ZN8KConsole11pendingPutcE>
    80002444:	fa0788e3          	beqz	a5,800023f4 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    80002448:	fffff097          	auipc	ra,0xfffff
    8000244c:	114080e7          	jalr	276(ra) # 8000155c <_Z20sysCallGetCharOutputv>
    80002450:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    80002454:	00007717          	auipc	a4,0x7
    80002458:	b3470713          	addi	a4,a4,-1228 # 80008f88 <_ZN8KConsole18hasCharactersInputE>
    8000245c:	03873783          	ld	a5,56(a4)
    80002460:	fff78793          	addi	a5,a5,-1
    80002464:	02f73c23          	sd	a5,56(a4)
                *(uint8*)CONSOLE_RX_DATA = c;
    80002468:	00007797          	auipc	a5,0x7
    8000246c:	a287b783          	ld	a5,-1496(a5) # 80008e90 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002470:	0007b783          	ld	a5,0(a5)
    80002474:	fef44703          	lbu	a4,-17(s0)
    80002478:	00e78023          	sb	a4,0(a5)
    8000247c:	f81ff06f          	j	800023fc <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>

0000000080002480 <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    80002480:	ff010113          	addi	sp,sp,-16
    80002484:	00113423          	sd	ra,8(sp)
    80002488:	00813023          	sd	s0,0(sp)
    8000248c:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    80002490:	00000097          	auipc	ra,0x0
    80002494:	dec080e7          	jalr	-532(ra) # 8000227c <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80002498:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    8000249c:	00001097          	auipc	ra,0x1
    800024a0:	ae8080e7          	jalr	-1304(ra) # 80002f84 <_ZN5Riscv13w_a0_sscratchEv>
}
    800024a4:	00813083          	ld	ra,8(sp)
    800024a8:	00013403          	ld	s0,0(sp)
    800024ac:	01010113          	addi	sp,sp,16
    800024b0:	00008067          	ret

00000000800024b4 <_ZN8KConsole15trapPrintStringEPKc>:

void KConsole::trapPrintString(const char *string)
{
    800024b4:	fe010113          	addi	sp,sp,-32
    800024b8:	00113c23          	sd	ra,24(sp)
    800024bc:	00813823          	sd	s0,16(sp)
    800024c0:	00913423          	sd	s1,8(sp)
    800024c4:	02010413          	addi	s0,sp,32
    800024c8:	00050493          	mv	s1,a0
    while (*string != '\0')
    800024cc:	0004c503          	lbu	a0,0(s1)
    800024d0:	00050a63          	beqz	a0,800024e4 <_ZN8KConsole15trapPrintStringEPKc+0x30>
    {
        KConsole::putCharacterOutput(*string);
    800024d4:	00000097          	auipc	ra,0x0
    800024d8:	d30080e7          	jalr	-720(ra) # 80002204 <_ZN8KConsole18putCharacterOutputEc>
        string++;
    800024dc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800024e0:	fedff06f          	j	800024cc <_ZN8KConsole15trapPrintStringEPKc+0x18>
    }
}
    800024e4:	01813083          	ld	ra,24(sp)
    800024e8:	01013403          	ld	s0,16(sp)
    800024ec:	00813483          	ld	s1,8(sp)
    800024f0:	02010113          	addi	sp,sp,32
    800024f4:	00008067          	ret

00000000800024f8 <_ZN8KConsole12trapPrintIntEiii>:

void KConsole::trapPrintInt(int xx, int base, int sgn)
{
    800024f8:	fb010113          	addi	sp,sp,-80
    800024fc:	04113423          	sd	ra,72(sp)
    80002500:	04813023          	sd	s0,64(sp)
    80002504:	02913c23          	sd	s1,56(sp)
    80002508:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    8000250c:	00005797          	auipc	a5,0x5
    80002510:	b1478793          	addi	a5,a5,-1260 # 80007020 <CONSOLE_STATUS+0x10>
    80002514:	0007b703          	ld	a4,0(a5)
    80002518:	fce43423          	sd	a4,-56(s0)
    8000251c:	0087b703          	ld	a4,8(a5)
    80002520:	fce43823          	sd	a4,-48(s0)
    80002524:	0107c783          	lbu	a5,16(a5)
    80002528:	fcf40c23          	sb	a5,-40(s0)
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0) {
    8000252c:	00060463          	beqz	a2,80002534 <_ZN8KConsole12trapPrintIntEiii+0x3c>
    80002530:	08054263          	bltz	a0,800025b4 <_ZN8KConsole12trapPrintIntEiii+0xbc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002534:	0005051b          	sext.w	a0,a0
    neg = 0;
    80002538:	00000813          	li	a6,0
    }

    i = 0;
    8000253c:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80002540:	0005871b          	sext.w	a4,a1
    80002544:	02b577bb          	remuw	a5,a0,a1
    80002548:	00048693          	mv	a3,s1
    8000254c:	0014849b          	addiw	s1,s1,1
    80002550:	02079793          	slli	a5,a5,0x20
    80002554:	0207d793          	srli	a5,a5,0x20
    80002558:	fe040613          	addi	a2,s0,-32
    8000255c:	00f607b3          	add	a5,a2,a5
    80002560:	fe87c603          	lbu	a2,-24(a5)
    80002564:	fe040793          	addi	a5,s0,-32
    80002568:	00d787b3          	add	a5,a5,a3
    8000256c:	fcc78c23          	sb	a2,-40(a5)
    }while((x /= base) != 0);
    80002570:	0005061b          	sext.w	a2,a0
    80002574:	02b5553b          	divuw	a0,a0,a1
    80002578:	fce674e3          	bgeu	a2,a4,80002540 <_ZN8KConsole12trapPrintIntEiii+0x48>
    if(neg)
    8000257c:	00080c63          	beqz	a6,80002594 <_ZN8KConsole12trapPrintIntEiii+0x9c>
        buf[i++] = '-';
    80002580:	fe040793          	addi	a5,s0,-32
    80002584:	009784b3          	add	s1,a5,s1
    80002588:	02d00793          	li	a5,45
    8000258c:	fcf48c23          	sb	a5,-40(s1)
    80002590:	0026849b          	addiw	s1,a3,2

    while(--i >= 0)
    80002594:	fff4849b          	addiw	s1,s1,-1
    80002598:	0204c463          	bltz	s1,800025c0 <_ZN8KConsole12trapPrintIntEiii+0xc8>
        KConsole::putCharacterOutput(buf[i]);
    8000259c:	fe040793          	addi	a5,s0,-32
    800025a0:	009787b3          	add	a5,a5,s1
    800025a4:	fd87c503          	lbu	a0,-40(a5)
    800025a8:	00000097          	auipc	ra,0x0
    800025ac:	c5c080e7          	jalr	-932(ra) # 80002204 <_ZN8KConsole18putCharacterOutputEc>
    800025b0:	fe5ff06f          	j	80002594 <_ZN8KConsole12trapPrintIntEiii+0x9c>
        x = -xx;
    800025b4:	40a0053b          	negw	a0,a0
        neg = 1;
    800025b8:	00100813          	li	a6,1
        x = -xx;
    800025bc:	f81ff06f          	j	8000253c <_ZN8KConsole12trapPrintIntEiii+0x44>
}
    800025c0:	04813083          	ld	ra,72(sp)
    800025c4:	04013403          	ld	s0,64(sp)
    800025c8:	03813483          	ld	s1,56(sp)
    800025cc:	05010113          	addi	sp,sp,80
    800025d0:	00008067          	ret

00000000800025d4 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/Riscv.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    800025d4:	ff010113          	addi	sp,sp,-16
    800025d8:	00813423          	sd	s0,8(sp)
    800025dc:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    800025e0:	00007797          	auipc	a5,0x7
    800025e4:	9187b783          	ld	a5,-1768(a5) # 80008ef8 <_GLOBAL_OFFSET_TABLE_+0x70>
    800025e8:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    800025ec:	00500793          	li	a5,5
    800025f0:	04f62023          	sw	a5,64(a2)
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    800025f4:	0000b797          	auipc	a5,0xb
    800025f8:	9d47b783          	ld	a5,-1580(a5) # 8000cfc8 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    800025fc:	00000593          	li	a1,0
    while(curr != 0)
    80002600:	02078063          	beqz	a5,80002620 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80002604:	02063683          	ld	a3,32(a2)
    80002608:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    8000260c:	00e6e863          	bltu	a3,a4,8000261c <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80002610:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80002614:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80002618:	fe9ff06f          	j	80002600 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    8000261c:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    80002620:	00058a63          	beqz	a1,80002634 <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    80002624:	00c5b423          	sd	a2,8(a1)
}
    80002628:	00813403          	ld	s0,8(sp)
    8000262c:	01010113          	addi	sp,sp,16
    80002630:	00008067          	ret
        sleepingPCBHead = PCB::running;
    80002634:	0000b797          	auipc	a5,0xb
    80002638:	98c7ba23          	sd	a2,-1644(a5) # 8000cfc8 <_ZN12SleepPCBList15sleepingPCBHeadE>
    8000263c:	fedff06f          	j	80002628 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

0000000080002640 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    PCB* curr = sleepingPCBHead;
    80002640:	0000b517          	auipc	a0,0xb
    80002644:	98853503          	ld	a0,-1656(a0) # 8000cfc8 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80002648:	06050e63          	beqz	a0,800026c4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
        return;

    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    8000264c:	06050c63          	beqz	a0,800026c4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80002650:	02053783          	ld	a5,32(a0)
    80002654:	00007717          	auipc	a4,0x7
    80002658:	87c73703          	ld	a4,-1924(a4) # 80008ed0 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000265c:	00073703          	ld	a4,0(a4)
    80002660:	06f76263          	bltu	a4,a5,800026c4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    80002664:	fe010113          	addi	sp,sp,-32
    80002668:	00113c23          	sd	ra,24(sp)
    8000266c:	00813823          	sd	s0,16(sp)
    80002670:	00913423          	sd	s1,8(sp)
    80002674:	02010413          	addi	s0,sp,32
    80002678:	0180006f          	j	80002690 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    8000267c:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80002680:	00007717          	auipc	a4,0x7
    80002684:	85073703          	ld	a4,-1968(a4) # 80008ed0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002688:	00073703          	ld	a4,0(a4)
    8000268c:	02f76263          	bltu	a4,a5,800026b0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    80002690:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    80002694:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    80002698:	00000097          	auipc	ra,0x0
    8000269c:	0b8080e7          	jalr	184(ra) # 80002750 <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    800026a0:	0000b797          	auipc	a5,0xb
    800026a4:	9297b423          	sd	s1,-1752(a5) # 8000cfc8 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    800026a8:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800026ac:	fc0498e3          	bnez	s1,8000267c <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    800026b0:	01813083          	ld	ra,24(sp)
    800026b4:	01013403          	ld	s0,16(sp)
    800026b8:	00813483          	ld	s1,8(sp)
    800026bc:	02010113          	addi	sp,sp,32
    800026c0:	00008067          	ret
    800026c4:	00008067          	ret

00000000800026c8 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    800026c8:	ff010113          	addi	sp,sp,-16
    800026cc:	00113423          	sd	ra,8(sp)
    800026d0:	00813023          	sd	s0,0(sp)
    800026d4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    800026d8:	00001097          	auipc	ra,0x1
    800026dc:	01c080e7          	jalr	28(ra) # 800036f4 <_ZN15MemoryAllocator7kmallocEm>
}
    800026e0:	00813083          	ld	ra,8(sp)
    800026e4:	00013403          	ld	s0,0(sp)
    800026e8:	01010113          	addi	sp,sp,16
    800026ec:	00008067          	ret

00000000800026f0 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    800026f0:	ff010113          	addi	sp,sp,-16
    800026f4:	00113423          	sd	ra,8(sp)
    800026f8:	00813023          	sd	s0,0(sp)
    800026fc:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80002700:	00001097          	auipc	ra,0x1
    80002704:	058080e7          	jalr	88(ra) # 80003758 <_ZN15MemoryAllocator5kfreeEPv>
}
    80002708:	00813083          	ld	ra,8(sp)
    8000270c:	00013403          	ld	s0,0(sp)
    80002710:	01010113          	addi	sp,sp,16
    80002714:	00008067          	ret

0000000080002718 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80002718:	ff010113          	addi	sp,sp,-16
    8000271c:	00813423          	sd	s0,8(sp)
    80002720:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80002724:	0000b797          	auipc	a5,0xb
    80002728:	8ac7b783          	ld	a5,-1876(a5) # 8000cfd0 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    8000272c:	00000513          	li	a0,0
    while(curr != 0)
    80002730:	00078863          	beqz	a5,80002740 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80002734:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80002738:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    8000273c:	ff5ff06f          	j	80002730 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80002740:	0005051b          	sext.w	a0,a0
    80002744:	00813403          	ld	s0,8(sp)
    80002748:	01010113          	addi	sp,sp,16
    8000274c:	00008067          	ret

0000000080002750 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80002750:	ff010113          	addi	sp,sp,-16
    80002754:	00813423          	sd	s0,8(sp)
    80002758:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    8000275c:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    80002760:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    80002764:	0000b797          	auipc	a5,0xb
    80002768:	86c7b783          	ld	a5,-1940(a5) # 8000cfd0 <_ZN9Scheduler16schedulerPCBHeadE>
    8000276c:	02078263          	beqz	a5,80002790 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80002770:	0000b797          	auipc	a5,0xb
    80002774:	86078793          	addi	a5,a5,-1952 # 8000cfd0 <_ZN9Scheduler16schedulerPCBHeadE>
    80002778:	0087b703          	ld	a4,8(a5)
    8000277c:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    80002780:	00a7b423          	sd	a0,8(a5)
    }
}
    80002784:	00813403          	ld	s0,8(sp)
    80002788:	01010113          	addi	sp,sp,16
    8000278c:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80002790:	0000b797          	auipc	a5,0xb
    80002794:	84078793          	addi	a5,a5,-1984 # 8000cfd0 <_ZN9Scheduler16schedulerPCBHeadE>
    80002798:	00a7b423          	sd	a0,8(a5)
    8000279c:	00a7b023          	sd	a0,0(a5)
    800027a0:	fe5ff06f          	j	80002784 <_ZN9Scheduler3putEP3PCB+0x34>

00000000800027a4 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    800027a4:	ff010113          	addi	sp,sp,-16
    800027a8:	00813423          	sd	s0,8(sp)
    800027ac:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    800027b0:	0000b517          	auipc	a0,0xb
    800027b4:	82053503          	ld	a0,-2016(a0) # 8000cfd0 <_ZN9Scheduler16schedulerPCBHeadE>
    800027b8:	00050c63          	beqz	a0,800027d0 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    800027bc:	00853783          	ld	a5,8(a0)
    800027c0:	00078e63          	beqz	a5,800027dc <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    800027c4:	0000b717          	auipc	a4,0xb
    800027c8:	80f73623          	sd	a5,-2036(a4) # 8000cfd0 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    800027cc:	00053423          	sd	zero,8(a0)
    return retval;
}
    800027d0:	00813403          	ld	s0,8(sp)
    800027d4:	01010113          	addi	sp,sp,16
    800027d8:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    800027dc:	0000a797          	auipc	a5,0xa
    800027e0:	7f478793          	addi	a5,a5,2036 # 8000cfd0 <_ZN9Scheduler16schedulerPCBHeadE>
    800027e4:	0007b423          	sd	zero,8(a5)
    800027e8:	0007b023          	sd	zero,0(a5)
    800027ec:	fe1ff06f          	j	800027cc <_ZN9Scheduler3getEv+0x28>

00000000800027f0 <_ZN9Scheduler5printEv>:

void Scheduler::print()
{
    800027f0:	fe010113          	addi	sp,sp,-32
    800027f4:	00113c23          	sd	ra,24(sp)
    800027f8:	00813823          	sd	s0,16(sp)
    800027fc:	00913423          	sd	s1,8(sp)
    80002800:	02010413          	addi	s0,sp,32
    //trapPrintString("Scheduler print\n");
    PCB* curr = schedulerPCBHead;
    80002804:	0000a497          	auipc	s1,0xa
    80002808:	7cc4b483          	ld	s1,1996(s1) # 8000cfd0 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    8000280c:	02048863          	beqz	s1,8000283c <_ZN9Scheduler5printEv+0x4c>
    {
        KConsole::trapPrintInt((uint64)curr, 16);
    80002810:	00000613          	li	a2,0
    80002814:	01000593          	li	a1,16
    80002818:	0004851b          	sext.w	a0,s1
    8000281c:	00000097          	auipc	ra,0x0
    80002820:	cdc080e7          	jalr	-804(ra) # 800024f8 <_ZN8KConsole12trapPrintIntEiii>
        KConsole::trapPrintString("\n");
    80002824:	00005517          	auipc	a0,0x5
    80002828:	b4450513          	addi	a0,a0,-1212 # 80007368 <CONSOLE_STATUS+0x358>
    8000282c:	00000097          	auipc	ra,0x0
    80002830:	c88080e7          	jalr	-888(ra) # 800024b4 <_ZN8KConsole15trapPrintStringEPKc>
        curr = curr->nextPCB;
    80002834:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80002838:	fd5ff06f          	j	8000280c <_ZN9Scheduler5printEv+0x1c>
    }
}
    8000283c:	01813083          	ld	ra,24(sp)
    80002840:	01013403          	ld	s0,16(sp)
    80002844:	00813483          	ld	s1,8(sp)
    80002848:	02010113          	addi	sp,sp,32
    8000284c:	00008067          	ret

0000000080002850 <main>:
#include "../h/Riscv.hpp"

void main()
{
    80002850:	ff010113          	addi	sp,sp,-16
    80002854:	00113423          	sd	ra,8(sp)
    80002858:	00813023          	sd	s0,0(sp)
    8000285c:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    80002860:	00000097          	auipc	ra,0x0
    80002864:	664080e7          	jalr	1636(ra) # 80002ec4 <_ZN5Riscv10kernelMainEv>
    80002868:	00813083          	ld	ra,8(sp)
    8000286c:	00013403          	ld	s0,0(sp)
    80002870:	01010113          	addi	sp,sp,16
    80002874:	00008067          	ret

0000000080002878 <_ZN6Thread6runnerEPv>:
    myHandle = 0;
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    80002878:	ff010113          	addi	sp,sp,-16
    8000287c:	00113423          	sd	ra,8(sp)
    80002880:	00813023          	sd	s0,0(sp)
    80002884:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    80002888:	00053783          	ld	a5,0(a0)
    8000288c:	0107b783          	ld	a5,16(a5)
    80002890:	000780e7          	jalr	a5
}
    80002894:	00813083          	ld	ra,8(sp)
    80002898:	00013403          	ld	s0,0(sp)
    8000289c:	01010113          	addi	sp,sp,16
    800028a0:	00008067          	ret

00000000800028a4 <_ZN6ThreadD1Ev>:

Thread::~Thread()
    800028a4:	00006797          	auipc	a5,0x6
    800028a8:	59478793          	addi	a5,a5,1428 # 80008e38 <_ZTV6Thread+0x10>
    800028ac:	00f53023          	sd	a5,0(a0)
{
    delete myHandle;
    800028b0:	00853503          	ld	a0,8(a0)
    800028b4:	02050663          	beqz	a0,800028e0 <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread()
    800028b8:	ff010113          	addi	sp,sp,-16
    800028bc:	00113423          	sd	ra,8(sp)
    800028c0:	00813023          	sd	s0,0(sp)
    800028c4:	01010413          	addi	s0,sp,16
    delete myHandle;
    800028c8:	fffff097          	auipc	ra,0xfffff
    800028cc:	ce8080e7          	jalr	-792(ra) # 800015b0 <_ZN7_threaddlEPv>
}
    800028d0:	00813083          	ld	ra,8(sp)
    800028d4:	00013403          	ld	s0,0(sp)
    800028d8:	01010113          	addi	sp,sp,16
    800028dc:	00008067          	ret
    800028e0:	00008067          	ret

00000000800028e4 <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    800028e4:	00006797          	auipc	a5,0x6
    800028e8:	57c78793          	addi	a5,a5,1404 # 80008e60 <_ZTV9Semaphore+0x10>
    800028ec:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    800028f0:	00853503          	ld	a0,8(a0)
    800028f4:	02050663          	beqz	a0,80002920 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    800028f8:	ff010113          	addi	sp,sp,-16
    800028fc:	00113423          	sd	ra,8(sp)
    80002900:	00813023          	sd	s0,0(sp)
    80002904:	01010413          	addi	s0,sp,16
    delete myHandle;
    80002908:	00000097          	auipc	ra,0x0
    8000290c:	464080e7          	jalr	1124(ra) # 80002d6c <_ZN4_semdlEPv>
}
    80002910:	00813083          	ld	ra,8(sp)
    80002914:	00013403          	ld	s0,0(sp)
    80002918:	01010113          	addi	sp,sp,16
    8000291c:	00008067          	ret
    80002920:	00008067          	ret

0000000080002924 <_Znwm>:
{
    80002924:	ff010113          	addi	sp,sp,-16
    80002928:	00113423          	sd	ra,8(sp)
    8000292c:	00813023          	sd	s0,0(sp)
    80002930:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002934:	fffff097          	auipc	ra,0xfffff
    80002938:	924080e7          	jalr	-1756(ra) # 80001258 <_Z9mem_allocm>
}
    8000293c:	00813083          	ld	ra,8(sp)
    80002940:	00013403          	ld	s0,0(sp)
    80002944:	01010113          	addi	sp,sp,16
    80002948:	00008067          	ret

000000008000294c <_ZdlPv>:
{
    8000294c:	ff010113          	addi	sp,sp,-16
    80002950:	00113423          	sd	ra,8(sp)
    80002954:	00813023          	sd	s0,0(sp)
    80002958:	01010413          	addi	s0,sp,16
    mem_free(p);
    8000295c:	fffff097          	auipc	ra,0xfffff
    80002960:	92c080e7          	jalr	-1748(ra) # 80001288 <_Z8mem_freePv>
}
    80002964:	00813083          	ld	ra,8(sp)
    80002968:	00013403          	ld	s0,0(sp)
    8000296c:	01010113          	addi	sp,sp,16
    80002970:	00008067          	ret

0000000080002974 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    80002974:	fe010113          	addi	sp,sp,-32
    80002978:	00113c23          	sd	ra,24(sp)
    8000297c:	00813823          	sd	s0,16(sp)
    80002980:	00913423          	sd	s1,8(sp)
    80002984:	02010413          	addi	s0,sp,32
    80002988:	00050493          	mv	s1,a0
}
    8000298c:	00000097          	auipc	ra,0x0
    80002990:	f18080e7          	jalr	-232(ra) # 800028a4 <_ZN6ThreadD1Ev>
    80002994:	00048513          	mv	a0,s1
    80002998:	00000097          	auipc	ra,0x0
    8000299c:	fb4080e7          	jalr	-76(ra) # 8000294c <_ZdlPv>
    800029a0:	01813083          	ld	ra,24(sp)
    800029a4:	01013403          	ld	s0,16(sp)
    800029a8:	00813483          	ld	s1,8(sp)
    800029ac:	02010113          	addi	sp,sp,32
    800029b0:	00008067          	ret

00000000800029b4 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800029b4:	fe010113          	addi	sp,sp,-32
    800029b8:	00113c23          	sd	ra,24(sp)
    800029bc:	00813823          	sd	s0,16(sp)
    800029c0:	00913423          	sd	s1,8(sp)
    800029c4:	02010413          	addi	s0,sp,32
    800029c8:	00050493          	mv	s1,a0
}
    800029cc:	00000097          	auipc	ra,0x0
    800029d0:	f18080e7          	jalr	-232(ra) # 800028e4 <_ZN9SemaphoreD1Ev>
    800029d4:	00048513          	mv	a0,s1
    800029d8:	00000097          	auipc	ra,0x0
    800029dc:	f74080e7          	jalr	-140(ra) # 8000294c <_ZdlPv>
    800029e0:	01813083          	ld	ra,24(sp)
    800029e4:	01013403          	ld	s0,16(sp)
    800029e8:	00813483          	ld	s1,8(sp)
    800029ec:	02010113          	addi	sp,sp,32
    800029f0:	00008067          	ret

00000000800029f4 <_ZN6Thread5startEv>:
    if(myHandle != 0)
    800029f4:	00853503          	ld	a0,8(a0)
    800029f8:	02050663          	beqz	a0,80002a24 <_ZN6Thread5startEv+0x30>
{
    800029fc:	ff010113          	addi	sp,sp,-16
    80002a00:	00113423          	sd	ra,8(sp)
    80002a04:	00813023          	sd	s0,0(sp)
    80002a08:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    80002a0c:	fffff097          	auipc	ra,0xfffff
    80002a10:	a58080e7          	jalr	-1448(ra) # 80001464 <_Z12thread_startPv>
}
    80002a14:	00813083          	ld	ra,8(sp)
    80002a18:	00013403          	ld	s0,0(sp)
    80002a1c:	01010113          	addi	sp,sp,16
    80002a20:	00008067          	ret
        return -1;
    80002a24:	fff00513          	li	a0,-1
}
    80002a28:	00008067          	ret

0000000080002a2c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002a2c:	ff010113          	addi	sp,sp,-16
    80002a30:	00113423          	sd	ra,8(sp)
    80002a34:	00813023          	sd	s0,0(sp)
    80002a38:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002a3c:	fffff097          	auipc	ra,0xfffff
    80002a40:	8f8080e7          	jalr	-1800(ra) # 80001334 <_Z15thread_dispatchv>
}
    80002a44:	00813083          	ld	ra,8(sp)
    80002a48:	00013403          	ld	s0,0(sp)
    80002a4c:	01010113          	addi	sp,sp,16
    80002a50:	00008067          	ret

0000000080002a54 <_ZN6Thread5sleepEm>:
{
    80002a54:	ff010113          	addi	sp,sp,-16
    80002a58:	00113423          	sd	ra,8(sp)
    80002a5c:	00813023          	sd	s0,0(sp)
    80002a60:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80002a64:	fffff097          	auipc	ra,0xfffff
    80002a68:	9d4080e7          	jalr	-1580(ra) # 80001438 <_Z10time_sleepm>
}
    80002a6c:	00813083          	ld	ra,8(sp)
    80002a70:	00013403          	ld	s0,0(sp)
    80002a74:	01010113          	addi	sp,sp,16
    80002a78:	00008067          	ret

0000000080002a7c <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    80002a7c:	fe010113          	addi	sp,sp,-32
    80002a80:	00113c23          	sd	ra,24(sp)
    80002a84:	00813823          	sd	s0,16(sp)
    80002a88:	00913423          	sd	s1,8(sp)
    80002a8c:	01213023          	sd	s2,0(sp)
    80002a90:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    80002a94:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    80002a98:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    80002a9c:	0004b783          	ld	a5,0(s1)
    80002aa0:	0187b783          	ld	a5,24(a5)
    80002aa4:	00048513          	mv	a0,s1
    80002aa8:	000780e7          	jalr	a5
        Thread::sleep(time);
    80002aac:	00090513          	mv	a0,s2
    80002ab0:	00000097          	auipc	ra,0x0
    80002ab4:	fa4080e7          	jalr	-92(ra) # 80002a54 <_ZN6Thread5sleepEm>
    while(true)
    80002ab8:	fe5ff06f          	j	80002a9c <_ZN14PeriodicThread6runnerEPv+0x20>

0000000080002abc <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    80002abc:	ff010113          	addi	sp,sp,-16
    80002ac0:	00113423          	sd	ra,8(sp)
    80002ac4:	00813023          	sd	s0,0(sp)
    80002ac8:	01010413          	addi	s0,sp,16
    80002acc:	00006797          	auipc	a5,0x6
    80002ad0:	36c78793          	addi	a5,a5,876 # 80008e38 <_ZTV6Thread+0x10>
    80002ad4:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80002ad8:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, body, args);
    80002adc:	00850513          	addi	a0,a0,8
    80002ae0:	fffff097          	auipc	ra,0xfffff
    80002ae4:	9b0080e7          	jalr	-1616(ra) # 80001490 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    80002ae8:	00813083          	ld	ra,8(sp)
    80002aec:	00013403          	ld	s0,0(sp)
    80002af0:	01010113          	addi	sp,sp,16
    80002af4:	00008067          	ret

0000000080002af8 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80002af8:	ff010113          	addi	sp,sp,-16
    80002afc:	00113423          	sd	ra,8(sp)
    80002b00:	00813023          	sd	s0,0(sp)
    80002b04:	01010413          	addi	s0,sp,16
    80002b08:	00006797          	auipc	a5,0x6
    80002b0c:	33078793          	addi	a5,a5,816 # 80008e38 <_ZTV6Thread+0x10>
    80002b10:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80002b14:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    80002b18:	00050613          	mv	a2,a0
    80002b1c:	00000597          	auipc	a1,0x0
    80002b20:	d5c58593          	addi	a1,a1,-676 # 80002878 <_ZN6Thread6runnerEPv>
    80002b24:	00850513          	addi	a0,a0,8
    80002b28:	fffff097          	auipc	ra,0xfffff
    80002b2c:	968080e7          	jalr	-1688(ra) # 80001490 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    80002b30:	00813083          	ld	ra,8(sp)
    80002b34:	00013403          	ld	s0,0(sp)
    80002b38:	01010113          	addi	sp,sp,16
    80002b3c:	00008067          	ret

0000000080002b40 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    80002b40:	00853503          	ld	a0,8(a0)
    80002b44:	02050663          	beqz	a0,80002b70 <_ZN9Semaphore4waitEv+0x30>
{
    80002b48:	ff010113          	addi	sp,sp,-16
    80002b4c:	00113423          	sd	ra,8(sp)
    80002b50:	00813023          	sd	s0,0(sp)
    80002b54:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002b58:	fffff097          	auipc	ra,0xfffff
    80002b5c:	888080e7          	jalr	-1912(ra) # 800013e0 <_Z8sem_waitP4_sem>
}
    80002b60:	00813083          	ld	ra,8(sp)
    80002b64:	00013403          	ld	s0,0(sp)
    80002b68:	01010113          	addi	sp,sp,16
    80002b6c:	00008067          	ret
        return -1;
    80002b70:	fff00513          	li	a0,-1
}
    80002b74:	00008067          	ret

0000000080002b78 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    80002b78:	fe010113          	addi	sp,sp,-32
    80002b7c:	00113c23          	sd	ra,24(sp)
    80002b80:	00813823          	sd	s0,16(sp)
    80002b84:	00913423          	sd	s1,8(sp)
    80002b88:	02010413          	addi	s0,sp,32
    80002b8c:	00050493          	mv	s1,a0
    80002b90:	00006797          	auipc	a5,0x6
    80002b94:	2d078793          	addi	a5,a5,720 # 80008e60 <_ZTV9Semaphore+0x10>
    80002b98:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    80002b9c:	00850513          	addi	a0,a0,8
    80002ba0:	ffffe097          	auipc	ra,0xffffe
    80002ba4:	7dc080e7          	jalr	2012(ra) # 8000137c <_Z8sem_openPP4_semj>
    if(retval != 0)
    80002ba8:	00050463          	beqz	a0,80002bb0 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    80002bac:	0004b423          	sd	zero,8(s1)
}
    80002bb0:	01813083          	ld	ra,24(sp)
    80002bb4:	01013403          	ld	s0,16(sp)
    80002bb8:	00813483          	ld	s1,8(sp)
    80002bbc:	02010113          	addi	sp,sp,32
    80002bc0:	00008067          	ret

0000000080002bc4 <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    80002bc4:	00853503          	ld	a0,8(a0)
    80002bc8:	02050663          	beqz	a0,80002bf4 <_ZN9Semaphore6signalEv+0x30>
{
    80002bcc:	ff010113          	addi	sp,sp,-16
    80002bd0:	00113423          	sd	ra,8(sp)
    80002bd4:	00813023          	sd	s0,0(sp)
    80002bd8:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002bdc:	fffff097          	auipc	ra,0xfffff
    80002be0:	830080e7          	jalr	-2000(ra) # 8000140c <_Z10sem_signalP4_sem>
}
    80002be4:	00813083          	ld	ra,8(sp)
    80002be8:	00013403          	ld	s0,0(sp)
    80002bec:	01010113          	addi	sp,sp,16
    80002bf0:	00008067          	ret
        return -1;
    80002bf4:	fff00513          	li	a0,-1
}
    80002bf8:	00008067          	ret

0000000080002bfc <_ZN7Console4getcEv>:
{
    80002bfc:	ff010113          	addi	sp,sp,-16
    80002c00:	00113423          	sd	ra,8(sp)
    80002c04:	00813023          	sd	s0,0(sp)
    80002c08:	01010413          	addi	s0,sp,16
    return ::getc();
    80002c0c:	fffff097          	auipc	ra,0xfffff
    80002c10:	904080e7          	jalr	-1788(ra) # 80001510 <_Z4getcv>
}
    80002c14:	00813083          	ld	ra,8(sp)
    80002c18:	00013403          	ld	s0,0(sp)
    80002c1c:	01010113          	addi	sp,sp,16
    80002c20:	00008067          	ret

0000000080002c24 <_ZN7Console4putcEc>:
{
    80002c24:	ff010113          	addi	sp,sp,-16
    80002c28:	00113423          	sd	ra,8(sp)
    80002c2c:	00813023          	sd	s0,0(sp)
    80002c30:	01010413          	addi	s0,sp,16
    return ::putc(c);
    80002c34:	fffff097          	auipc	ra,0xfffff
    80002c38:	904080e7          	jalr	-1788(ra) # 80001538 <_Z4putcc>
}
    80002c3c:	00813083          	ld	ra,8(sp)
    80002c40:	00013403          	ld	s0,0(sp)
    80002c44:	01010113          	addi	sp,sp,16
    80002c48:	00008067          	ret

0000000080002c4c <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80002c4c:	fe010113          	addi	sp,sp,-32
    80002c50:	00113c23          	sd	ra,24(sp)
    80002c54:	00813823          	sd	s0,16(sp)
    80002c58:	00913423          	sd	s1,8(sp)
    80002c5c:	01213023          	sd	s2,0(sp)
    80002c60:	02010413          	addi	s0,sp,32
    80002c64:	00050493          	mv	s1,a0
    80002c68:	00058913          	mv	s2,a1
    80002c6c:	01000513          	li	a0,16
    80002c70:	00000097          	auipc	ra,0x0
    80002c74:	cb4080e7          	jalr	-844(ra) # 80002924 <_Znwm>
    80002c78:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    80002c7c:	00953023          	sd	s1,0(a0)
    80002c80:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80002c84:	00000597          	auipc	a1,0x0
    80002c88:	df858593          	addi	a1,a1,-520 # 80002a7c <_ZN14PeriodicThread6runnerEPv>
    80002c8c:	00048513          	mv	a0,s1
    80002c90:	00000097          	auipc	ra,0x0
    80002c94:	e2c080e7          	jalr	-468(ra) # 80002abc <_ZN6ThreadC1EPFvPvES0_>
    80002c98:	00006797          	auipc	a5,0x6
    80002c9c:	17078793          	addi	a5,a5,368 # 80008e08 <_ZTV14PeriodicThread+0x10>
    80002ca0:	00f4b023          	sd	a5,0(s1)
}
    80002ca4:	01813083          	ld	ra,24(sp)
    80002ca8:	01013403          	ld	s0,16(sp)
    80002cac:	00813483          	ld	s1,8(sp)
    80002cb0:	00013903          	ld	s2,0(sp)
    80002cb4:	02010113          	addi	sp,sp,32
    80002cb8:	00008067          	ret

0000000080002cbc <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80002cbc:	ff010113          	addi	sp,sp,-16
    80002cc0:	00813423          	sd	s0,8(sp)
    80002cc4:	01010413          	addi	s0,sp,16
    80002cc8:	00813403          	ld	s0,8(sp)
    80002ccc:	01010113          	addi	sp,sp,16
    80002cd0:	00008067          	ret

0000000080002cd4 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    80002cd4:	ff010113          	addi	sp,sp,-16
    80002cd8:	00813423          	sd	s0,8(sp)
    80002cdc:	01010413          	addi	s0,sp,16
    80002ce0:	00813403          	ld	s0,8(sp)
    80002ce4:	01010113          	addi	sp,sp,16
    80002ce8:	00008067          	ret

0000000080002cec <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    80002cec:	ff010113          	addi	sp,sp,-16
    80002cf0:	00113423          	sd	ra,8(sp)
    80002cf4:	00813023          	sd	s0,0(sp)
    80002cf8:	01010413          	addi	s0,sp,16
    80002cfc:	00006797          	auipc	a5,0x6
    80002d00:	10c78793          	addi	a5,a5,268 # 80008e08 <_ZTV14PeriodicThread+0x10>
    80002d04:	00f53023          	sd	a5,0(a0)
    80002d08:	00000097          	auipc	ra,0x0
    80002d0c:	b9c080e7          	jalr	-1124(ra) # 800028a4 <_ZN6ThreadD1Ev>
    80002d10:	00813083          	ld	ra,8(sp)
    80002d14:	00013403          	ld	s0,0(sp)
    80002d18:	01010113          	addi	sp,sp,16
    80002d1c:	00008067          	ret

0000000080002d20 <_ZN14PeriodicThreadD0Ev>:
    80002d20:	fe010113          	addi	sp,sp,-32
    80002d24:	00113c23          	sd	ra,24(sp)
    80002d28:	00813823          	sd	s0,16(sp)
    80002d2c:	00913423          	sd	s1,8(sp)
    80002d30:	02010413          	addi	s0,sp,32
    80002d34:	00050493          	mv	s1,a0
    80002d38:	00006797          	auipc	a5,0x6
    80002d3c:	0d078793          	addi	a5,a5,208 # 80008e08 <_ZTV14PeriodicThread+0x10>
    80002d40:	00f53023          	sd	a5,0(a0)
    80002d44:	00000097          	auipc	ra,0x0
    80002d48:	b60080e7          	jalr	-1184(ra) # 800028a4 <_ZN6ThreadD1Ev>
    80002d4c:	00048513          	mv	a0,s1
    80002d50:	00000097          	auipc	ra,0x0
    80002d54:	bfc080e7          	jalr	-1028(ra) # 8000294c <_ZdlPv>
    80002d58:	01813083          	ld	ra,24(sp)
    80002d5c:	01013403          	ld	s0,16(sp)
    80002d60:	00813483          	ld	s1,8(sp)
    80002d64:	02010113          	addi	sp,sp,32
    80002d68:	00008067          	ret

0000000080002d6c <_ZN4_semdlEPv>:
//

#include "../h/_sem.hpp"
#include "../h/syscall_c.hpp"

void _sem::operator delete(void *p) {
    80002d6c:	ff010113          	addi	sp,sp,-16
    80002d70:	00113423          	sd	ra,8(sp)
    80002d74:	00813023          	sd	s0,0(sp)
    80002d78:	01010413          	addi	s0,sp,16
    sem_close((sem_t)p);
    80002d7c:	ffffe097          	auipc	ra,0xffffe
    80002d80:	638080e7          	jalr	1592(ra) # 800013b4 <_Z9sem_closeP4_sem>
}
    80002d84:	00813083          	ld	ra,8(sp)
    80002d88:	00013403          	ld	s0,0(sp)
    80002d8c:	01010113          	addi	sp,sp,16
    80002d90:	00008067          	ret

0000000080002d94 <_ZN5Riscv10initSystemEv>:
uint64 Riscv::totalTime = 0;
bool Riscv::finishSystem = false;
bool Riscv::kernelMainCalled = false;

void Riscv::initSystem()
{
    80002d94:	ff010113          	addi	sp,sp,-16
    80002d98:	00113423          	sd	ra,8(sp)
    80002d9c:	00813023          	sd	s0,0(sp)
    80002da0:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80002da4:	00006797          	auipc	a5,0x6
    80002da8:	1047b783          	ld	a5,260(a5) # 80008ea8 <_GLOBAL_OFFSET_TABLE_+0x20>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80002dac:	10579073          	csrw	stvec,a5
    PCB::initialize();
    80002db0:	fffff097          	auipc	ra,0xfffff
    80002db4:	9ec080e7          	jalr	-1556(ra) # 8000179c <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80002db8:	fffff097          	auipc	ra,0xfffff
    80002dbc:	250080e7          	jalr	592(ra) # 80002008 <_ZN8KConsole10initializeEv>
}
    80002dc0:	00813083          	ld	ra,8(sp)
    80002dc4:	00013403          	ld	s0,0(sp)
    80002dc8:	01010113          	addi	sp,sp,16
    80002dcc:	00008067          	ret

0000000080002dd0 <_ZN5Riscv16enableInterruptsEv>:
        thread_dispatch();
    }
    disableInterrupts();
}

void Riscv::enableInterrupts() {
    80002dd0:	ff010113          	addi	sp,sp,-16
    80002dd4:	00813423          	sd	s0,8(sp)
    80002dd8:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80002ddc:	00200793          	li	a5,2
    80002de0:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    80002de4:	00813403          	ld	s0,8(sp)
    80002de8:	01010113          	addi	sp,sp,16
    80002dec:	00008067          	ret

0000000080002df0 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    80002df0:	ff010113          	addi	sp,sp,-16
    80002df4:	00813423          	sd	s0,8(sp)
    80002df8:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80002dfc:	00200793          	li	a5,2
    80002e00:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    80002e04:	00813403          	ld	s0,8(sp)
    80002e08:	01010113          	addi	sp,sp,16
    80002e0c:	00008067          	ret

0000000080002e10 <_ZN5Riscv9endSystemEv>:
{
    80002e10:	ff010113          	addi	sp,sp,-16
    80002e14:	00113423          	sd	ra,8(sp)
    80002e18:	00813023          	sd	s0,0(sp)
    80002e1c:	01010413          	addi	s0,sp,16
    disableInterrupts();
    80002e20:	00000097          	auipc	ra,0x0
    80002e24:	fd0080e7          	jalr	-48(ra) # 80002df0 <_ZN5Riscv17disableInterruptsEv>
    finishSystem = true;
    80002e28:	00100793          	li	a5,1
    80002e2c:	0000a717          	auipc	a4,0xa
    80002e30:	1af70a23          	sb	a5,436(a4) # 8000cfe0 <_ZN5Riscv12finishSystemE>
        pcb = Scheduler::get();
    80002e34:	00000097          	auipc	ra,0x0
    80002e38:	970080e7          	jalr	-1680(ra) # 800027a4 <_ZN9Scheduler3getEv>
        if(pcb == 0) break;
    80002e3c:	fe051ce3          	bnez	a0,80002e34 <_ZN5Riscv9endSystemEv+0x24>
    Scheduler::put(PCB::consolePCB);
    80002e40:	00006797          	auipc	a5,0x6
    80002e44:	0a07b783          	ld	a5,160(a5) # 80008ee0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002e48:	0007b503          	ld	a0,0(a5)
    80002e4c:	00000097          	auipc	ra,0x0
    80002e50:	904080e7          	jalr	-1788(ra) # 80002750 <_ZN9Scheduler3putEP3PCB>
    KConsole::pendingGetc = 0;
    80002e54:	00006797          	auipc	a5,0x6
    80002e58:	05c7b783          	ld	a5,92(a5) # 80008eb0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002e5c:	0007b023          	sd	zero,0(a5)
    enableInterrupts();
    80002e60:	00000097          	auipc	ra,0x0
    80002e64:	f70080e7          	jalr	-144(ra) # 80002dd0 <_ZN5Riscv16enableInterruptsEv>
    while(!PCB::consolePCB->isFinished())
    80002e68:	00006797          	auipc	a5,0x6
    80002e6c:	0787b783          	ld	a5,120(a5) # 80008ee0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002e70:	0007b503          	ld	a0,0(a5)
    80002e74:	fffff097          	auipc	ra,0xfffff
    80002e78:	a48080e7          	jalr	-1464(ra) # 800018bc <_ZN3PCB10isFinishedEv>
    80002e7c:	00051863          	bnez	a0,80002e8c <_ZN5Riscv9endSystemEv+0x7c>
        thread_dispatch();
    80002e80:	ffffe097          	auipc	ra,0xffffe
    80002e84:	4b4080e7          	jalr	1204(ra) # 80001334 <_Z15thread_dispatchv>
    while(!PCB::consolePCB->isFinished())
    80002e88:	fe1ff06f          	j	80002e68 <_ZN5Riscv9endSystemEv+0x58>
    disableInterrupts();
    80002e8c:	00000097          	auipc	ra,0x0
    80002e90:	f64080e7          	jalr	-156(ra) # 80002df0 <_ZN5Riscv17disableInterruptsEv>
}
    80002e94:	00813083          	ld	ra,8(sp)
    80002e98:	00013403          	ld	s0,0(sp)
    80002e9c:	01010113          	addi	sp,sp,16
    80002ea0:	00008067          	ret

0000000080002ea4 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    80002ea4:	ff010113          	addi	sp,sp,-16
    80002ea8:	00813423          	sd	s0,8(sp)
    80002eac:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002eb0:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002eb4:	10200073          	sret
}
    80002eb8:	00813403          	ld	s0,8(sp)
    80002ebc:	01010113          	addi	sp,sp,16
    80002ec0:	00008067          	ret

0000000080002ec4 <_ZN5Riscv10kernelMainEv>:
    }
}

void Riscv::kernelMain()
{
    if(kernelMainCalled) return;
    80002ec4:	0000a797          	auipc	a5,0xa
    80002ec8:	11d7c783          	lbu	a5,285(a5) # 8000cfe1 <_ZN5Riscv16kernelMainCalledE>
    80002ecc:	00078463          	beqz	a5,80002ed4 <_ZN5Riscv10kernelMainEv+0x10>
    80002ed0:	00008067          	ret
{
    80002ed4:	ff010113          	addi	sp,sp,-16
    80002ed8:	00113423          	sd	ra,8(sp)
    80002edc:	00813023          	sd	s0,0(sp)
    80002ee0:	01010413          	addi	s0,sp,16
    kernelMainCalled = true;
    80002ee4:	00100793          	li	a5,1
    80002ee8:	0000a717          	auipc	a4,0xa
    80002eec:	0ef70ca3          	sb	a5,249(a4) # 8000cfe1 <_ZN5Riscv16kernelMainCalledE>

    initSystem();
    80002ef0:	00000097          	auipc	ra,0x0
    80002ef4:	ea4080e7          	jalr	-348(ra) # 80002d94 <_ZN5Riscv10initSystemEv>

    //disableTimerInterrupts();
    enableInterrupts();
    80002ef8:	00000097          	auipc	ra,0x0
    80002efc:	ed8080e7          	jalr	-296(ra) # 80002dd0 <_ZN5Riscv16enableInterruptsEv>

    while(!PCB::userPCB->isFinished())
    80002f00:	00006797          	auipc	a5,0x6
    80002f04:	fe87b783          	ld	a5,-24(a5) # 80008ee8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002f08:	0007b503          	ld	a0,0(a5)
    80002f0c:	fffff097          	auipc	ra,0xfffff
    80002f10:	9b0080e7          	jalr	-1616(ra) # 800018bc <_ZN3PCB10isFinishedEv>
    80002f14:	00051863          	bnez	a0,80002f24 <_ZN5Riscv10kernelMainEv+0x60>
    {
        thread_dispatch();
    80002f18:	ffffe097          	auipc	ra,0xffffe
    80002f1c:	41c080e7          	jalr	1052(ra) # 80001334 <_Z15thread_dispatchv>
    while(!PCB::userPCB->isFinished())
    80002f20:	fe1ff06f          	j	80002f00 <_ZN5Riscv10kernelMainEv+0x3c>
    }

    //printString("End...\n");
    endSystem();
    80002f24:	00000097          	auipc	ra,0x0
    80002f28:	eec080e7          	jalr	-276(ra) # 80002e10 <_ZN5Riscv9endSystemEv>
}
    80002f2c:	00813083          	ld	ra,8(sp)
    80002f30:	00013403          	ld	s0,0(sp)
    80002f34:	01010113          	addi	sp,sp,16
    80002f38:	00008067          	ret

0000000080002f3c <_ZN5Riscv15userMainWrapperEPv>:

void Riscv::userMainWrapper(void* )
{
    80002f3c:	ff010113          	addi	sp,sp,-16
    80002f40:	00113423          	sd	ra,8(sp)
    80002f44:	00813023          	sd	s0,0(sp)
    80002f48:	01010413          	addi	s0,sp,16
    userMain();
    80002f4c:	00002097          	auipc	ra,0x2
    80002f50:	930080e7          	jalr	-1744(ra) # 8000487c <_Z8userMainv>
}
    80002f54:	00813083          	ld	ra,8(sp)
    80002f58:	00013403          	ld	s0,0(sp)
    80002f5c:	01010113          	addi	sp,sp,16
    80002f60:	00008067          	ret

0000000080002f64 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    80002f64:	ff010113          	addi	sp,sp,-16
    80002f68:	00813423          	sd	s0,8(sp)
    80002f6c:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80002f70:	00200793          	li	a5,2
    80002f74:	1047b073          	csrc	sie,a5
}
    80002f78:	00813403          	ld	s0,8(sp)
    80002f7c:	01010113          	addi	sp,sp,16
    80002f80:	00008067          	ret

0000000080002f84 <_ZN5Riscv13w_a0_sscratchEv>:

void Riscv::w_a0_sscratch()
{
    80002f84:	ff010113          	addi	sp,sp,-16
    80002f88:	00813423          	sd	s0,8(sp)
    80002f8c:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80002f90:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80002f94:	00006717          	auipc	a4,0x6
    80002f98:	f6473703          	ld	a4,-156(a4) # 80008ef8 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002f9c:	00073703          	ld	a4,0(a4)
    80002fa0:	01073703          	ld	a4,16(a4)
    80002fa4:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    80002fa8:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80002fac:	00078593          	mv	a1,a5
}
    80002fb0:	00813403          	ld	s0,8(sp)
    80002fb4:	01010113          	addi	sp,sp,16
    80002fb8:	00008067          	ret

0000000080002fbc <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    80002fbc:	ff010113          	addi	sp,sp,-16
    80002fc0:	00813423          	sd	s0,8(sp)
    80002fc4:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    80002fc8:	00006797          	auipc	a5,0x6
    80002fcc:	f307b783          	ld	a5,-208(a5) # 80008ef8 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002fd0:	0007b783          	ld	a5,0(a5)
    80002fd4:	0007c783          	lbu	a5,0(a5)
    80002fd8:	00078c63          	beqz	a5,80002ff0 <_ZN5Riscv14changePrivModeEv+0x34>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80002fdc:	10000793          	li	a5,256
    80002fe0:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    80002fe4:	00813403          	ld	s0,8(sp)
    80002fe8:	01010113          	addi	sp,sp,16
    80002fec:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80002ff0:	10000793          	li	a5,256
    80002ff4:	1007b073          	csrc	sstatus,a5
    80002ff8:	fedff06f          	j	80002fe4 <_ZN5Riscv14changePrivModeEv+0x28>

0000000080002ffc <_ZN5Riscv20handleSupervisorTrapEv>:
{
    80002ffc:	f9010113          	addi	sp,sp,-112
    80003000:	06113423          	sd	ra,104(sp)
    80003004:	06813023          	sd	s0,96(sp)
    80003008:	04913c23          	sd	s1,88(sp)
    8000300c:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    80003010:	00070713          	mv	a4,a4
    80003014:	00006797          	auipc	a5,0x6
    80003018:	efc7b783          	ld	a5,-260(a5) # 80008f10 <_GLOBAL_OFFSET_TABLE_+0x88>
    8000301c:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    80003020:	00006797          	auipc	a5,0x6
    80003024:	ed87b783          	ld	a5,-296(a5) # 80008ef8 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003028:	0007b783          	ld	a5,0(a5)
    8000302c:	14002773          	csrr	a4,sscratch
    80003030:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003034:	142027f3          	csrr	a5,scause
    80003038:	faf43c23          	sd	a5,-72(s0)
    return scause;
    8000303c:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    80003040:	00900713          	li	a4,9
    80003044:	02f76e63          	bltu	a4,a5,80003080 <_ZN5Riscv20handleSupervisorTrapEv+0x84>
    80003048:	00800713          	li	a4,8
    8000304c:	12e7f463          	bgeu	a5,a4,80003174 <_ZN5Riscv20handleSupervisorTrapEv+0x178>
    80003050:	00500713          	li	a4,5
    80003054:	10e78a63          	beq	a5,a4,80003168 <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
    80003058:	00700713          	li	a4,7
    8000305c:	00e79863          	bne	a5,a4,8000306c <_ZN5Riscv20handleSupervisorTrapEv+0x70>
            PCB::threadExitHandler();
    80003060:	fffff097          	auipc	ra,0xfffff
    80003064:	880080e7          	jalr	-1920(ra) # 800018e0 <_ZN3PCB17threadExitHandlerEv>
            break;
    80003068:	0dc0006f          	j	80003144 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    switch(scause)
    8000306c:	00200713          	li	a4,2
    80003070:	0ce79a63          	bne	a5,a4,80003144 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            PCB::threadExitHandler();
    80003074:	fffff097          	auipc	ra,0xfffff
    80003078:	86c080e7          	jalr	-1940(ra) # 800018e0 <_ZN3PCB17threadExitHandlerEv>
            break;
    8000307c:	0c80006f          	j	80003144 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    switch(scause)
    80003080:	fff00713          	li	a4,-1
    80003084:	03f71713          	slli	a4,a4,0x3f
    80003088:	00170713          	addi	a4,a4,1
    8000308c:	02e78863          	beq	a5,a4,800030bc <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
    80003090:	fff00713          	li	a4,-1
    80003094:	03f71713          	slli	a4,a4,0x3f
    80003098:	00970713          	addi	a4,a4,9
    8000309c:	0ae79463          	bne	a5,a4,80003144 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            KConsole::getCharactersFromConsole();
    800030a0:	fffff097          	auipc	ra,0xfffff
    800030a4:	080080e7          	jalr	128(ra) # 80002120 <_ZN8KConsole24getCharactersFromConsoleEv>
            plic_complete(plic_claim());
    800030a8:	00002097          	auipc	ra,0x2
    800030ac:	37c080e7          	jalr	892(ra) # 80005424 <plic_claim>
    800030b0:	00002097          	auipc	ra,0x2
    800030b4:	3ac080e7          	jalr	940(ra) # 8000545c <plic_complete>
            break;
    800030b8:	08c0006f          	j	80003144 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800030bc:	141027f3          	csrr	a5,sepc
    800030c0:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800030c4:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    800030c8:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800030cc:	100027f3          	csrr	a5,sstatus
    800030d0:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800030d4:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    800030d8:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    800030dc:	00200793          	li	a5,2
    800030e0:	1447b073          	csrc	sip,a5
            totalTime++;
    800030e4:	0000a717          	auipc	a4,0xa
    800030e8:	efc70713          	addi	a4,a4,-260 # 8000cfe0 <_ZN5Riscv12finishSystemE>
    800030ec:	00873783          	ld	a5,8(a4)
    800030f0:	00178793          	addi	a5,a5,1
    800030f4:	00f73423          	sd	a5,8(a4)
            PCB::timeSliceCounter++;
    800030f8:	00006497          	auipc	s1,0x6
    800030fc:	dc84b483          	ld	s1,-568(s1) # 80008ec0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003100:	0004b783          	ld	a5,0(s1)
    80003104:	00178793          	addi	a5,a5,1
    80003108:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    8000310c:	fffff097          	auipc	ra,0xfffff
    80003110:	534080e7          	jalr	1332(ra) # 80002640 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80003114:	00006797          	auipc	a5,0x6
    80003118:	de47b783          	ld	a5,-540(a5) # 80008ef8 <_GLOBAL_OFFSET_TABLE_+0x70>
    8000311c:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80003120:	0187b783          	ld	a5,24(a5)
    80003124:	0004b703          	ld	a4,0(s1)
    80003128:	02f77863          	bgeu	a4,a5,80003158 <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
            Riscv::w_sstatus(sstatus);
    8000312c:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80003130:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80003134:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80003138:	14179073          	csrw	sepc,a5
            changePrivMode();
    8000313c:	00000097          	auipc	ra,0x0
    80003140:	e80080e7          	jalr	-384(ra) # 80002fbc <_ZN5Riscv14changePrivModeEv>
}
    80003144:	06813083          	ld	ra,104(sp)
    80003148:	06013403          	ld	s0,96(sp)
    8000314c:	05813483          	ld	s1,88(sp)
    80003150:	07010113          	addi	sp,sp,112
    80003154:	00008067          	ret
                PCB::timeSliceCounter = 0;
    80003158:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    8000315c:	ffffe097          	auipc	ra,0xffffe
    80003160:	538080e7          	jalr	1336(ra) # 80001694 <_ZN3PCB8dispatchEv>
    80003164:	fc9ff06f          	j	8000312c <_ZN5Riscv20handleSupervisorTrapEv+0x130>
            PCB::threadExitHandler();
    80003168:	ffffe097          	auipc	ra,0xffffe
    8000316c:	778080e7          	jalr	1912(ra) # 800018e0 <_ZN3PCB17threadExitHandlerEv>
            break;
    80003170:	fd5ff06f          	j	80003144 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80003174:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003178:	14102773          	csrr	a4,sepc
    8000317c:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80003180:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80003184:	00470713          	addi	a4,a4,4
    80003188:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    8000318c:	10002773          	csrr	a4,sstatus
    80003190:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80003194:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80003198:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    8000319c:	04300713          	li	a4,67
    800031a0:	02f76463          	bltu	a4,a5,800031c8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
    800031a4:	00279793          	slli	a5,a5,0x2
    800031a8:	00004717          	auipc	a4,0x4
    800031ac:	e8c70713          	addi	a4,a4,-372 # 80007034 <CONSOLE_STATUS+0x24>
    800031b0:	00e787b3          	add	a5,a5,a4
    800031b4:	0007a783          	lw	a5,0(a5)
    800031b8:	00e787b3          	add	a5,a5,a4
    800031bc:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    800031c0:	00000097          	auipc	ra,0x0
    800031c4:	55c080e7          	jalr	1372(ra) # 8000371c <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    800031c8:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800031cc:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    800031d0:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800031d4:	14179073          	csrw	sepc,a5
            changePrivMode();
    800031d8:	00000097          	auipc	ra,0x0
    800031dc:	de4080e7          	jalr	-540(ra) # 80002fbc <_ZN5Riscv14changePrivModeEv>
}
    800031e0:	f65ff06f          	j	80003144 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
                    MemoryAllocator::memFreeHandler();
    800031e4:	00000097          	auipc	ra,0x0
    800031e8:	59c080e7          	jalr	1436(ra) # 80003780 <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    800031ec:	fddff06f          	j	800031c8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadMakePCBHandler();
    800031f0:	fffff097          	auipc	ra,0xfffff
    800031f4:	8b4080e7          	jalr	-1868(ra) # 80001aa4 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    800031f8:	fd1ff06f          	j	800031c8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadCreateHandler();
    800031fc:	ffffe097          	auipc	ra,0xffffe
    80003200:	7c4080e7          	jalr	1988(ra) # 800019c0 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80003204:	fc5ff06f          	j	800031c8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadStartHandler();
    80003208:	fffff097          	auipc	ra,0xfffff
    8000320c:	858080e7          	jalr	-1960(ra) # 80001a60 <_ZN3PCB18threadStartHandlerEv>
                    break;
    80003210:	fb9ff06f          	j	800031c8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadDispatchHandler();
    80003214:	ffffe097          	auipc	ra,0xffffe
    80003218:	718080e7          	jalr	1816(ra) # 8000192c <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    8000321c:	fadff06f          	j	800031c8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadExitHandler();
    80003220:	ffffe097          	auipc	ra,0xffffe
    80003224:	6c0080e7          	jalr	1728(ra) # 800018e0 <_ZN3PCB17threadExitHandlerEv>
                    break;
    80003228:	fa1ff06f          	j	800031c8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadSleepHandler();
    8000322c:	ffffe097          	auipc	ra,0xffffe
    80003230:	730080e7          	jalr	1840(ra) # 8000195c <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80003234:	f95ff06f          	j	800031c8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                     PCB::threadDelPCBHandler();
    80003238:	fffff097          	auipc	ra,0xfffff
    8000323c:	900080e7          	jalr	-1792(ra) # 80001b38 <_ZN3PCB19threadDelPCBHandlerEv>
                     break;
    80003240:	f89ff06f          	j	800031c8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semOpenHandler();
    80003244:	00001097          	auipc	ra,0x1
    80003248:	800080e7          	jalr	-2048(ra) # 80003a44 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    8000324c:	f7dff06f          	j	800031c8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semWaitHandler();
    80003250:	00001097          	auipc	ra,0x1
    80003254:	894080e7          	jalr	-1900(ra) # 80003ae4 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80003258:	f71ff06f          	j	800031c8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semSignalHandler();
    8000325c:	00001097          	auipc	ra,0x1
    80003260:	8dc080e7          	jalr	-1828(ra) # 80003b38 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80003264:	f65ff06f          	j	800031c8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semCloseHandler();
    80003268:	00001097          	auipc	ra,0x1
    8000326c:	914080e7          	jalr	-1772(ra) # 80003b7c <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80003270:	f59ff06f          	j	800031c8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::getcHandler();
    80003274:	fffff097          	auipc	ra,0xfffff
    80003278:	0b0080e7          	jalr	176(ra) # 80002324 <_ZN8KConsole11getcHandlerEv>
                    break;
    8000327c:	f4dff06f          	j	800031c8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::putcHandler();
    80003280:	fffff097          	auipc	ra,0xfffff
    80003284:	074080e7          	jalr	116(ra) # 800022f4 <_ZN8KConsole11putcHandlerEv>
                    break;
    80003288:	f41ff06f          	j	800031c8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::getCharHandler();
    8000328c:	fffff097          	auipc	ra,0xfffff
    80003290:	1f4080e7          	jalr	500(ra) # 80002480 <_ZN8KConsole14getCharHandlerEv>
                    break;
    80003294:	f35ff06f          	j	800031c8 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>

0000000080003298 <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80003298:	ff010113          	addi	sp,sp,-16
    8000329c:	00813423          	sd	s0,8(sp)
    800032a0:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    800032a4:	0000a717          	auipc	a4,0xa
    800032a8:	d4c72703          	lw	a4,-692(a4) # 8000cff0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800032ac:	00100793          	li	a5,1
    800032b0:	04f70263          	beq	a4,a5,800032f4 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    800032b4:	0000a797          	auipc	a5,0xa
    800032b8:	d3c78793          	addi	a5,a5,-708 # 8000cff0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800032bc:	00100713          	li	a4,1
    800032c0:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    800032c4:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    800032c8:	00006717          	auipc	a4,0x6
    800032cc:	bd873703          	ld	a4,-1064(a4) # 80008ea0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800032d0:	00073703          	ld	a4,0(a4)
    800032d4:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    800032d8:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    800032dc:	00006797          	auipc	a5,0x6
    800032e0:	c247b783          	ld	a5,-988(a5) # 80008f00 <_GLOBAL_OFFSET_TABLE_+0x78>
    800032e4:	0007b783          	ld	a5,0(a5)
    800032e8:	40e787b3          	sub	a5,a5,a4
    800032ec:	ff178793          	addi	a5,a5,-15
    800032f0:	00f73023          	sd	a5,0(a4)
}
    800032f4:	00813403          	ld	s0,8(sp)
    800032f8:	01010113          	addi	sp,sp,16
    800032fc:	00008067          	ret

0000000080003300 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>:

void MemoryAllocator::insertAllFragment(void *addr, size_t size, void* nxtAddr)
{
    80003300:	fd010113          	addi	sp,sp,-48
    80003304:	02113423          	sd	ra,40(sp)
    80003308:	02813023          	sd	s0,32(sp)
    8000330c:	00913c23          	sd	s1,24(sp)
    80003310:	01213823          	sd	s2,16(sp)
    80003314:	01313423          	sd	s3,8(sp)
    80003318:	03010413          	addi	s0,sp,48
    8000331c:	00050493          	mv	s1,a0
    80003320:	00058993          	mv	s3,a1
    80003324:	00060913          	mv	s2,a2
    initMemory();
    80003328:	00000097          	auipc	ra,0x0
    8000332c:	f70080e7          	jalr	-144(ra) # 80003298 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80003330:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80003334:	0134b023          	sd	s3,0(s1)
    if(headAllocated == 0)
    80003338:	0000a797          	auipc	a5,0xa
    8000333c:	cc07b783          	ld	a5,-832(a5) # 8000cff8 <_ZN15MemoryAllocator13headAllocatedE>
    80003340:	02078e63          	beqz	a5,8000337c <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x7c>
    {
        headAllocated = newAllocated;
    }
    else if(nxtAddr <= HEAP_END_ADDR)
    80003344:	00006717          	auipc	a4,0x6
    80003348:	bbc73703          	ld	a4,-1092(a4) # 80008f00 <_GLOBAL_OFFSET_TABLE_+0x78>
    8000334c:	00073703          	ld	a4,0(a4)
    80003350:	03276c63          	bltu	a4,s2,80003388 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x88>
    {
        BlockHeader * allFrag = (BlockHeader*)nxtAddr;
        newAllocated->next = allFrag->next;
    80003354:	00893783          	ld	a5,8(s2)
    80003358:	00f4b423          	sd	a5,8(s1)
        allFrag->next = newAllocated;
    8000335c:	00993423          	sd	s1,8(s2)
    else
    {
        newAllocated->next = headAllocated;
        headAllocated = newAllocated;
    }
}
    80003360:	02813083          	ld	ra,40(sp)
    80003364:	02013403          	ld	s0,32(sp)
    80003368:	01813483          	ld	s1,24(sp)
    8000336c:	01013903          	ld	s2,16(sp)
    80003370:	00813983          	ld	s3,8(sp)
    80003374:	03010113          	addi	sp,sp,48
    80003378:	00008067          	ret
        headAllocated = newAllocated;
    8000337c:	0000a797          	auipc	a5,0xa
    80003380:	c697be23          	sd	s1,-900(a5) # 8000cff8 <_ZN15MemoryAllocator13headAllocatedE>
    80003384:	fddff06f          	j	80003360 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>
        newAllocated->next = headAllocated;
    80003388:	00f4b423          	sd	a5,8(s1)
        headAllocated = newAllocated;
    8000338c:	0000a797          	auipc	a5,0xa
    80003390:	c697b623          	sd	s1,-916(a5) # 8000cff8 <_ZN15MemoryAllocator13headAllocatedE>
}
    80003394:	fcdff06f          	j	80003360 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>

0000000080003398 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80003398:	fe010113          	addi	sp,sp,-32
    8000339c:	00113c23          	sd	ra,24(sp)
    800033a0:	00813823          	sd	s0,16(sp)
    800033a4:	00913423          	sd	s1,8(sp)
    800033a8:	01213023          	sd	s2,0(sp)
    800033ac:	02010413          	addi	s0,sp,32
    800033b0:	00050493          	mv	s1,a0
    800033b4:	00058913          	mv	s2,a1
    initMemory();
    800033b8:	00000097          	auipc	ra,0x0
    800033bc:	ee0080e7          	jalr	-288(ra) # 80003298 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    800033c0:	0000a797          	auipc	a5,0xa
    800033c4:	c387b783          	ld	a5,-968(a5) # 8000cff8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    800033c8:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    800033cc:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    800033d0:	00000713          	li	a4,0
    while(curr != 0)
    800033d4:	00078c63          	beqz	a5,800033ec <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800033d8:	00f4e863          	bltu	s1,a5,800033e8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    800033dc:	00078713          	mv	a4,a5
        curr = curr->next;
    800033e0:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800033e4:	ff1ff06f          	j	800033d4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    800033e8:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    800033ec:	02070063          	beqz	a4,8000340c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    800033f0:	00973423          	sd	s1,8(a4)
}
    800033f4:	01813083          	ld	ra,24(sp)
    800033f8:	01013403          	ld	s0,16(sp)
    800033fc:	00813483          	ld	s1,8(sp)
    80003400:	00013903          	ld	s2,0(sp)
    80003404:	02010113          	addi	sp,sp,32
    80003408:	00008067          	ret
        headAllocated = newAllocated;
    8000340c:	0000a797          	auipc	a5,0xa
    80003410:	be97b623          	sd	s1,-1044(a5) # 8000cff8 <_ZN15MemoryAllocator13headAllocatedE>
    80003414:	fe1ff06f          	j	800033f4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080003418 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    80003418:	fe010113          	addi	sp,sp,-32
    8000341c:	00113c23          	sd	ra,24(sp)
    80003420:	00813823          	sd	s0,16(sp)
    80003424:	00913423          	sd	s1,8(sp)
    80003428:	01213023          	sd	s2,0(sp)
    8000342c:	02010413          	addi	s0,sp,32
    80003430:	00050913          	mv	s2,a0
    initMemory();
    80003434:	00000097          	auipc	ra,0x0
    80003438:	e64080e7          	jalr	-412(ra) # 80003298 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    8000343c:	0000a497          	auipc	s1,0xa
    80003440:	bc44b483          	ld	s1,-1084(s1) # 8000d000 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80003444:	00000713          	li	a4,0
    while(curr != 0)
    80003448:	0c048063          	beqz	s1,80003508 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf0>
    {
        if(curr->size >= size)
    8000344c:	0004b783          	ld	a5,0(s1)
    80003450:	0127f863          	bgeu	a5,s2,80003460 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            //insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80003454:	00048713          	mv	a4,s1
        curr = curr->next;
    80003458:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    8000345c:	fedff06f          	j	80003448 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80003460:	01090693          	addi	a3,s2,16
    80003464:	00d486b3          	add	a3,s1,a3
            void* nxtAllFrag = ((char*)curr + curr->size + sizeof(BlockHeader));
    80003468:	01078613          	addi	a2,a5,16
    8000346c:	00c48633          	add	a2,s1,a2
            if(newAddr <= HEAP_END_ADDR)
    80003470:	00006597          	auipc	a1,0x6
    80003474:	a905b583          	ld	a1,-1392(a1) # 80008f00 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003478:	0005b583          	ld	a1,0(a1)
    8000347c:	06d5e063          	bltu	a1,a3,800034dc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc4>
                uint64 size2 = curr->size - size;
    80003480:	412785b3          	sub	a1,a5,s2
                if(size2 > sizeof(BlockHeader))
    80003484:	01000513          	li	a0,16
    80003488:	02b57663          	bgeu	a0,a1,800034b4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                    newFree->next = curr->next;
    8000348c:	0084b783          	ld	a5,8(s1)
    80003490:	00f6b423          	sd	a5,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80003494:	ff058593          	addi	a1,a1,-16
    80003498:	00b6b023          	sd	a1,0(a3)
                    if (prev != 0)
    8000349c:	00070663          	beqz	a4,800034a8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x90>
                        prev->next = newFree;
    800034a0:	00d73423          	sd	a3,8(a4)
    800034a4:	0400006f          	j	800034e4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = newFree;
    800034a8:	0000a797          	auipc	a5,0xa
    800034ac:	b4d7bc23          	sd	a3,-1192(a5) # 8000d000 <_ZN15MemoryAllocator8headFreeE>
    800034b0:	0340006f          	j	800034e4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                    if(prev != 0)
    800034b4:	00070a63          	beqz	a4,800034c8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb0>
                        prev->next = curr->next;
    800034b8:	0084b683          	ld	a3,8(s1)
    800034bc:	00d73423          	sd	a3,8(a4)
                    size+=size2;
    800034c0:	00078913          	mv	s2,a5
    800034c4:	0200006f          	j	800034e4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = curr->next;
    800034c8:	0084b703          	ld	a4,8(s1)
    800034cc:	0000a697          	auipc	a3,0xa
    800034d0:	b2e6ba23          	sd	a4,-1228(a3) # 8000d000 <_ZN15MemoryAllocator8headFreeE>
                    size+=size2;
    800034d4:	00078913          	mv	s2,a5
    800034d8:	00c0006f          	j	800034e4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                if(prev != 0)
    800034dc:	02070063          	beqz	a4,800034fc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    prev->next = 0;
    800034e0:	00073423          	sd	zero,8(a4)
            insertAllFragment(oldAddr, size, nxtAllFrag);
    800034e4:	00090593          	mv	a1,s2
    800034e8:	00048513          	mv	a0,s1
    800034ec:	00000097          	auipc	ra,0x0
    800034f0:	e14080e7          	jalr	-492(ra) # 80003300 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    800034f4:	01048513          	addi	a0,s1,16
            break;
    800034f8:	0140006f          	j	8000350c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf4>
                    headFree = 0;
    800034fc:	0000a797          	auipc	a5,0xa
    80003500:	b007b223          	sd	zero,-1276(a5) # 8000d000 <_ZN15MemoryAllocator8headFreeE>
    80003504:	fe1ff06f          	j	800034e4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
    uint64 retval = 0;
    80003508:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    8000350c:	01813083          	ld	ra,24(sp)
    80003510:	01013403          	ld	s0,16(sp)
    80003514:	00813483          	ld	s1,8(sp)
    80003518:	00013903          	ld	s2,0(sp)
    8000351c:	02010113          	addi	sp,sp,32
    80003520:	00008067          	ret

0000000080003524 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80003524:	ff010113          	addi	sp,sp,-16
    80003528:	00113423          	sd	ra,8(sp)
    8000352c:	00813023          	sd	s0,0(sp)
    80003530:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80003534:	00000097          	auipc	ra,0x0
    80003538:	ee4080e7          	jalr	-284(ra) # 80003418 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    8000353c:	00813083          	ld	ra,8(sp)
    80003540:	00013403          	ld	s0,0(sp)
    80003544:	01010113          	addi	sp,sp,16
    80003548:	00008067          	ret

000000008000354c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    8000354c:	fe010113          	addi	sp,sp,-32
    80003550:	00113c23          	sd	ra,24(sp)
    80003554:	00813823          	sd	s0,16(sp)
    80003558:	00913423          	sd	s1,8(sp)
    8000355c:	01213023          	sd	s2,0(sp)
    80003560:	02010413          	addi	s0,sp,32
    80003564:	00050493          	mv	s1,a0
    80003568:	00058913          	mv	s2,a1
    initMemory();
    8000356c:	00000097          	auipc	ra,0x0
    80003570:	d2c080e7          	jalr	-724(ra) # 80003298 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80003574:	0000a797          	auipc	a5,0xa
    80003578:	a8c7b783          	ld	a5,-1396(a5) # 8000d000 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    8000357c:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    80003580:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    80003584:	00000713          	li	a4,0
    while(curr != 0)
    80003588:	00078c63          	beqz	a5,800035a0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    8000358c:	00f4e863          	bltu	s1,a5,8000359c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80003590:	00078713          	mv	a4,a5
        curr = curr->next;
    80003594:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003598:	ff1ff06f          	j	80003588 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    8000359c:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    800035a0:	04070663          	beqz	a4,800035ec <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    800035a4:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    800035a8:	0084b783          	ld	a5,8(s1)
    800035ac:	00078a63          	beqz	a5,800035c0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    800035b0:	0004b603          	ld	a2,0(s1)
    800035b4:	01060693          	addi	a3,a2,16
    800035b8:	00d486b3          	add	a3,s1,a3
    800035bc:	02d78e63          	beq	a5,a3,800035f8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    800035c0:	00070a63          	beqz	a4,800035d4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    800035c4:	00073683          	ld	a3,0(a4)
    800035c8:	01068793          	addi	a5,a3,16
    800035cc:	00f707b3          	add	a5,a4,a5
    800035d0:	04978263          	beq	a5,s1,80003614 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    800035d4:	01813083          	ld	ra,24(sp)
    800035d8:	01013403          	ld	s0,16(sp)
    800035dc:	00813483          	ld	s1,8(sp)
    800035e0:	00013903          	ld	s2,0(sp)
    800035e4:	02010113          	addi	sp,sp,32
    800035e8:	00008067          	ret
        headFree = newSegment;
    800035ec:	0000a797          	auipc	a5,0xa
    800035f0:	a097ba23          	sd	s1,-1516(a5) # 8000d000 <_ZN15MemoryAllocator8headFreeE>
    800035f4:	fb5ff06f          	j	800035a8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    800035f8:	0007b683          	ld	a3,0(a5)
    800035fc:	00d60633          	add	a2,a2,a3
    80003600:	01060613          	addi	a2,a2,16
    80003604:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80003608:	0087b783          	ld	a5,8(a5)
    8000360c:	00f4b423          	sd	a5,8(s1)
    80003610:	fb1ff06f          	j	800035c0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80003614:	0004b783          	ld	a5,0(s1)
    80003618:	00f686b3          	add	a3,a3,a5
    8000361c:	01068693          	addi	a3,a3,16
    80003620:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80003624:	0084b783          	ld	a5,8(s1)
    80003628:	00f73423          	sd	a5,8(a4)
}
    8000362c:	fa9ff06f          	j	800035d4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080003630 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80003630:	fe010113          	addi	sp,sp,-32
    80003634:	00113c23          	sd	ra,24(sp)
    80003638:	00813823          	sd	s0,16(sp)
    8000363c:	00913423          	sd	s1,8(sp)
    80003640:	01213023          	sd	s2,0(sp)
    80003644:	02010413          	addi	s0,sp,32
    80003648:	00050913          	mv	s2,a0
    initMemory();
    8000364c:	00000097          	auipc	ra,0x0
    80003650:	c4c080e7          	jalr	-948(ra) # 80003298 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80003654:	0000a497          	auipc	s1,0xa
    80003658:	9a44b483          	ld	s1,-1628(s1) # 8000cff8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    8000365c:	00000713          	li	a4,0
    while(curr != 0)
    80003660:	02048a63          	beqz	s1,80003694 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80003664:	01048793          	addi	a5,s1,16
    80003668:	01278863          	beq	a5,s2,80003678 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    8000366c:	00048713          	mv	a4,s1
        curr = curr->next;
    80003670:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003674:	fedff06f          	j	80003660 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    80003678:	02070e63          	beqz	a4,800036b4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    8000367c:	0084b783          	ld	a5,8(s1)
    80003680:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80003684:	0004b583          	ld	a1,0(s1)
    80003688:	00048513          	mv	a0,s1
    8000368c:	00000097          	auipc	ra,0x0
    80003690:	ec0080e7          	jalr	-320(ra) # 8000354c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80003694:	02048863          	beqz	s1,800036c4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80003698:	00000513          	li	a0,0
    else
        return 1;
}
    8000369c:	01813083          	ld	ra,24(sp)
    800036a0:	01013403          	ld	s0,16(sp)
    800036a4:	00813483          	ld	s1,8(sp)
    800036a8:	00013903          	ld	s2,0(sp)
    800036ac:	02010113          	addi	sp,sp,32
    800036b0:	00008067          	ret
                headAllocated = curr->next;
    800036b4:	0084b783          	ld	a5,8(s1)
    800036b8:	0000a717          	auipc	a4,0xa
    800036bc:	94f73023          	sd	a5,-1728(a4) # 8000cff8 <_ZN15MemoryAllocator13headAllocatedE>
    800036c0:	fc5ff06f          	j	80003684 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    800036c4:	00100513          	li	a0,1
    800036c8:	fd5ff06f          	j	8000369c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

00000000800036cc <_ZN15MemoryAllocator8mem_freeEPv>:
{
    800036cc:	ff010113          	addi	sp,sp,-16
    800036d0:	00113423          	sd	ra,8(sp)
    800036d4:	00813023          	sd	s0,0(sp)
    800036d8:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    800036dc:	00000097          	auipc	ra,0x0
    800036e0:	f54080e7          	jalr	-172(ra) # 80003630 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    800036e4:	00813083          	ld	ra,8(sp)
    800036e8:	00013403          	ld	s0,0(sp)
    800036ec:	01010113          	addi	sp,sp,16
    800036f0:	00008067          	ret

00000000800036f4 <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    800036f4:	ff010113          	addi	sp,sp,-16
    800036f8:	00113423          	sd	ra,8(sp)
    800036fc:	00813023          	sd	s0,0(sp)
    80003700:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80003704:	00000097          	auipc	ra,0x0
    80003708:	e20080e7          	jalr	-480(ra) # 80003524 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000370c:	00813083          	ld	ra,8(sp)
    80003710:	00013403          	ld	s0,0(sp)
    80003714:	01010113          	addi	sp,sp,16
    80003718:	00008067          	ret

000000008000371c <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    8000371c:	ff010113          	addi	sp,sp,-16
    80003720:	00113423          	sd	ra,8(sp)
    80003724:	00813023          	sd	s0,0(sp)
    80003728:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    8000372c:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    80003730:	00651513          	slli	a0,a0,0x6
    80003734:	00000097          	auipc	ra,0x0
    80003738:	fc0080e7          	jalr	-64(ra) # 800036f4 <_ZN15MemoryAllocator7kmallocEm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    8000373c:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80003740:	00000097          	auipc	ra,0x0
    80003744:	844080e7          	jalr	-1980(ra) # 80002f84 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003748:	00813083          	ld	ra,8(sp)
    8000374c:	00013403          	ld	s0,0(sp)
    80003750:	01010113          	addi	sp,sp,16
    80003754:	00008067          	ret

0000000080003758 <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    80003758:	ff010113          	addi	sp,sp,-16
    8000375c:	00113423          	sd	ra,8(sp)
    80003760:	00813023          	sd	s0,0(sp)
    80003764:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80003768:	00000097          	auipc	ra,0x0
    8000376c:	f64080e7          	jalr	-156(ra) # 800036cc <_ZN15MemoryAllocator8mem_freeEPv>
    80003770:	00813083          	ld	ra,8(sp)
    80003774:	00013403          	ld	s0,0(sp)
    80003778:	01010113          	addi	sp,sp,16
    8000377c:	00008067          	ret

0000000080003780 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    80003780:	ff010113          	addi	sp,sp,-16
    80003784:	00113423          	sd	ra,8(sp)
    80003788:	00813023          	sd	s0,0(sp)
    8000378c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    80003790:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80003794:	00000097          	auipc	ra,0x0
    80003798:	fc4080e7          	jalr	-60(ra) # 80003758 <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    8000379c:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800037a0:	fffff097          	auipc	ra,0xfffff
    800037a4:	7e4080e7          	jalr	2020(ra) # 80002f84 <_ZN5Riscv13w_a0_sscratchEv>
}
    800037a8:	00813083          	ld	ra,8(sp)
    800037ac:	00013403          	ld	s0,0(sp)
    800037b0:	01010113          	addi	sp,sp,16
    800037b4:	00008067          	ret

00000000800037b8 <_ZN10KSemaphoreC1Ei>:
#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
    800037b8:	ff010113          	addi	sp,sp,-16
    800037bc:	00813423          	sd	s0,8(sp)
    800037c0:	01010413          	addi	s0,sp,16
{
    this->val = val;
    800037c4:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    800037c8:	00053423          	sd	zero,8(a0)
    800037cc:	00053023          	sd	zero,0(a0)
}
    800037d0:	00813403          	ld	s0,8(sp)
    800037d4:	01010113          	addi	sp,sp,16
    800037d8:	00008067          	ret

00000000800037dc <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    800037dc:	ff010113          	addi	sp,sp,-16
    800037e0:	00813423          	sd	s0,8(sp)
    800037e4:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    800037e8:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    800037ec:	00053783          	ld	a5,0(a0)
    800037f0:	00078e63          	beqz	a5,8000380c <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    800037f4:	00853783          	ld	a5,8(a0)
    800037f8:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    800037fc:	00b53423          	sd	a1,8(a0)
    }
}
    80003800:	00813403          	ld	s0,8(sp)
    80003804:	01010113          	addi	sp,sp,16
    80003808:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    8000380c:	00b53423          	sd	a1,8(a0)
    80003810:	00b53023          	sd	a1,0(a0)
    80003814:	fedff06f          	j	80003800 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080003818 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    80003818:	ff010113          	addi	sp,sp,-16
    8000381c:	00113423          	sd	ra,8(sp)
    80003820:	00813023          	sd	s0,0(sp)
    80003824:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80003828:	00005797          	auipc	a5,0x5
    8000382c:	6d07b783          	ld	a5,1744(a5) # 80008ef8 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003830:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80003834:	00200793          	li	a5,2
    80003838:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    8000383c:	00000097          	auipc	ra,0x0
    80003840:	fa0080e7          	jalr	-96(ra) # 800037dc <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80003844:	ffffe097          	auipc	ra,0xffffe
    80003848:	e50080e7          	jalr	-432(ra) # 80001694 <_ZN3PCB8dispatchEv>
}
    8000384c:	00813083          	ld	ra,8(sp)
    80003850:	00013403          	ld	s0,0(sp)
    80003854:	01010113          	addi	sp,sp,16
    80003858:	00008067          	ret

000000008000385c <_ZN10KSemaphore4waitEv>:
    PCB::running->retFromClosedSem = false;
    8000385c:	00005797          	auipc	a5,0x5
    80003860:	69c7b783          	ld	a5,1692(a5) # 80008ef8 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003864:	0007b783          	ld	a5,0(a5)
    80003868:	04078c23          	sb	zero,88(a5)
    if(--val < 0)
    8000386c:	01052783          	lw	a5,16(a0)
    80003870:	fff7879b          	addiw	a5,a5,-1
    80003874:	00f52823          	sw	a5,16(a0)
    80003878:	02079713          	slli	a4,a5,0x20
    8000387c:	00074663          	bltz	a4,80003888 <_ZN10KSemaphore4waitEv+0x2c>
}
    80003880:	00000513          	li	a0,0
    80003884:	00008067          	ret
{
    80003888:	ff010113          	addi	sp,sp,-16
    8000388c:	00113423          	sd	ra,8(sp)
    80003890:	00813023          	sd	s0,0(sp)
    80003894:	01010413          	addi	s0,sp,16
        block();
    80003898:	00000097          	auipc	ra,0x0
    8000389c:	f80080e7          	jalr	-128(ra) # 80003818 <_ZN10KSemaphore5blockEv>
}
    800038a0:	00000513          	li	a0,0
    800038a4:	00813083          	ld	ra,8(sp)
    800038a8:	00013403          	ld	s0,0(sp)
    800038ac:	01010113          	addi	sp,sp,16
    800038b0:	00008067          	ret

00000000800038b4 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    800038b4:	ff010113          	addi	sp,sp,-16
    800038b8:	00813423          	sd	s0,8(sp)
    800038bc:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    800038c0:	00053503          	ld	a0,0(a0)
    800038c4:	00813403          	ld	s0,8(sp)
    800038c8:	01010113          	addi	sp,sp,16
    800038cc:	00008067          	ret

00000000800038d0 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    800038d0:	ff010113          	addi	sp,sp,-16
    800038d4:	00813423          	sd	s0,8(sp)
    800038d8:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    800038dc:	00053783          	ld	a5,0(a0)
    800038e0:	00078c63          	beqz	a5,800038f8 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    800038e4:	0087b703          	ld	a4,8(a5)
    800038e8:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    800038ec:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    800038f0:	00053783          	ld	a5,0(a0)
    800038f4:	00078863          	beqz	a5,80003904 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    800038f8:	00813403          	ld	s0,8(sp)
    800038fc:	01010113          	addi	sp,sp,16
    80003900:	00008067          	ret
        tailBlocked =0;
    80003904:	00053423          	sd	zero,8(a0)
    80003908:	ff1ff06f          	j	800038f8 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

000000008000390c <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    8000390c:	fe010113          	addi	sp,sp,-32
    80003910:	00113c23          	sd	ra,24(sp)
    80003914:	00813823          	sd	s0,16(sp)
    80003918:	00913423          	sd	s1,8(sp)
    8000391c:	01213023          	sd	s2,0(sp)
    80003920:	02010413          	addi	s0,sp,32
    80003924:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80003928:	00090513          	mv	a0,s2
    8000392c:	00000097          	auipc	ra,0x0
    80003930:	f88080e7          	jalr	-120(ra) # 800038b4 <_ZN10KSemaphore15getFirstBlockedEv>
    80003934:	00050493          	mv	s1,a0
    80003938:	02050463          	beqz	a0,80003960 <_ZN10KSemaphoreD1Ev+0x54>
        removeFirstBlocked();
    8000393c:	00090513          	mv	a0,s2
    80003940:	00000097          	auipc	ra,0x0
    80003944:	f90080e7          	jalr	-112(ra) # 800038d0 <_ZN10KSemaphore18removeFirstBlockedEv>
        pcb->retFromClosedSem = true;
    80003948:	00100793          	li	a5,1
    8000394c:	04f48c23          	sb	a5,88(s1)
        Scheduler::put(pcb);
    80003950:	00048513          	mv	a0,s1
    80003954:	fffff097          	auipc	ra,0xfffff
    80003958:	dfc080e7          	jalr	-516(ra) # 80002750 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    8000395c:	fcdff06f          	j	80003928 <_ZN10KSemaphoreD1Ev+0x1c>
}
    80003960:	01813083          	ld	ra,24(sp)
    80003964:	01013403          	ld	s0,16(sp)
    80003968:	00813483          	ld	s1,8(sp)
    8000396c:	00013903          	ld	s2,0(sp)
    80003970:	02010113          	addi	sp,sp,32
    80003974:	00008067          	ret

0000000080003978 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    80003978:	fe010113          	addi	sp,sp,-32
    8000397c:	00113c23          	sd	ra,24(sp)
    80003980:	00813823          	sd	s0,16(sp)
    80003984:	00913423          	sd	s1,8(sp)
    80003988:	01213023          	sd	s2,0(sp)
    8000398c:	02010413          	addi	s0,sp,32
    80003990:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80003994:	00000097          	auipc	ra,0x0
    80003998:	f20080e7          	jalr	-224(ra) # 800038b4 <_ZN10KSemaphore15getFirstBlockedEv>
    8000399c:	00050493          	mv	s1,a0
    removeFirstBlocked();
    800039a0:	00090513          	mv	a0,s2
    800039a4:	00000097          	auipc	ra,0x0
    800039a8:	f2c080e7          	jalr	-212(ra) # 800038d0 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    800039ac:	00048863          	beqz	s1,800039bc <_ZN10KSemaphore7unblockEv+0x44>
    {
        Scheduler::put(fr);
    800039b0:	00048513          	mv	a0,s1
    800039b4:	fffff097          	auipc	ra,0xfffff
    800039b8:	d9c080e7          	jalr	-612(ra) # 80002750 <_ZN9Scheduler3putEP3PCB>
    }
}
    800039bc:	01813083          	ld	ra,24(sp)
    800039c0:	01013403          	ld	s0,16(sp)
    800039c4:	00813483          	ld	s1,8(sp)
    800039c8:	00013903          	ld	s2,0(sp)
    800039cc:	02010113          	addi	sp,sp,32
    800039d0:	00008067          	ret

00000000800039d4 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    800039d4:	01052783          	lw	a5,16(a0)
    800039d8:	0017879b          	addiw	a5,a5,1
    800039dc:	0007871b          	sext.w	a4,a5
    800039e0:	00f52823          	sw	a5,16(a0)
    800039e4:	00e05663          	blez	a4,800039f0 <_ZN10KSemaphore6signalEv+0x1c>
}
    800039e8:	00000513          	li	a0,0
    800039ec:	00008067          	ret
uint64 KSemaphore::signal() {
    800039f0:	ff010113          	addi	sp,sp,-16
    800039f4:	00113423          	sd	ra,8(sp)
    800039f8:	00813023          	sd	s0,0(sp)
    800039fc:	01010413          	addi	s0,sp,16
        unblock();
    80003a00:	00000097          	auipc	ra,0x0
    80003a04:	f78080e7          	jalr	-136(ra) # 80003978 <_ZN10KSemaphore7unblockEv>
}
    80003a08:	00000513          	li	a0,0
    80003a0c:	00813083          	ld	ra,8(sp)
    80003a10:	00013403          	ld	s0,0(sp)
    80003a14:	01010113          	addi	sp,sp,16
    80003a18:	00008067          	ret

0000000080003a1c <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    80003a1c:	ff010113          	addi	sp,sp,-16
    80003a20:	00113423          	sd	ra,8(sp)
    80003a24:	00813023          	sd	s0,0(sp)
    80003a28:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80003a2c:	00000097          	auipc	ra,0x0
    80003a30:	cc8080e7          	jalr	-824(ra) # 800036f4 <_ZN15MemoryAllocator7kmallocEm>
}
    80003a34:	00813083          	ld	ra,8(sp)
    80003a38:	00013403          	ld	s0,0(sp)
    80003a3c:	01010113          	addi	sp,sp,16
    80003a40:	00008067          	ret

0000000080003a44 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    80003a44:	fd010113          	addi	sp,sp,-48
    80003a48:	02113423          	sd	ra,40(sp)
    80003a4c:	02813023          	sd	s0,32(sp)
    80003a50:	00913c23          	sd	s1,24(sp)
    80003a54:	01213823          	sd	s2,16(sp)
    80003a58:	01313423          	sd	s3,8(sp)
    80003a5c:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80003a60:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    80003a64:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    80003a68:	01800513          	li	a0,24
    80003a6c:	00000097          	auipc	ra,0x0
    80003a70:	fb0080e7          	jalr	-80(ra) # 80003a1c <_ZN10KSemaphorenwEm>
    80003a74:	00050493          	mv	s1,a0
    80003a78:	0009859b          	sext.w	a1,s3
    80003a7c:	00000097          	auipc	ra,0x0
    80003a80:	d3c080e7          	jalr	-708(ra) # 800037b8 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    80003a84:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    80003a88:	02048663          	beqz	s1,80003ab4 <_ZN10KSemaphore14semOpenHandlerEv+0x70>
            __asm__ volatile("li a0, 0");
    80003a8c:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80003a90:	fffff097          	auipc	ra,0xfffff
    80003a94:	4f4080e7          	jalr	1268(ra) # 80002f84 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003a98:	02813083          	ld	ra,40(sp)
    80003a9c:	02013403          	ld	s0,32(sp)
    80003aa0:	01813483          	ld	s1,24(sp)
    80003aa4:	01013903          	ld	s2,16(sp)
    80003aa8:	00813983          	ld	s3,8(sp)
    80003aac:	03010113          	addi	sp,sp,48
    80003ab0:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80003ab4:	fff00513          	li	a0,-1
    80003ab8:	fd9ff06f          	j	80003a90 <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

0000000080003abc <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    80003abc:	ff010113          	addi	sp,sp,-16
    80003ac0:	00113423          	sd	ra,8(sp)
    80003ac4:	00813023          	sd	s0,0(sp)
    80003ac8:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80003acc:	00000097          	auipc	ra,0x0
    80003ad0:	c8c080e7          	jalr	-884(ra) # 80003758 <_ZN15MemoryAllocator5kfreeEPv>
}
    80003ad4:	00813083          	ld	ra,8(sp)
    80003ad8:	00013403          	ld	s0,0(sp)
    80003adc:	01010113          	addi	sp,sp,16
    80003ae0:	00008067          	ret

0000000080003ae4 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    80003ae4:	ff010113          	addi	sp,sp,-16
    80003ae8:	00113423          	sd	ra,8(sp)
    80003aec:	00813023          	sd	s0,0(sp)
    80003af0:	01010413          	addi	s0,sp,16
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80003af4:	00058513          	mv	a0,a1
    kSem->wait();
    80003af8:	00000097          	auipc	ra,0x0
    80003afc:	d64080e7          	jalr	-668(ra) # 8000385c <_ZN10KSemaphore4waitEv>
    if(PCB::running->retFromClosedSem)
    80003b00:	00005797          	auipc	a5,0x5
    80003b04:	3f87b783          	ld	a5,1016(a5) # 80008ef8 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003b08:	0007b783          	ld	a5,0(a5)
    80003b0c:	0587c783          	lbu	a5,88(a5)
    80003b10:	02078063          	beqz	a5,80003b30 <_ZN10KSemaphore14semWaitHandlerEv+0x4c>
        __asm__ volatile("li a0, 0x1");
    80003b14:	00100513          	li	a0,1
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
    80003b18:	fffff097          	auipc	ra,0xfffff
    80003b1c:	46c080e7          	jalr	1132(ra) # 80002f84 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003b20:	00813083          	ld	ra,8(sp)
    80003b24:	00013403          	ld	s0,0(sp)
    80003b28:	01010113          	addi	sp,sp,16
    80003b2c:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    80003b30:	00000513          	li	a0,0
    80003b34:	fe5ff06f          	j	80003b18 <_ZN10KSemaphore14semWaitHandlerEv+0x34>

0000000080003b38 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler() {
    80003b38:	ff010113          	addi	sp,sp,-16
    80003b3c:	00113423          	sd	ra,8(sp)
    80003b40:	00813023          	sd	s0,0(sp)
    80003b44:	01010413          	addi	s0,sp,16
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80003b48:	00058513          	mv	a0,a1
    if (kSem == 0)
    80003b4c:	02050463          	beqz	a0,80003b74 <_ZN10KSemaphore16semSignalHandlerEv+0x3c>
    {
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        kSem->signal();
    80003b50:	00000097          	auipc	ra,0x0
    80003b54:	e84080e7          	jalr	-380(ra) # 800039d4 <_ZN10KSemaphore6signalEv>
        __asm__ volatile("li a0, 0x0");
    80003b58:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80003b5c:	fffff097          	auipc	ra,0xfffff
    80003b60:	428080e7          	jalr	1064(ra) # 80002f84 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003b64:	00813083          	ld	ra,8(sp)
    80003b68:	00013403          	ld	s0,0(sp)
    80003b6c:	01010113          	addi	sp,sp,16
    80003b70:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80003b74:	00100513          	li	a0,1
    80003b78:	fe5ff06f          	j	80003b5c <_ZN10KSemaphore16semSignalHandlerEv+0x24>

0000000080003b7c <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    80003b7c:	fe010113          	addi	sp,sp,-32
    80003b80:	00113c23          	sd	ra,24(sp)
    80003b84:	00813823          	sd	s0,16(sp)
    80003b88:	00913423          	sd	s1,8(sp)
    80003b8c:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80003b90:	00058493          	mv	s1,a1
    delete kSem;
    80003b94:	00048e63          	beqz	s1,80003bb0 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    80003b98:	00048513          	mv	a0,s1
    80003b9c:	00000097          	auipc	ra,0x0
    80003ba0:	d70080e7          	jalr	-656(ra) # 8000390c <_ZN10KSemaphoreD1Ev>
    80003ba4:	00048513          	mv	a0,s1
    80003ba8:	00000097          	auipc	ra,0x0
    80003bac:	f14080e7          	jalr	-236(ra) # 80003abc <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    80003bb0:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80003bb4:	fffff097          	auipc	ra,0xfffff
    80003bb8:	3d0080e7          	jalr	976(ra) # 80002f84 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003bbc:	01813083          	ld	ra,24(sp)
    80003bc0:	01013403          	ld	s0,16(sp)
    80003bc4:	00813483          	ld	s1,8(sp)
    80003bc8:	02010113          	addi	sp,sp,32
    80003bcc:	00008067          	ret

0000000080003bd0 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80003bd0:	fe010113          	addi	sp,sp,-32
    80003bd4:	00113c23          	sd	ra,24(sp)
    80003bd8:	00813823          	sd	s0,16(sp)
    80003bdc:	00913423          	sd	s1,8(sp)
    80003be0:	02010413          	addi	s0,sp,32
    80003be4:	00050493          	mv	s1,a0
    LOCK();
    80003be8:	00100613          	li	a2,1
    80003bec:	00000593          	li	a1,0
    80003bf0:	00009517          	auipc	a0,0x9
    80003bf4:	41850513          	addi	a0,a0,1048 # 8000d008 <lockPrint>
    80003bf8:	ffffd097          	auipc	ra,0xffffd
    80003bfc:	620080e7          	jalr	1568(ra) # 80001218 <copy_and_swap>
    80003c00:	fe0514e3          	bnez	a0,80003be8 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80003c04:	0004c503          	lbu	a0,0(s1)
    80003c08:	00050a63          	beqz	a0,80003c1c <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80003c0c:	ffffe097          	auipc	ra,0xffffe
    80003c10:	92c080e7          	jalr	-1748(ra) # 80001538 <_Z4putcc>
        string++;
    80003c14:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003c18:	fedff06f          	j	80003c04 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80003c1c:	00000613          	li	a2,0
    80003c20:	00100593          	li	a1,1
    80003c24:	00009517          	auipc	a0,0x9
    80003c28:	3e450513          	addi	a0,a0,996 # 8000d008 <lockPrint>
    80003c2c:	ffffd097          	auipc	ra,0xffffd
    80003c30:	5ec080e7          	jalr	1516(ra) # 80001218 <copy_and_swap>
    80003c34:	fe0514e3          	bnez	a0,80003c1c <_Z11printStringPKc+0x4c>
}
    80003c38:	01813083          	ld	ra,24(sp)
    80003c3c:	01013403          	ld	s0,16(sp)
    80003c40:	00813483          	ld	s1,8(sp)
    80003c44:	02010113          	addi	sp,sp,32
    80003c48:	00008067          	ret

0000000080003c4c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80003c4c:	fd010113          	addi	sp,sp,-48
    80003c50:	02113423          	sd	ra,40(sp)
    80003c54:	02813023          	sd	s0,32(sp)
    80003c58:	00913c23          	sd	s1,24(sp)
    80003c5c:	01213823          	sd	s2,16(sp)
    80003c60:	01313423          	sd	s3,8(sp)
    80003c64:	01413023          	sd	s4,0(sp)
    80003c68:	03010413          	addi	s0,sp,48
    80003c6c:	00050993          	mv	s3,a0
    80003c70:	00058a13          	mv	s4,a1
    LOCK();
    80003c74:	00100613          	li	a2,1
    80003c78:	00000593          	li	a1,0
    80003c7c:	00009517          	auipc	a0,0x9
    80003c80:	38c50513          	addi	a0,a0,908 # 8000d008 <lockPrint>
    80003c84:	ffffd097          	auipc	ra,0xffffd
    80003c88:	594080e7          	jalr	1428(ra) # 80001218 <copy_and_swap>
    80003c8c:	fe0514e3          	bnez	a0,80003c74 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80003c90:	00000913          	li	s2,0
    80003c94:	00090493          	mv	s1,s2
    80003c98:	0019091b          	addiw	s2,s2,1
    80003c9c:	03495a63          	bge	s2,s4,80003cd0 <_Z9getStringPci+0x84>
        cc = getc();
    80003ca0:	ffffe097          	auipc	ra,0xffffe
    80003ca4:	870080e7          	jalr	-1936(ra) # 80001510 <_Z4getcv>
        if(cc < 1)
    80003ca8:	02050463          	beqz	a0,80003cd0 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80003cac:	009984b3          	add	s1,s3,s1
    80003cb0:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80003cb4:	00a00793          	li	a5,10
    80003cb8:	00f50a63          	beq	a0,a5,80003ccc <_Z9getStringPci+0x80>
    80003cbc:	00d00793          	li	a5,13
    80003cc0:	fcf51ae3          	bne	a0,a5,80003c94 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80003cc4:	00090493          	mv	s1,s2
    80003cc8:	0080006f          	j	80003cd0 <_Z9getStringPci+0x84>
    80003ccc:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80003cd0:	009984b3          	add	s1,s3,s1
    80003cd4:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80003cd8:	00000613          	li	a2,0
    80003cdc:	00100593          	li	a1,1
    80003ce0:	00009517          	auipc	a0,0x9
    80003ce4:	32850513          	addi	a0,a0,808 # 8000d008 <lockPrint>
    80003ce8:	ffffd097          	auipc	ra,0xffffd
    80003cec:	530080e7          	jalr	1328(ra) # 80001218 <copy_and_swap>
    80003cf0:	fe0514e3          	bnez	a0,80003cd8 <_Z9getStringPci+0x8c>
    return buf;
}
    80003cf4:	00098513          	mv	a0,s3
    80003cf8:	02813083          	ld	ra,40(sp)
    80003cfc:	02013403          	ld	s0,32(sp)
    80003d00:	01813483          	ld	s1,24(sp)
    80003d04:	01013903          	ld	s2,16(sp)
    80003d08:	00813983          	ld	s3,8(sp)
    80003d0c:	00013a03          	ld	s4,0(sp)
    80003d10:	03010113          	addi	sp,sp,48
    80003d14:	00008067          	ret

0000000080003d18 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80003d18:	ff010113          	addi	sp,sp,-16
    80003d1c:	00813423          	sd	s0,8(sp)
    80003d20:	01010413          	addi	s0,sp,16
    80003d24:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80003d28:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80003d2c:	0006c603          	lbu	a2,0(a3)
    80003d30:	fd06071b          	addiw	a4,a2,-48
    80003d34:	0ff77713          	andi	a4,a4,255
    80003d38:	00900793          	li	a5,9
    80003d3c:	02e7e063          	bltu	a5,a4,80003d5c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80003d40:	0025179b          	slliw	a5,a0,0x2
    80003d44:	00a787bb          	addw	a5,a5,a0
    80003d48:	0017979b          	slliw	a5,a5,0x1
    80003d4c:	00168693          	addi	a3,a3,1
    80003d50:	00c787bb          	addw	a5,a5,a2
    80003d54:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80003d58:	fd5ff06f          	j	80003d2c <_Z11stringToIntPKc+0x14>
    return n;
}
    80003d5c:	00813403          	ld	s0,8(sp)
    80003d60:	01010113          	addi	sp,sp,16
    80003d64:	00008067          	ret

0000000080003d68 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80003d68:	fc010113          	addi	sp,sp,-64
    80003d6c:	02113c23          	sd	ra,56(sp)
    80003d70:	02813823          	sd	s0,48(sp)
    80003d74:	02913423          	sd	s1,40(sp)
    80003d78:	03213023          	sd	s2,32(sp)
    80003d7c:	01313c23          	sd	s3,24(sp)
    80003d80:	04010413          	addi	s0,sp,64
    80003d84:	00050493          	mv	s1,a0
    80003d88:	00058913          	mv	s2,a1
    80003d8c:	00060993          	mv	s3,a2
    LOCK();
    80003d90:	00100613          	li	a2,1
    80003d94:	00000593          	li	a1,0
    80003d98:	00009517          	auipc	a0,0x9
    80003d9c:	27050513          	addi	a0,a0,624 # 8000d008 <lockPrint>
    80003da0:	ffffd097          	auipc	ra,0xffffd
    80003da4:	478080e7          	jalr	1144(ra) # 80001218 <copy_and_swap>
    80003da8:	fe0514e3          	bnez	a0,80003d90 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80003dac:	00098463          	beqz	s3,80003db4 <_Z8printIntiii+0x4c>
    80003db0:	0804c463          	bltz	s1,80003e38 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80003db4:	0004851b          	sext.w	a0,s1
    neg = 0;
    80003db8:	00000593          	li	a1,0
    }

    i = 0;
    80003dbc:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80003dc0:	0009079b          	sext.w	a5,s2
    80003dc4:	0325773b          	remuw	a4,a0,s2
    80003dc8:	00048613          	mv	a2,s1
    80003dcc:	0014849b          	addiw	s1,s1,1
    80003dd0:	02071693          	slli	a3,a4,0x20
    80003dd4:	0206d693          	srli	a3,a3,0x20
    80003dd8:	00005717          	auipc	a4,0x5
    80003ddc:	09870713          	addi	a4,a4,152 # 80008e70 <digits>
    80003de0:	00d70733          	add	a4,a4,a3
    80003de4:	00074683          	lbu	a3,0(a4)
    80003de8:	fd040713          	addi	a4,s0,-48
    80003dec:	00c70733          	add	a4,a4,a2
    80003df0:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80003df4:	0005071b          	sext.w	a4,a0
    80003df8:	0325553b          	divuw	a0,a0,s2
    80003dfc:	fcf772e3          	bgeu	a4,a5,80003dc0 <_Z8printIntiii+0x58>
    if(neg)
    80003e00:	00058c63          	beqz	a1,80003e18 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80003e04:	fd040793          	addi	a5,s0,-48
    80003e08:	009784b3          	add	s1,a5,s1
    80003e0c:	02d00793          	li	a5,45
    80003e10:	fef48823          	sb	a5,-16(s1)
    80003e14:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80003e18:	fff4849b          	addiw	s1,s1,-1
    80003e1c:	0204c463          	bltz	s1,80003e44 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80003e20:	fd040793          	addi	a5,s0,-48
    80003e24:	009787b3          	add	a5,a5,s1
    80003e28:	ff07c503          	lbu	a0,-16(a5)
    80003e2c:	ffffd097          	auipc	ra,0xffffd
    80003e30:	70c080e7          	jalr	1804(ra) # 80001538 <_Z4putcc>
    80003e34:	fe5ff06f          	j	80003e18 <_Z8printIntiii+0xb0>
        x = -xx;
    80003e38:	4090053b          	negw	a0,s1
        neg = 1;
    80003e3c:	00100593          	li	a1,1
        x = -xx;
    80003e40:	f7dff06f          	j	80003dbc <_Z8printIntiii+0x54>

    UNLOCK();
    80003e44:	00000613          	li	a2,0
    80003e48:	00100593          	li	a1,1
    80003e4c:	00009517          	auipc	a0,0x9
    80003e50:	1bc50513          	addi	a0,a0,444 # 8000d008 <lockPrint>
    80003e54:	ffffd097          	auipc	ra,0xffffd
    80003e58:	3c4080e7          	jalr	964(ra) # 80001218 <copy_and_swap>
    80003e5c:	fe0514e3          	bnez	a0,80003e44 <_Z8printIntiii+0xdc>
}
    80003e60:	03813083          	ld	ra,56(sp)
    80003e64:	03013403          	ld	s0,48(sp)
    80003e68:	02813483          	ld	s1,40(sp)
    80003e6c:	02013903          	ld	s2,32(sp)
    80003e70:	01813983          	ld	s3,24(sp)
    80003e74:	04010113          	addi	sp,sp,64
    80003e78:	00008067          	ret

0000000080003e7c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003e7c:	fd010113          	addi	sp,sp,-48
    80003e80:	02113423          	sd	ra,40(sp)
    80003e84:	02813023          	sd	s0,32(sp)
    80003e88:	00913c23          	sd	s1,24(sp)
    80003e8c:	01213823          	sd	s2,16(sp)
    80003e90:	01313423          	sd	s3,8(sp)
    80003e94:	03010413          	addi	s0,sp,48
    80003e98:	00050493          	mv	s1,a0
    80003e9c:	00058913          	mv	s2,a1
    80003ea0:	0015879b          	addiw	a5,a1,1
    80003ea4:	0007851b          	sext.w	a0,a5
    80003ea8:	00f4a023          	sw	a5,0(s1)
    80003eac:	0004a823          	sw	zero,16(s1)
    80003eb0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003eb4:	00251513          	slli	a0,a0,0x2
    80003eb8:	ffffd097          	auipc	ra,0xffffd
    80003ebc:	3a0080e7          	jalr	928(ra) # 80001258 <_Z9mem_allocm>
    80003ec0:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80003ec4:	01000513          	li	a0,16
    80003ec8:	fffff097          	auipc	ra,0xfffff
    80003ecc:	a5c080e7          	jalr	-1444(ra) # 80002924 <_Znwm>
    80003ed0:	00050993          	mv	s3,a0
    80003ed4:	00000593          	li	a1,0
    80003ed8:	fffff097          	auipc	ra,0xfffff
    80003edc:	ca0080e7          	jalr	-864(ra) # 80002b78 <_ZN9SemaphoreC1Ej>
    80003ee0:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80003ee4:	01000513          	li	a0,16
    80003ee8:	fffff097          	auipc	ra,0xfffff
    80003eec:	a3c080e7          	jalr	-1476(ra) # 80002924 <_Znwm>
    80003ef0:	00050993          	mv	s3,a0
    80003ef4:	00090593          	mv	a1,s2
    80003ef8:	fffff097          	auipc	ra,0xfffff
    80003efc:	c80080e7          	jalr	-896(ra) # 80002b78 <_ZN9SemaphoreC1Ej>
    80003f00:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80003f04:	01000513          	li	a0,16
    80003f08:	fffff097          	auipc	ra,0xfffff
    80003f0c:	a1c080e7          	jalr	-1508(ra) # 80002924 <_Znwm>
    80003f10:	00050913          	mv	s2,a0
    80003f14:	00100593          	li	a1,1
    80003f18:	fffff097          	auipc	ra,0xfffff
    80003f1c:	c60080e7          	jalr	-928(ra) # 80002b78 <_ZN9SemaphoreC1Ej>
    80003f20:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80003f24:	01000513          	li	a0,16
    80003f28:	fffff097          	auipc	ra,0xfffff
    80003f2c:	9fc080e7          	jalr	-1540(ra) # 80002924 <_Znwm>
    80003f30:	00050913          	mv	s2,a0
    80003f34:	00100593          	li	a1,1
    80003f38:	fffff097          	auipc	ra,0xfffff
    80003f3c:	c40080e7          	jalr	-960(ra) # 80002b78 <_ZN9SemaphoreC1Ej>
    80003f40:	0324b823          	sd	s2,48(s1)
}
    80003f44:	02813083          	ld	ra,40(sp)
    80003f48:	02013403          	ld	s0,32(sp)
    80003f4c:	01813483          	ld	s1,24(sp)
    80003f50:	01013903          	ld	s2,16(sp)
    80003f54:	00813983          	ld	s3,8(sp)
    80003f58:	03010113          	addi	sp,sp,48
    80003f5c:	00008067          	ret
    80003f60:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80003f64:	00098513          	mv	a0,s3
    80003f68:	fffff097          	auipc	ra,0xfffff
    80003f6c:	9e4080e7          	jalr	-1564(ra) # 8000294c <_ZdlPv>
    80003f70:	00048513          	mv	a0,s1
    80003f74:	0000a097          	auipc	ra,0xa
    80003f78:	174080e7          	jalr	372(ra) # 8000e0e8 <_Unwind_Resume>
    80003f7c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80003f80:	00098513          	mv	a0,s3
    80003f84:	fffff097          	auipc	ra,0xfffff
    80003f88:	9c8080e7          	jalr	-1592(ra) # 8000294c <_ZdlPv>
    80003f8c:	00048513          	mv	a0,s1
    80003f90:	0000a097          	auipc	ra,0xa
    80003f94:	158080e7          	jalr	344(ra) # 8000e0e8 <_Unwind_Resume>
    80003f98:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80003f9c:	00090513          	mv	a0,s2
    80003fa0:	fffff097          	auipc	ra,0xfffff
    80003fa4:	9ac080e7          	jalr	-1620(ra) # 8000294c <_ZdlPv>
    80003fa8:	00048513          	mv	a0,s1
    80003fac:	0000a097          	auipc	ra,0xa
    80003fb0:	13c080e7          	jalr	316(ra) # 8000e0e8 <_Unwind_Resume>
    80003fb4:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80003fb8:	00090513          	mv	a0,s2
    80003fbc:	fffff097          	auipc	ra,0xfffff
    80003fc0:	990080e7          	jalr	-1648(ra) # 8000294c <_ZdlPv>
    80003fc4:	00048513          	mv	a0,s1
    80003fc8:	0000a097          	auipc	ra,0xa
    80003fcc:	120080e7          	jalr	288(ra) # 8000e0e8 <_Unwind_Resume>

0000000080003fd0 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80003fd0:	fe010113          	addi	sp,sp,-32
    80003fd4:	00113c23          	sd	ra,24(sp)
    80003fd8:	00813823          	sd	s0,16(sp)
    80003fdc:	00913423          	sd	s1,8(sp)
    80003fe0:	01213023          	sd	s2,0(sp)
    80003fe4:	02010413          	addi	s0,sp,32
    80003fe8:	00050493          	mv	s1,a0
    80003fec:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80003ff0:	01853503          	ld	a0,24(a0)
    80003ff4:	fffff097          	auipc	ra,0xfffff
    80003ff8:	b4c080e7          	jalr	-1204(ra) # 80002b40 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80003ffc:	0304b503          	ld	a0,48(s1)
    80004000:	fffff097          	auipc	ra,0xfffff
    80004004:	b40080e7          	jalr	-1216(ra) # 80002b40 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80004008:	0084b783          	ld	a5,8(s1)
    8000400c:	0144a703          	lw	a4,20(s1)
    80004010:	00271713          	slli	a4,a4,0x2
    80004014:	00e787b3          	add	a5,a5,a4
    80004018:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000401c:	0144a783          	lw	a5,20(s1)
    80004020:	0017879b          	addiw	a5,a5,1
    80004024:	0004a703          	lw	a4,0(s1)
    80004028:	02e7e7bb          	remw	a5,a5,a4
    8000402c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80004030:	0304b503          	ld	a0,48(s1)
    80004034:	fffff097          	auipc	ra,0xfffff
    80004038:	b90080e7          	jalr	-1136(ra) # 80002bc4 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    8000403c:	0204b503          	ld	a0,32(s1)
    80004040:	fffff097          	auipc	ra,0xfffff
    80004044:	b84080e7          	jalr	-1148(ra) # 80002bc4 <_ZN9Semaphore6signalEv>

}
    80004048:	01813083          	ld	ra,24(sp)
    8000404c:	01013403          	ld	s0,16(sp)
    80004050:	00813483          	ld	s1,8(sp)
    80004054:	00013903          	ld	s2,0(sp)
    80004058:	02010113          	addi	sp,sp,32
    8000405c:	00008067          	ret

0000000080004060 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80004060:	fe010113          	addi	sp,sp,-32
    80004064:	00113c23          	sd	ra,24(sp)
    80004068:	00813823          	sd	s0,16(sp)
    8000406c:	00913423          	sd	s1,8(sp)
    80004070:	01213023          	sd	s2,0(sp)
    80004074:	02010413          	addi	s0,sp,32
    80004078:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000407c:	02053503          	ld	a0,32(a0)
    80004080:	fffff097          	auipc	ra,0xfffff
    80004084:	ac0080e7          	jalr	-1344(ra) # 80002b40 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80004088:	0284b503          	ld	a0,40(s1)
    8000408c:	fffff097          	auipc	ra,0xfffff
    80004090:	ab4080e7          	jalr	-1356(ra) # 80002b40 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80004094:	0084b703          	ld	a4,8(s1)
    80004098:	0104a783          	lw	a5,16(s1)
    8000409c:	00279693          	slli	a3,a5,0x2
    800040a0:	00d70733          	add	a4,a4,a3
    800040a4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800040a8:	0017879b          	addiw	a5,a5,1
    800040ac:	0004a703          	lw	a4,0(s1)
    800040b0:	02e7e7bb          	remw	a5,a5,a4
    800040b4:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800040b8:	0284b503          	ld	a0,40(s1)
    800040bc:	fffff097          	auipc	ra,0xfffff
    800040c0:	b08080e7          	jalr	-1272(ra) # 80002bc4 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800040c4:	0184b503          	ld	a0,24(s1)
    800040c8:	fffff097          	auipc	ra,0xfffff
    800040cc:	afc080e7          	jalr	-1284(ra) # 80002bc4 <_ZN9Semaphore6signalEv>

    return ret;
}
    800040d0:	00090513          	mv	a0,s2
    800040d4:	01813083          	ld	ra,24(sp)
    800040d8:	01013403          	ld	s0,16(sp)
    800040dc:	00813483          	ld	s1,8(sp)
    800040e0:	00013903          	ld	s2,0(sp)
    800040e4:	02010113          	addi	sp,sp,32
    800040e8:	00008067          	ret

00000000800040ec <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800040ec:	fe010113          	addi	sp,sp,-32
    800040f0:	00113c23          	sd	ra,24(sp)
    800040f4:	00813823          	sd	s0,16(sp)
    800040f8:	00913423          	sd	s1,8(sp)
    800040fc:	01213023          	sd	s2,0(sp)
    80004100:	02010413          	addi	s0,sp,32
    80004104:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80004108:	02853503          	ld	a0,40(a0)
    8000410c:	fffff097          	auipc	ra,0xfffff
    80004110:	a34080e7          	jalr	-1484(ra) # 80002b40 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80004114:	0304b503          	ld	a0,48(s1)
    80004118:	fffff097          	auipc	ra,0xfffff
    8000411c:	a28080e7          	jalr	-1496(ra) # 80002b40 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80004120:	0144a783          	lw	a5,20(s1)
    80004124:	0104a903          	lw	s2,16(s1)
    80004128:	0327ce63          	blt	a5,s2,80004164 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    8000412c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80004130:	0304b503          	ld	a0,48(s1)
    80004134:	fffff097          	auipc	ra,0xfffff
    80004138:	a90080e7          	jalr	-1392(ra) # 80002bc4 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    8000413c:	0284b503          	ld	a0,40(s1)
    80004140:	fffff097          	auipc	ra,0xfffff
    80004144:	a84080e7          	jalr	-1404(ra) # 80002bc4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80004148:	00090513          	mv	a0,s2
    8000414c:	01813083          	ld	ra,24(sp)
    80004150:	01013403          	ld	s0,16(sp)
    80004154:	00813483          	ld	s1,8(sp)
    80004158:	00013903          	ld	s2,0(sp)
    8000415c:	02010113          	addi	sp,sp,32
    80004160:	00008067          	ret
        ret = cap - head + tail;
    80004164:	0004a703          	lw	a4,0(s1)
    80004168:	4127093b          	subw	s2,a4,s2
    8000416c:	00f9093b          	addw	s2,s2,a5
    80004170:	fc1ff06f          	j	80004130 <_ZN9BufferCPP6getCntEv+0x44>

0000000080004174 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80004174:	fe010113          	addi	sp,sp,-32
    80004178:	00113c23          	sd	ra,24(sp)
    8000417c:	00813823          	sd	s0,16(sp)
    80004180:	00913423          	sd	s1,8(sp)
    80004184:	02010413          	addi	s0,sp,32
    80004188:	00050493          	mv	s1,a0
    Console::putc('\n');
    8000418c:	00a00513          	li	a0,10
    80004190:	fffff097          	auipc	ra,0xfffff
    80004194:	a94080e7          	jalr	-1388(ra) # 80002c24 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80004198:	00003517          	auipc	a0,0x3
    8000419c:	fb050513          	addi	a0,a0,-80 # 80007148 <CONSOLE_STATUS+0x138>
    800041a0:	00000097          	auipc	ra,0x0
    800041a4:	a30080e7          	jalr	-1488(ra) # 80003bd0 <_Z11printStringPKc>
    while (getCnt()) {
    800041a8:	00048513          	mv	a0,s1
    800041ac:	00000097          	auipc	ra,0x0
    800041b0:	f40080e7          	jalr	-192(ra) # 800040ec <_ZN9BufferCPP6getCntEv>
    800041b4:	02050c63          	beqz	a0,800041ec <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800041b8:	0084b783          	ld	a5,8(s1)
    800041bc:	0104a703          	lw	a4,16(s1)
    800041c0:	00271713          	slli	a4,a4,0x2
    800041c4:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800041c8:	0007c503          	lbu	a0,0(a5)
    800041cc:	fffff097          	auipc	ra,0xfffff
    800041d0:	a58080e7          	jalr	-1448(ra) # 80002c24 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800041d4:	0104a783          	lw	a5,16(s1)
    800041d8:	0017879b          	addiw	a5,a5,1
    800041dc:	0004a703          	lw	a4,0(s1)
    800041e0:	02e7e7bb          	remw	a5,a5,a4
    800041e4:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800041e8:	fc1ff06f          	j	800041a8 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800041ec:	02100513          	li	a0,33
    800041f0:	fffff097          	auipc	ra,0xfffff
    800041f4:	a34080e7          	jalr	-1484(ra) # 80002c24 <_ZN7Console4putcEc>
    Console::putc('\n');
    800041f8:	00a00513          	li	a0,10
    800041fc:	fffff097          	auipc	ra,0xfffff
    80004200:	a28080e7          	jalr	-1496(ra) # 80002c24 <_ZN7Console4putcEc>
    mem_free(buffer);
    80004204:	0084b503          	ld	a0,8(s1)
    80004208:	ffffd097          	auipc	ra,0xffffd
    8000420c:	080080e7          	jalr	128(ra) # 80001288 <_Z8mem_freePv>
    delete itemAvailable;
    80004210:	0204b503          	ld	a0,32(s1)
    80004214:	00050863          	beqz	a0,80004224 <_ZN9BufferCPPD1Ev+0xb0>
    80004218:	00053783          	ld	a5,0(a0)
    8000421c:	0087b783          	ld	a5,8(a5)
    80004220:	000780e7          	jalr	a5
    delete spaceAvailable;
    80004224:	0184b503          	ld	a0,24(s1)
    80004228:	00050863          	beqz	a0,80004238 <_ZN9BufferCPPD1Ev+0xc4>
    8000422c:	00053783          	ld	a5,0(a0)
    80004230:	0087b783          	ld	a5,8(a5)
    80004234:	000780e7          	jalr	a5
    delete mutexTail;
    80004238:	0304b503          	ld	a0,48(s1)
    8000423c:	00050863          	beqz	a0,8000424c <_ZN9BufferCPPD1Ev+0xd8>
    80004240:	00053783          	ld	a5,0(a0)
    80004244:	0087b783          	ld	a5,8(a5)
    80004248:	000780e7          	jalr	a5
    delete mutexHead;
    8000424c:	0284b503          	ld	a0,40(s1)
    80004250:	00050863          	beqz	a0,80004260 <_ZN9BufferCPPD1Ev+0xec>
    80004254:	00053783          	ld	a5,0(a0)
    80004258:	0087b783          	ld	a5,8(a5)
    8000425c:	000780e7          	jalr	a5
}
    80004260:	01813083          	ld	ra,24(sp)
    80004264:	01013403          	ld	s0,16(sp)
    80004268:	00813483          	ld	s1,8(sp)
    8000426c:	02010113          	addi	sp,sp,32
    80004270:	00008067          	ret

0000000080004274 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80004274:	fe010113          	addi	sp,sp,-32
    80004278:	00113c23          	sd	ra,24(sp)
    8000427c:	00813823          	sd	s0,16(sp)
    80004280:	00913423          	sd	s1,8(sp)
    80004284:	01213023          	sd	s2,0(sp)
    80004288:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000428c:	00000913          	li	s2,0
    80004290:	0380006f          	j	800042c8 <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004294:	ffffd097          	auipc	ra,0xffffd
    80004298:	0a0080e7          	jalr	160(ra) # 80001334 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000429c:	00148493          	addi	s1,s1,1
    800042a0:	000027b7          	lui	a5,0x2
    800042a4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800042a8:	0097ee63          	bltu	a5,s1,800042c4 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800042ac:	00000713          	li	a4,0
    800042b0:	000077b7          	lui	a5,0x7
    800042b4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800042b8:	fce7eee3          	bltu	a5,a4,80004294 <_Z11workerBodyAPv+0x20>
    800042bc:	00170713          	addi	a4,a4,1
    800042c0:	ff1ff06f          	j	800042b0 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800042c4:	00190913          	addi	s2,s2,1
    800042c8:	00900793          	li	a5,9
    800042cc:	0527e063          	bltu	a5,s2,8000430c <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800042d0:	00003517          	auipc	a0,0x3
    800042d4:	e9050513          	addi	a0,a0,-368 # 80007160 <CONSOLE_STATUS+0x150>
    800042d8:	00000097          	auipc	ra,0x0
    800042dc:	8f8080e7          	jalr	-1800(ra) # 80003bd0 <_Z11printStringPKc>
    800042e0:	00000613          	li	a2,0
    800042e4:	00a00593          	li	a1,10
    800042e8:	0009051b          	sext.w	a0,s2
    800042ec:	00000097          	auipc	ra,0x0
    800042f0:	a7c080e7          	jalr	-1412(ra) # 80003d68 <_Z8printIntiii>
    800042f4:	00003517          	auipc	a0,0x3
    800042f8:	07450513          	addi	a0,a0,116 # 80007368 <CONSOLE_STATUS+0x358>
    800042fc:	00000097          	auipc	ra,0x0
    80004300:	8d4080e7          	jalr	-1836(ra) # 80003bd0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004304:	00000493          	li	s1,0
    80004308:	f99ff06f          	j	800042a0 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    8000430c:	00003517          	auipc	a0,0x3
    80004310:	e5c50513          	addi	a0,a0,-420 # 80007168 <CONSOLE_STATUS+0x158>
    80004314:	00000097          	auipc	ra,0x0
    80004318:	8bc080e7          	jalr	-1860(ra) # 80003bd0 <_Z11printStringPKc>
    finishedA = true;
    8000431c:	00100793          	li	a5,1
    80004320:	00009717          	auipc	a4,0x9
    80004324:	cef70823          	sb	a5,-784(a4) # 8000d010 <finishedA>
}
    80004328:	01813083          	ld	ra,24(sp)
    8000432c:	01013403          	ld	s0,16(sp)
    80004330:	00813483          	ld	s1,8(sp)
    80004334:	00013903          	ld	s2,0(sp)
    80004338:	02010113          	addi	sp,sp,32
    8000433c:	00008067          	ret

0000000080004340 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    80004340:	fe010113          	addi	sp,sp,-32
    80004344:	00113c23          	sd	ra,24(sp)
    80004348:	00813823          	sd	s0,16(sp)
    8000434c:	00913423          	sd	s1,8(sp)
    80004350:	01213023          	sd	s2,0(sp)
    80004354:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004358:	00000913          	li	s2,0
    8000435c:	0380006f          	j	80004394 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004360:	ffffd097          	auipc	ra,0xffffd
    80004364:	fd4080e7          	jalr	-44(ra) # 80001334 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004368:	00148493          	addi	s1,s1,1
    8000436c:	000027b7          	lui	a5,0x2
    80004370:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004374:	0097ee63          	bltu	a5,s1,80004390 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004378:	00000713          	li	a4,0
    8000437c:	000077b7          	lui	a5,0x7
    80004380:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004384:	fce7eee3          	bltu	a5,a4,80004360 <_Z11workerBodyBPv+0x20>
    80004388:	00170713          	addi	a4,a4,1
    8000438c:	ff1ff06f          	j	8000437c <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004390:	00190913          	addi	s2,s2,1
    80004394:	00f00793          	li	a5,15
    80004398:	0527e063          	bltu	a5,s2,800043d8 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    8000439c:	00003517          	auipc	a0,0x3
    800043a0:	ddc50513          	addi	a0,a0,-548 # 80007178 <CONSOLE_STATUS+0x168>
    800043a4:	00000097          	auipc	ra,0x0
    800043a8:	82c080e7          	jalr	-2004(ra) # 80003bd0 <_Z11printStringPKc>
    800043ac:	00000613          	li	a2,0
    800043b0:	00a00593          	li	a1,10
    800043b4:	0009051b          	sext.w	a0,s2
    800043b8:	00000097          	auipc	ra,0x0
    800043bc:	9b0080e7          	jalr	-1616(ra) # 80003d68 <_Z8printIntiii>
    800043c0:	00003517          	auipc	a0,0x3
    800043c4:	fa850513          	addi	a0,a0,-88 # 80007368 <CONSOLE_STATUS+0x358>
    800043c8:	00000097          	auipc	ra,0x0
    800043cc:	808080e7          	jalr	-2040(ra) # 80003bd0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800043d0:	00000493          	li	s1,0
    800043d4:	f99ff06f          	j	8000436c <_Z11workerBodyBPv+0x2c>
        }
    }
    thread_dispatch();
    800043d8:	ffffd097          	auipc	ra,0xffffd
    800043dc:	f5c080e7          	jalr	-164(ra) # 80001334 <_Z15thread_dispatchv>
    printString("B finished!\n");
    800043e0:	00003517          	auipc	a0,0x3
    800043e4:	da050513          	addi	a0,a0,-608 # 80007180 <CONSOLE_STATUS+0x170>
    800043e8:	fffff097          	auipc	ra,0xfffff
    800043ec:	7e8080e7          	jalr	2024(ra) # 80003bd0 <_Z11printStringPKc>
    finishedB = true;
    800043f0:	00100793          	li	a5,1
    800043f4:	00009717          	auipc	a4,0x9
    800043f8:	c0f70ea3          	sb	a5,-995(a4) # 8000d011 <finishedB>
}
    800043fc:	01813083          	ld	ra,24(sp)
    80004400:	01013403          	ld	s0,16(sp)
    80004404:	00813483          	ld	s1,8(sp)
    80004408:	00013903          	ld	s2,0(sp)
    8000440c:	02010113          	addi	sp,sp,32
    80004410:	00008067          	ret

0000000080004414 <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    80004414:	fe010113          	addi	sp,sp,-32
    80004418:	00113c23          	sd	ra,24(sp)
    8000441c:	00813823          	sd	s0,16(sp)
    80004420:	00913423          	sd	s1,8(sp)
    80004424:	01213023          	sd	s2,0(sp)
    80004428:	02010413          	addi	s0,sp,32
    8000442c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004430:	00100793          	li	a5,1
    80004434:	02a7f863          	bgeu	a5,a0,80004464 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004438:	00a00793          	li	a5,10
    8000443c:	02f577b3          	remu	a5,a0,a5
    80004440:	02078e63          	beqz	a5,8000447c <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004444:	fff48513          	addi	a0,s1,-1
    80004448:	00000097          	auipc	ra,0x0
    8000444c:	fcc080e7          	jalr	-52(ra) # 80004414 <_Z9fibonaccim>
    80004450:	00050913          	mv	s2,a0
    80004454:	ffe48513          	addi	a0,s1,-2
    80004458:	00000097          	auipc	ra,0x0
    8000445c:	fbc080e7          	jalr	-68(ra) # 80004414 <_Z9fibonaccim>
    80004460:	00a90533          	add	a0,s2,a0
}
    80004464:	01813083          	ld	ra,24(sp)
    80004468:	01013403          	ld	s0,16(sp)
    8000446c:	00813483          	ld	s1,8(sp)
    80004470:	00013903          	ld	s2,0(sp)
    80004474:	02010113          	addi	sp,sp,32
    80004478:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000447c:	ffffd097          	auipc	ra,0xffffd
    80004480:	eb8080e7          	jalr	-328(ra) # 80001334 <_Z15thread_dispatchv>
    80004484:	fc1ff06f          	j	80004444 <_Z9fibonaccim+0x30>

0000000080004488 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    80004488:	fe010113          	addi	sp,sp,-32
    8000448c:	00113c23          	sd	ra,24(sp)
    80004490:	00813823          	sd	s0,16(sp)
    80004494:	00913423          	sd	s1,8(sp)
    80004498:	01213023          	sd	s2,0(sp)
    8000449c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800044a0:	00000493          	li	s1,0
    800044a4:	0400006f          	j	800044e4 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800044a8:	00003517          	auipc	a0,0x3
    800044ac:	ce850513          	addi	a0,a0,-792 # 80007190 <CONSOLE_STATUS+0x180>
    800044b0:	fffff097          	auipc	ra,0xfffff
    800044b4:	720080e7          	jalr	1824(ra) # 80003bd0 <_Z11printStringPKc>
    800044b8:	00000613          	li	a2,0
    800044bc:	00a00593          	li	a1,10
    800044c0:	00048513          	mv	a0,s1
    800044c4:	00000097          	auipc	ra,0x0
    800044c8:	8a4080e7          	jalr	-1884(ra) # 80003d68 <_Z8printIntiii>
    800044cc:	00003517          	auipc	a0,0x3
    800044d0:	e9c50513          	addi	a0,a0,-356 # 80007368 <CONSOLE_STATUS+0x358>
    800044d4:	fffff097          	auipc	ra,0xfffff
    800044d8:	6fc080e7          	jalr	1788(ra) # 80003bd0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800044dc:	0014849b          	addiw	s1,s1,1
    800044e0:	0ff4f493          	andi	s1,s1,255
    800044e4:	00200793          	li	a5,2
    800044e8:	fc97f0e3          	bgeu	a5,s1,800044a8 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    800044ec:	00003517          	auipc	a0,0x3
    800044f0:	cac50513          	addi	a0,a0,-852 # 80007198 <CONSOLE_STATUS+0x188>
    800044f4:	fffff097          	auipc	ra,0xfffff
    800044f8:	6dc080e7          	jalr	1756(ra) # 80003bd0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800044fc:	00700313          	li	t1,7
    thread_dispatch();
    80004500:	ffffd097          	auipc	ra,0xffffd
    80004504:	e34080e7          	jalr	-460(ra) # 80001334 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004508:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    8000450c:	00003517          	auipc	a0,0x3
    80004510:	c9c50513          	addi	a0,a0,-868 # 800071a8 <CONSOLE_STATUS+0x198>
    80004514:	fffff097          	auipc	ra,0xfffff
    80004518:	6bc080e7          	jalr	1724(ra) # 80003bd0 <_Z11printStringPKc>
    8000451c:	00000613          	li	a2,0
    80004520:	00a00593          	li	a1,10
    80004524:	0009051b          	sext.w	a0,s2
    80004528:	00000097          	auipc	ra,0x0
    8000452c:	840080e7          	jalr	-1984(ra) # 80003d68 <_Z8printIntiii>
    80004530:	00003517          	auipc	a0,0x3
    80004534:	e3850513          	addi	a0,a0,-456 # 80007368 <CONSOLE_STATUS+0x358>
    80004538:	fffff097          	auipc	ra,0xfffff
    8000453c:	698080e7          	jalr	1688(ra) # 80003bd0 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004540:	00c00513          	li	a0,12
    80004544:	00000097          	auipc	ra,0x0
    80004548:	ed0080e7          	jalr	-304(ra) # 80004414 <_Z9fibonaccim>
    8000454c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004550:	00003517          	auipc	a0,0x3
    80004554:	c6050513          	addi	a0,a0,-928 # 800071b0 <CONSOLE_STATUS+0x1a0>
    80004558:	fffff097          	auipc	ra,0xfffff
    8000455c:	678080e7          	jalr	1656(ra) # 80003bd0 <_Z11printStringPKc>
    80004560:	00000613          	li	a2,0
    80004564:	00a00593          	li	a1,10
    80004568:	0009051b          	sext.w	a0,s2
    8000456c:	fffff097          	auipc	ra,0xfffff
    80004570:	7fc080e7          	jalr	2044(ra) # 80003d68 <_Z8printIntiii>
    80004574:	00003517          	auipc	a0,0x3
    80004578:	df450513          	addi	a0,a0,-524 # 80007368 <CONSOLE_STATUS+0x358>
    8000457c:	fffff097          	auipc	ra,0xfffff
    80004580:	654080e7          	jalr	1620(ra) # 80003bd0 <_Z11printStringPKc>
    80004584:	0400006f          	j	800045c4 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004588:	00003517          	auipc	a0,0x3
    8000458c:	c0850513          	addi	a0,a0,-1016 # 80007190 <CONSOLE_STATUS+0x180>
    80004590:	fffff097          	auipc	ra,0xfffff
    80004594:	640080e7          	jalr	1600(ra) # 80003bd0 <_Z11printStringPKc>
    80004598:	00000613          	li	a2,0
    8000459c:	00a00593          	li	a1,10
    800045a0:	00048513          	mv	a0,s1
    800045a4:	fffff097          	auipc	ra,0xfffff
    800045a8:	7c4080e7          	jalr	1988(ra) # 80003d68 <_Z8printIntiii>
    800045ac:	00003517          	auipc	a0,0x3
    800045b0:	dbc50513          	addi	a0,a0,-580 # 80007368 <CONSOLE_STATUS+0x358>
    800045b4:	fffff097          	auipc	ra,0xfffff
    800045b8:	61c080e7          	jalr	1564(ra) # 80003bd0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800045bc:	0014849b          	addiw	s1,s1,1
    800045c0:	0ff4f493          	andi	s1,s1,255
    800045c4:	00500793          	li	a5,5
    800045c8:	fc97f0e3          	bgeu	a5,s1,80004588 <_Z11workerBodyCPv+0x100>
    }

    thread_dispatch();
    800045cc:	ffffd097          	auipc	ra,0xffffd
    800045d0:	d68080e7          	jalr	-664(ra) # 80001334 <_Z15thread_dispatchv>
    printString("A finished!\n");
    800045d4:	00003517          	auipc	a0,0x3
    800045d8:	b9450513          	addi	a0,a0,-1132 # 80007168 <CONSOLE_STATUS+0x158>
    800045dc:	fffff097          	auipc	ra,0xfffff
    800045e0:	5f4080e7          	jalr	1524(ra) # 80003bd0 <_Z11printStringPKc>
    finishedC = true;
    800045e4:	00100793          	li	a5,1
    800045e8:	00009717          	auipc	a4,0x9
    800045ec:	a2f70523          	sb	a5,-1494(a4) # 8000d012 <finishedC>
}
    800045f0:	01813083          	ld	ra,24(sp)
    800045f4:	01013403          	ld	s0,16(sp)
    800045f8:	00813483          	ld	s1,8(sp)
    800045fc:	00013903          	ld	s2,0(sp)
    80004600:	02010113          	addi	sp,sp,32
    80004604:	00008067          	ret

0000000080004608 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80004608:	fe010113          	addi	sp,sp,-32
    8000460c:	00113c23          	sd	ra,24(sp)
    80004610:	00813823          	sd	s0,16(sp)
    80004614:	00913423          	sd	s1,8(sp)
    80004618:	01213023          	sd	s2,0(sp)
    8000461c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004620:	00a00493          	li	s1,10
    80004624:	0400006f          	j	80004664 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004628:	00003517          	auipc	a0,0x3
    8000462c:	b9850513          	addi	a0,a0,-1128 # 800071c0 <CONSOLE_STATUS+0x1b0>
    80004630:	fffff097          	auipc	ra,0xfffff
    80004634:	5a0080e7          	jalr	1440(ra) # 80003bd0 <_Z11printStringPKc>
    80004638:	00000613          	li	a2,0
    8000463c:	00a00593          	li	a1,10
    80004640:	00048513          	mv	a0,s1
    80004644:	fffff097          	auipc	ra,0xfffff
    80004648:	724080e7          	jalr	1828(ra) # 80003d68 <_Z8printIntiii>
    8000464c:	00003517          	auipc	a0,0x3
    80004650:	d1c50513          	addi	a0,a0,-740 # 80007368 <CONSOLE_STATUS+0x358>
    80004654:	fffff097          	auipc	ra,0xfffff
    80004658:	57c080e7          	jalr	1404(ra) # 80003bd0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000465c:	0014849b          	addiw	s1,s1,1
    80004660:	0ff4f493          	andi	s1,s1,255
    80004664:	00c00793          	li	a5,12
    80004668:	fc97f0e3          	bgeu	a5,s1,80004628 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000466c:	00003517          	auipc	a0,0x3
    80004670:	b5c50513          	addi	a0,a0,-1188 # 800071c8 <CONSOLE_STATUS+0x1b8>
    80004674:	fffff097          	auipc	ra,0xfffff
    80004678:	55c080e7          	jalr	1372(ra) # 80003bd0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000467c:	00500313          	li	t1,5
    thread_dispatch();
    80004680:	ffffd097          	auipc	ra,0xffffd
    80004684:	cb4080e7          	jalr	-844(ra) # 80001334 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004688:	01000513          	li	a0,16
    8000468c:	00000097          	auipc	ra,0x0
    80004690:	d88080e7          	jalr	-632(ra) # 80004414 <_Z9fibonaccim>
    80004694:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004698:	00003517          	auipc	a0,0x3
    8000469c:	b4050513          	addi	a0,a0,-1216 # 800071d8 <CONSOLE_STATUS+0x1c8>
    800046a0:	fffff097          	auipc	ra,0xfffff
    800046a4:	530080e7          	jalr	1328(ra) # 80003bd0 <_Z11printStringPKc>
    800046a8:	00000613          	li	a2,0
    800046ac:	00a00593          	li	a1,10
    800046b0:	0009051b          	sext.w	a0,s2
    800046b4:	fffff097          	auipc	ra,0xfffff
    800046b8:	6b4080e7          	jalr	1716(ra) # 80003d68 <_Z8printIntiii>
    800046bc:	00003517          	auipc	a0,0x3
    800046c0:	cac50513          	addi	a0,a0,-852 # 80007368 <CONSOLE_STATUS+0x358>
    800046c4:	fffff097          	auipc	ra,0xfffff
    800046c8:	50c080e7          	jalr	1292(ra) # 80003bd0 <_Z11printStringPKc>
    800046cc:	0400006f          	j	8000470c <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800046d0:	00003517          	auipc	a0,0x3
    800046d4:	af050513          	addi	a0,a0,-1296 # 800071c0 <CONSOLE_STATUS+0x1b0>
    800046d8:	fffff097          	auipc	ra,0xfffff
    800046dc:	4f8080e7          	jalr	1272(ra) # 80003bd0 <_Z11printStringPKc>
    800046e0:	00000613          	li	a2,0
    800046e4:	00a00593          	li	a1,10
    800046e8:	00048513          	mv	a0,s1
    800046ec:	fffff097          	auipc	ra,0xfffff
    800046f0:	67c080e7          	jalr	1660(ra) # 80003d68 <_Z8printIntiii>
    800046f4:	00003517          	auipc	a0,0x3
    800046f8:	c7450513          	addi	a0,a0,-908 # 80007368 <CONSOLE_STATUS+0x358>
    800046fc:	fffff097          	auipc	ra,0xfffff
    80004700:	4d4080e7          	jalr	1236(ra) # 80003bd0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004704:	0014849b          	addiw	s1,s1,1
    80004708:	0ff4f493          	andi	s1,s1,255
    8000470c:	00f00793          	li	a5,15
    80004710:	fc97f0e3          	bgeu	a5,s1,800046d0 <_Z11workerBodyDPv+0xc8>
    }

    thread_dispatch();
    80004714:	ffffd097          	auipc	ra,0xffffd
    80004718:	c20080e7          	jalr	-992(ra) # 80001334 <_Z15thread_dispatchv>
    printString("D finished!\n");
    8000471c:	00003517          	auipc	a0,0x3
    80004720:	acc50513          	addi	a0,a0,-1332 # 800071e8 <CONSOLE_STATUS+0x1d8>
    80004724:	fffff097          	auipc	ra,0xfffff
    80004728:	4ac080e7          	jalr	1196(ra) # 80003bd0 <_Z11printStringPKc>
    finishedD = true;
    8000472c:	00100793          	li	a5,1
    80004730:	00009717          	auipc	a4,0x9
    80004734:	8ef701a3          	sb	a5,-1821(a4) # 8000d013 <finishedD>
}
    80004738:	01813083          	ld	ra,24(sp)
    8000473c:	01013403          	ld	s0,16(sp)
    80004740:	00813483          	ld	s1,8(sp)
    80004744:	00013903          	ld	s2,0(sp)
    80004748:	02010113          	addi	sp,sp,32
    8000474c:	00008067          	ret

0000000080004750 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004750:	fc010113          	addi	sp,sp,-64
    80004754:	02113c23          	sd	ra,56(sp)
    80004758:	02813823          	sd	s0,48(sp)
    8000475c:	02913423          	sd	s1,40(sp)
    80004760:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004764:	00000613          	li	a2,0
    80004768:	00000597          	auipc	a1,0x0
    8000476c:	b0c58593          	addi	a1,a1,-1268 # 80004274 <_Z11workerBodyAPv>
    80004770:	fc040513          	addi	a0,s0,-64
    80004774:	ffffd097          	auipc	ra,0xffffd
    80004778:	b40080e7          	jalr	-1216(ra) # 800012b4 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    8000477c:	00003517          	auipc	a0,0x3
    80004780:	a7c50513          	addi	a0,a0,-1412 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80004784:	fffff097          	auipc	ra,0xfffff
    80004788:	44c080e7          	jalr	1100(ra) # 80003bd0 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000478c:	00000613          	li	a2,0
    80004790:	00000597          	auipc	a1,0x0
    80004794:	bb058593          	addi	a1,a1,-1104 # 80004340 <_Z11workerBodyBPv>
    80004798:	fc840513          	addi	a0,s0,-56
    8000479c:	ffffd097          	auipc	ra,0xffffd
    800047a0:	b18080e7          	jalr	-1256(ra) # 800012b4 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    800047a4:	00003517          	auipc	a0,0x3
    800047a8:	a6c50513          	addi	a0,a0,-1428 # 80007210 <CONSOLE_STATUS+0x200>
    800047ac:	fffff097          	auipc	ra,0xfffff
    800047b0:	424080e7          	jalr	1060(ra) # 80003bd0 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800047b4:	00000613          	li	a2,0
    800047b8:	00000597          	auipc	a1,0x0
    800047bc:	cd058593          	addi	a1,a1,-816 # 80004488 <_Z11workerBodyCPv>
    800047c0:	fd040513          	addi	a0,s0,-48
    800047c4:	ffffd097          	auipc	ra,0xffffd
    800047c8:	af0080e7          	jalr	-1296(ra) # 800012b4 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    800047cc:	00003517          	auipc	a0,0x3
    800047d0:	a5c50513          	addi	a0,a0,-1444 # 80007228 <CONSOLE_STATUS+0x218>
    800047d4:	fffff097          	auipc	ra,0xfffff
    800047d8:	3fc080e7          	jalr	1020(ra) # 80003bd0 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800047dc:	00000613          	li	a2,0
    800047e0:	00000597          	auipc	a1,0x0
    800047e4:	e2858593          	addi	a1,a1,-472 # 80004608 <_Z11workerBodyDPv>
    800047e8:	fd840513          	addi	a0,s0,-40
    800047ec:	ffffd097          	auipc	ra,0xffffd
    800047f0:	ac8080e7          	jalr	-1336(ra) # 800012b4 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    800047f4:	00003517          	auipc	a0,0x3
    800047f8:	a4c50513          	addi	a0,a0,-1460 # 80007240 <CONSOLE_STATUS+0x230>
    800047fc:	fffff097          	auipc	ra,0xfffff
    80004800:	3d4080e7          	jalr	980(ra) # 80003bd0 <_Z11printStringPKc>
    80004804:	00c0006f          	j	80004810 <_Z18Threads_C_API_testv+0xc0>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004808:	ffffd097          	auipc	ra,0xffffd
    8000480c:	b2c080e7          	jalr	-1236(ra) # 80001334 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004810:	00009797          	auipc	a5,0x9
    80004814:	8007c783          	lbu	a5,-2048(a5) # 8000d010 <finishedA>
    80004818:	fe0788e3          	beqz	a5,80004808 <_Z18Threads_C_API_testv+0xb8>
    8000481c:	00008797          	auipc	a5,0x8
    80004820:	7f57c783          	lbu	a5,2037(a5) # 8000d011 <finishedB>
    80004824:	fe0782e3          	beqz	a5,80004808 <_Z18Threads_C_API_testv+0xb8>
    80004828:	00008797          	auipc	a5,0x8
    8000482c:	7ea7c783          	lbu	a5,2026(a5) # 8000d012 <finishedC>
    80004830:	fc078ce3          	beqz	a5,80004808 <_Z18Threads_C_API_testv+0xb8>
    80004834:	00008797          	auipc	a5,0x8
    80004838:	7df7c783          	lbu	a5,2015(a5) # 8000d013 <finishedD>
    8000483c:	fc0786e3          	beqz	a5,80004808 <_Z18Threads_C_API_testv+0xb8>
    }

    for (auto &thread: threads) { delete thread; }
    80004840:	fc040493          	addi	s1,s0,-64
    80004844:	0080006f          	j	8000484c <_Z18Threads_C_API_testv+0xfc>
    80004848:	00848493          	addi	s1,s1,8
    8000484c:	fe040793          	addi	a5,s0,-32
    80004850:	00f48c63          	beq	s1,a5,80004868 <_Z18Threads_C_API_testv+0x118>
    80004854:	0004b503          	ld	a0,0(s1)
    80004858:	fe0508e3          	beqz	a0,80004848 <_Z18Threads_C_API_testv+0xf8>
    8000485c:	ffffd097          	auipc	ra,0xffffd
    80004860:	d54080e7          	jalr	-684(ra) # 800015b0 <_ZN7_threaddlEPv>
    80004864:	fe5ff06f          	j	80004848 <_Z18Threads_C_API_testv+0xf8>
}
    80004868:	03813083          	ld	ra,56(sp)
    8000486c:	03013403          	ld	s0,48(sp)
    80004870:	02813483          	ld	s1,40(sp)
    80004874:	04010113          	addi	sp,sp,64
    80004878:	00008067          	ret

000000008000487c <_Z8userMainv>:

//#include "ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain()
{
    8000487c:	ff010113          	addi	sp,sp,-16
    80004880:	00113423          	sd	ra,8(sp)
    80004884:	00813023          	sd	s0,0(sp)
    80004888:	01010413          	addi	s0,sp,16
    //__asm__ volatile("csrr a0, sstatus"); // test for changing privilege

    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    8000488c:	00000097          	auipc	ra,0x0
    80004890:	ec4080e7          	jalr	-316(ra) # 80004750 <_Z18Threads_C_API_testv>
    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    80004894:	00813083          	ld	ra,8(sp)
    80004898:	00013403          	ld	s0,0(sp)
    8000489c:	01010113          	addi	sp,sp,16
    800048a0:	00008067          	ret

00000000800048a4 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800048a4:	fe010113          	addi	sp,sp,-32
    800048a8:	00113c23          	sd	ra,24(sp)
    800048ac:	00813823          	sd	s0,16(sp)
    800048b0:	00913423          	sd	s1,8(sp)
    800048b4:	01213023          	sd	s2,0(sp)
    800048b8:	02010413          	addi	s0,sp,32
    800048bc:	00050493          	mv	s1,a0
    800048c0:	00058913          	mv	s2,a1
    800048c4:	0015879b          	addiw	a5,a1,1
    800048c8:	0007851b          	sext.w	a0,a5
    800048cc:	00f4a023          	sw	a5,0(s1)
    800048d0:	0004a823          	sw	zero,16(s1)
    800048d4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800048d8:	00251513          	slli	a0,a0,0x2
    800048dc:	ffffd097          	auipc	ra,0xffffd
    800048e0:	97c080e7          	jalr	-1668(ra) # 80001258 <_Z9mem_allocm>
    800048e4:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800048e8:	00000593          	li	a1,0
    800048ec:	02048513          	addi	a0,s1,32
    800048f0:	ffffd097          	auipc	ra,0xffffd
    800048f4:	a8c080e7          	jalr	-1396(ra) # 8000137c <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    800048f8:	00090593          	mv	a1,s2
    800048fc:	01848513          	addi	a0,s1,24
    80004900:	ffffd097          	auipc	ra,0xffffd
    80004904:	a7c080e7          	jalr	-1412(ra) # 8000137c <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80004908:	00100593          	li	a1,1
    8000490c:	02848513          	addi	a0,s1,40
    80004910:	ffffd097          	auipc	ra,0xffffd
    80004914:	a6c080e7          	jalr	-1428(ra) # 8000137c <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80004918:	00100593          	li	a1,1
    8000491c:	03048513          	addi	a0,s1,48
    80004920:	ffffd097          	auipc	ra,0xffffd
    80004924:	a5c080e7          	jalr	-1444(ra) # 8000137c <_Z8sem_openPP4_semj>
}
    80004928:	01813083          	ld	ra,24(sp)
    8000492c:	01013403          	ld	s0,16(sp)
    80004930:	00813483          	ld	s1,8(sp)
    80004934:	00013903          	ld	s2,0(sp)
    80004938:	02010113          	addi	sp,sp,32
    8000493c:	00008067          	ret

0000000080004940 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80004940:	fe010113          	addi	sp,sp,-32
    80004944:	00113c23          	sd	ra,24(sp)
    80004948:	00813823          	sd	s0,16(sp)
    8000494c:	00913423          	sd	s1,8(sp)
    80004950:	01213023          	sd	s2,0(sp)
    80004954:	02010413          	addi	s0,sp,32
    80004958:	00050493          	mv	s1,a0
    8000495c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80004960:	01853503          	ld	a0,24(a0)
    80004964:	ffffd097          	auipc	ra,0xffffd
    80004968:	a7c080e7          	jalr	-1412(ra) # 800013e0 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    8000496c:	0304b503          	ld	a0,48(s1)
    80004970:	ffffd097          	auipc	ra,0xffffd
    80004974:	a70080e7          	jalr	-1424(ra) # 800013e0 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80004978:	0084b783          	ld	a5,8(s1)
    8000497c:	0144a703          	lw	a4,20(s1)
    80004980:	00271713          	slli	a4,a4,0x2
    80004984:	00e787b3          	add	a5,a5,a4
    80004988:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000498c:	0144a783          	lw	a5,20(s1)
    80004990:	0017879b          	addiw	a5,a5,1
    80004994:	0004a703          	lw	a4,0(s1)
    80004998:	02e7e7bb          	remw	a5,a5,a4
    8000499c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800049a0:	0304b503          	ld	a0,48(s1)
    800049a4:	ffffd097          	auipc	ra,0xffffd
    800049a8:	a68080e7          	jalr	-1432(ra) # 8000140c <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    800049ac:	0204b503          	ld	a0,32(s1)
    800049b0:	ffffd097          	auipc	ra,0xffffd
    800049b4:	a5c080e7          	jalr	-1444(ra) # 8000140c <_Z10sem_signalP4_sem>

}
    800049b8:	01813083          	ld	ra,24(sp)
    800049bc:	01013403          	ld	s0,16(sp)
    800049c0:	00813483          	ld	s1,8(sp)
    800049c4:	00013903          	ld	s2,0(sp)
    800049c8:	02010113          	addi	sp,sp,32
    800049cc:	00008067          	ret

00000000800049d0 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800049d0:	fe010113          	addi	sp,sp,-32
    800049d4:	00113c23          	sd	ra,24(sp)
    800049d8:	00813823          	sd	s0,16(sp)
    800049dc:	00913423          	sd	s1,8(sp)
    800049e0:	01213023          	sd	s2,0(sp)
    800049e4:	02010413          	addi	s0,sp,32
    800049e8:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800049ec:	02053503          	ld	a0,32(a0)
    800049f0:	ffffd097          	auipc	ra,0xffffd
    800049f4:	9f0080e7          	jalr	-1552(ra) # 800013e0 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    800049f8:	0284b503          	ld	a0,40(s1)
    800049fc:	ffffd097          	auipc	ra,0xffffd
    80004a00:	9e4080e7          	jalr	-1564(ra) # 800013e0 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80004a04:	0084b703          	ld	a4,8(s1)
    80004a08:	0104a783          	lw	a5,16(s1)
    80004a0c:	00279693          	slli	a3,a5,0x2
    80004a10:	00d70733          	add	a4,a4,a3
    80004a14:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004a18:	0017879b          	addiw	a5,a5,1
    80004a1c:	0004a703          	lw	a4,0(s1)
    80004a20:	02e7e7bb          	remw	a5,a5,a4
    80004a24:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80004a28:	0284b503          	ld	a0,40(s1)
    80004a2c:	ffffd097          	auipc	ra,0xffffd
    80004a30:	9e0080e7          	jalr	-1568(ra) # 8000140c <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80004a34:	0184b503          	ld	a0,24(s1)
    80004a38:	ffffd097          	auipc	ra,0xffffd
    80004a3c:	9d4080e7          	jalr	-1580(ra) # 8000140c <_Z10sem_signalP4_sem>

    return ret;
}
    80004a40:	00090513          	mv	a0,s2
    80004a44:	01813083          	ld	ra,24(sp)
    80004a48:	01013403          	ld	s0,16(sp)
    80004a4c:	00813483          	ld	s1,8(sp)
    80004a50:	00013903          	ld	s2,0(sp)
    80004a54:	02010113          	addi	sp,sp,32
    80004a58:	00008067          	ret

0000000080004a5c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80004a5c:	fe010113          	addi	sp,sp,-32
    80004a60:	00113c23          	sd	ra,24(sp)
    80004a64:	00813823          	sd	s0,16(sp)
    80004a68:	00913423          	sd	s1,8(sp)
    80004a6c:	01213023          	sd	s2,0(sp)
    80004a70:	02010413          	addi	s0,sp,32
    80004a74:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80004a78:	02853503          	ld	a0,40(a0)
    80004a7c:	ffffd097          	auipc	ra,0xffffd
    80004a80:	964080e7          	jalr	-1692(ra) # 800013e0 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80004a84:	0304b503          	ld	a0,48(s1)
    80004a88:	ffffd097          	auipc	ra,0xffffd
    80004a8c:	958080e7          	jalr	-1704(ra) # 800013e0 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80004a90:	0144a783          	lw	a5,20(s1)
    80004a94:	0104a903          	lw	s2,16(s1)
    80004a98:	0327ce63          	blt	a5,s2,80004ad4 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80004a9c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80004aa0:	0304b503          	ld	a0,48(s1)
    80004aa4:	ffffd097          	auipc	ra,0xffffd
    80004aa8:	968080e7          	jalr	-1688(ra) # 8000140c <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80004aac:	0284b503          	ld	a0,40(s1)
    80004ab0:	ffffd097          	auipc	ra,0xffffd
    80004ab4:	95c080e7          	jalr	-1700(ra) # 8000140c <_Z10sem_signalP4_sem>

    return ret;
    80004ab8:	00090513          	mv	a0,s2
    80004abc:	01813083          	ld	ra,24(sp)
    80004ac0:	01013403          	ld	s0,16(sp)
    80004ac4:	00813483          	ld	s1,8(sp)
    80004ac8:	00013903          	ld	s2,0(sp)
    80004acc:	02010113          	addi	sp,sp,32
    80004ad0:	00008067          	ret
        ret = cap - head + tail;
    80004ad4:	0004a703          	lw	a4,0(s1)
    80004ad8:	4127093b          	subw	s2,a4,s2
    80004adc:	00f9093b          	addw	s2,s2,a5
    80004ae0:	fc1ff06f          	j	80004aa0 <_ZN6Buffer6getCntEv+0x44>

0000000080004ae4 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80004ae4:	fe010113          	addi	sp,sp,-32
    80004ae8:	00113c23          	sd	ra,24(sp)
    80004aec:	00813823          	sd	s0,16(sp)
    80004af0:	00913423          	sd	s1,8(sp)
    80004af4:	02010413          	addi	s0,sp,32
    80004af8:	00050493          	mv	s1,a0
    putc('\n');
    80004afc:	00a00513          	li	a0,10
    80004b00:	ffffd097          	auipc	ra,0xffffd
    80004b04:	a38080e7          	jalr	-1480(ra) # 80001538 <_Z4putcc>
    printString("Buffer deleted!\n");
    80004b08:	00002517          	auipc	a0,0x2
    80004b0c:	64050513          	addi	a0,a0,1600 # 80007148 <CONSOLE_STATUS+0x138>
    80004b10:	fffff097          	auipc	ra,0xfffff
    80004b14:	0c0080e7          	jalr	192(ra) # 80003bd0 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80004b18:	00048513          	mv	a0,s1
    80004b1c:	00000097          	auipc	ra,0x0
    80004b20:	f40080e7          	jalr	-192(ra) # 80004a5c <_ZN6Buffer6getCntEv>
    80004b24:	02a05c63          	blez	a0,80004b5c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80004b28:	0084b783          	ld	a5,8(s1)
    80004b2c:	0104a703          	lw	a4,16(s1)
    80004b30:	00271713          	slli	a4,a4,0x2
    80004b34:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80004b38:	0007c503          	lbu	a0,0(a5)
    80004b3c:	ffffd097          	auipc	ra,0xffffd
    80004b40:	9fc080e7          	jalr	-1540(ra) # 80001538 <_Z4putcc>
        head = (head + 1) % cap;
    80004b44:	0104a783          	lw	a5,16(s1)
    80004b48:	0017879b          	addiw	a5,a5,1
    80004b4c:	0004a703          	lw	a4,0(s1)
    80004b50:	02e7e7bb          	remw	a5,a5,a4
    80004b54:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80004b58:	fc1ff06f          	j	80004b18 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80004b5c:	02100513          	li	a0,33
    80004b60:	ffffd097          	auipc	ra,0xffffd
    80004b64:	9d8080e7          	jalr	-1576(ra) # 80001538 <_Z4putcc>
    putc('\n');
    80004b68:	00a00513          	li	a0,10
    80004b6c:	ffffd097          	auipc	ra,0xffffd
    80004b70:	9cc080e7          	jalr	-1588(ra) # 80001538 <_Z4putcc>
    mem_free(buffer);
    80004b74:	0084b503          	ld	a0,8(s1)
    80004b78:	ffffc097          	auipc	ra,0xffffc
    80004b7c:	710080e7          	jalr	1808(ra) # 80001288 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80004b80:	0204b503          	ld	a0,32(s1)
    80004b84:	ffffd097          	auipc	ra,0xffffd
    80004b88:	830080e7          	jalr	-2000(ra) # 800013b4 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80004b8c:	0184b503          	ld	a0,24(s1)
    80004b90:	ffffd097          	auipc	ra,0xffffd
    80004b94:	824080e7          	jalr	-2012(ra) # 800013b4 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80004b98:	0304b503          	ld	a0,48(s1)
    80004b9c:	ffffd097          	auipc	ra,0xffffd
    80004ba0:	818080e7          	jalr	-2024(ra) # 800013b4 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80004ba4:	0284b503          	ld	a0,40(s1)
    80004ba8:	ffffd097          	auipc	ra,0xffffd
    80004bac:	80c080e7          	jalr	-2036(ra) # 800013b4 <_Z9sem_closeP4_sem>
}
    80004bb0:	01813083          	ld	ra,24(sp)
    80004bb4:	01013403          	ld	s0,16(sp)
    80004bb8:	00813483          	ld	s1,8(sp)
    80004bbc:	02010113          	addi	sp,sp,32
    80004bc0:	00008067          	ret

0000000080004bc4 <start>:
    80004bc4:	ff010113          	addi	sp,sp,-16
    80004bc8:	00813423          	sd	s0,8(sp)
    80004bcc:	01010413          	addi	s0,sp,16
    80004bd0:	300027f3          	csrr	a5,mstatus
    80004bd4:	ffffe737          	lui	a4,0xffffe
    80004bd8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff057f>
    80004bdc:	00e7f7b3          	and	a5,a5,a4
    80004be0:	00001737          	lui	a4,0x1
    80004be4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80004be8:	00e7e7b3          	or	a5,a5,a4
    80004bec:	30079073          	csrw	mstatus,a5
    80004bf0:	00000797          	auipc	a5,0x0
    80004bf4:	16078793          	addi	a5,a5,352 # 80004d50 <system_main>
    80004bf8:	34179073          	csrw	mepc,a5
    80004bfc:	00000793          	li	a5,0
    80004c00:	18079073          	csrw	satp,a5
    80004c04:	000107b7          	lui	a5,0x10
    80004c08:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80004c0c:	30279073          	csrw	medeleg,a5
    80004c10:	30379073          	csrw	mideleg,a5
    80004c14:	104027f3          	csrr	a5,sie
    80004c18:	2227e793          	ori	a5,a5,546
    80004c1c:	10479073          	csrw	sie,a5
    80004c20:	fff00793          	li	a5,-1
    80004c24:	00a7d793          	srli	a5,a5,0xa
    80004c28:	3b079073          	csrw	pmpaddr0,a5
    80004c2c:	00f00793          	li	a5,15
    80004c30:	3a079073          	csrw	pmpcfg0,a5
    80004c34:	f14027f3          	csrr	a5,mhartid
    80004c38:	0200c737          	lui	a4,0x200c
    80004c3c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004c40:	0007869b          	sext.w	a3,a5
    80004c44:	00269713          	slli	a4,a3,0x2
    80004c48:	000f4637          	lui	a2,0xf4
    80004c4c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004c50:	00d70733          	add	a4,a4,a3
    80004c54:	0037979b          	slliw	a5,a5,0x3
    80004c58:	020046b7          	lui	a3,0x2004
    80004c5c:	00d787b3          	add	a5,a5,a3
    80004c60:	00c585b3          	add	a1,a1,a2
    80004c64:	00371693          	slli	a3,a4,0x3
    80004c68:	00008717          	auipc	a4,0x8
    80004c6c:	3b870713          	addi	a4,a4,952 # 8000d020 <timer_scratch>
    80004c70:	00b7b023          	sd	a1,0(a5)
    80004c74:	00d70733          	add	a4,a4,a3
    80004c78:	00f73c23          	sd	a5,24(a4)
    80004c7c:	02c73023          	sd	a2,32(a4)
    80004c80:	34071073          	csrw	mscratch,a4
    80004c84:	00000797          	auipc	a5,0x0
    80004c88:	6ec78793          	addi	a5,a5,1772 # 80005370 <timervec>
    80004c8c:	30579073          	csrw	mtvec,a5
    80004c90:	300027f3          	csrr	a5,mstatus
    80004c94:	0087e793          	ori	a5,a5,8
    80004c98:	30079073          	csrw	mstatus,a5
    80004c9c:	304027f3          	csrr	a5,mie
    80004ca0:	0807e793          	ori	a5,a5,128
    80004ca4:	30479073          	csrw	mie,a5
    80004ca8:	f14027f3          	csrr	a5,mhartid
    80004cac:	0007879b          	sext.w	a5,a5
    80004cb0:	00078213          	mv	tp,a5
    80004cb4:	30200073          	mret
    80004cb8:	00813403          	ld	s0,8(sp)
    80004cbc:	01010113          	addi	sp,sp,16
    80004cc0:	00008067          	ret

0000000080004cc4 <timerinit>:
    80004cc4:	ff010113          	addi	sp,sp,-16
    80004cc8:	00813423          	sd	s0,8(sp)
    80004ccc:	01010413          	addi	s0,sp,16
    80004cd0:	f14027f3          	csrr	a5,mhartid
    80004cd4:	0200c737          	lui	a4,0x200c
    80004cd8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004cdc:	0007869b          	sext.w	a3,a5
    80004ce0:	00269713          	slli	a4,a3,0x2
    80004ce4:	000f4637          	lui	a2,0xf4
    80004ce8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004cec:	00d70733          	add	a4,a4,a3
    80004cf0:	0037979b          	slliw	a5,a5,0x3
    80004cf4:	020046b7          	lui	a3,0x2004
    80004cf8:	00d787b3          	add	a5,a5,a3
    80004cfc:	00c585b3          	add	a1,a1,a2
    80004d00:	00371693          	slli	a3,a4,0x3
    80004d04:	00008717          	auipc	a4,0x8
    80004d08:	31c70713          	addi	a4,a4,796 # 8000d020 <timer_scratch>
    80004d0c:	00b7b023          	sd	a1,0(a5)
    80004d10:	00d70733          	add	a4,a4,a3
    80004d14:	00f73c23          	sd	a5,24(a4)
    80004d18:	02c73023          	sd	a2,32(a4)
    80004d1c:	34071073          	csrw	mscratch,a4
    80004d20:	00000797          	auipc	a5,0x0
    80004d24:	65078793          	addi	a5,a5,1616 # 80005370 <timervec>
    80004d28:	30579073          	csrw	mtvec,a5
    80004d2c:	300027f3          	csrr	a5,mstatus
    80004d30:	0087e793          	ori	a5,a5,8
    80004d34:	30079073          	csrw	mstatus,a5
    80004d38:	304027f3          	csrr	a5,mie
    80004d3c:	0807e793          	ori	a5,a5,128
    80004d40:	30479073          	csrw	mie,a5
    80004d44:	00813403          	ld	s0,8(sp)
    80004d48:	01010113          	addi	sp,sp,16
    80004d4c:	00008067          	ret

0000000080004d50 <system_main>:
    80004d50:	fe010113          	addi	sp,sp,-32
    80004d54:	00813823          	sd	s0,16(sp)
    80004d58:	00913423          	sd	s1,8(sp)
    80004d5c:	00113c23          	sd	ra,24(sp)
    80004d60:	02010413          	addi	s0,sp,32
    80004d64:	00000097          	auipc	ra,0x0
    80004d68:	0c4080e7          	jalr	196(ra) # 80004e28 <cpuid>
    80004d6c:	00004497          	auipc	s1,0x4
    80004d70:	1c448493          	addi	s1,s1,452 # 80008f30 <started>
    80004d74:	02050263          	beqz	a0,80004d98 <system_main+0x48>
    80004d78:	0004a783          	lw	a5,0(s1)
    80004d7c:	0007879b          	sext.w	a5,a5
    80004d80:	fe078ce3          	beqz	a5,80004d78 <system_main+0x28>
    80004d84:	0ff0000f          	fence
    80004d88:	00002517          	auipc	a0,0x2
    80004d8c:	50050513          	addi	a0,a0,1280 # 80007288 <CONSOLE_STATUS+0x278>
    80004d90:	00001097          	auipc	ra,0x1
    80004d94:	a7c080e7          	jalr	-1412(ra) # 8000580c <panic>
    80004d98:	00001097          	auipc	ra,0x1
    80004d9c:	9d0080e7          	jalr	-1584(ra) # 80005768 <consoleinit>
    80004da0:	00001097          	auipc	ra,0x1
    80004da4:	15c080e7          	jalr	348(ra) # 80005efc <printfinit>
    80004da8:	00002517          	auipc	a0,0x2
    80004dac:	5c050513          	addi	a0,a0,1472 # 80007368 <CONSOLE_STATUS+0x358>
    80004db0:	00001097          	auipc	ra,0x1
    80004db4:	ab8080e7          	jalr	-1352(ra) # 80005868 <__printf>
    80004db8:	00002517          	auipc	a0,0x2
    80004dbc:	4a050513          	addi	a0,a0,1184 # 80007258 <CONSOLE_STATUS+0x248>
    80004dc0:	00001097          	auipc	ra,0x1
    80004dc4:	aa8080e7          	jalr	-1368(ra) # 80005868 <__printf>
    80004dc8:	00002517          	auipc	a0,0x2
    80004dcc:	5a050513          	addi	a0,a0,1440 # 80007368 <CONSOLE_STATUS+0x358>
    80004dd0:	00001097          	auipc	ra,0x1
    80004dd4:	a98080e7          	jalr	-1384(ra) # 80005868 <__printf>
    80004dd8:	00001097          	auipc	ra,0x1
    80004ddc:	4b0080e7          	jalr	1200(ra) # 80006288 <kinit>
    80004de0:	00000097          	auipc	ra,0x0
    80004de4:	148080e7          	jalr	328(ra) # 80004f28 <trapinit>
    80004de8:	00000097          	auipc	ra,0x0
    80004dec:	16c080e7          	jalr	364(ra) # 80004f54 <trapinithart>
    80004df0:	00000097          	auipc	ra,0x0
    80004df4:	5c0080e7          	jalr	1472(ra) # 800053b0 <plicinit>
    80004df8:	00000097          	auipc	ra,0x0
    80004dfc:	5e0080e7          	jalr	1504(ra) # 800053d8 <plicinithart>
    80004e00:	00000097          	auipc	ra,0x0
    80004e04:	078080e7          	jalr	120(ra) # 80004e78 <userinit>
    80004e08:	0ff0000f          	fence
    80004e0c:	00100793          	li	a5,1
    80004e10:	00002517          	auipc	a0,0x2
    80004e14:	46050513          	addi	a0,a0,1120 # 80007270 <CONSOLE_STATUS+0x260>
    80004e18:	00f4a023          	sw	a5,0(s1)
    80004e1c:	00001097          	auipc	ra,0x1
    80004e20:	a4c080e7          	jalr	-1460(ra) # 80005868 <__printf>
    80004e24:	0000006f          	j	80004e24 <system_main+0xd4>

0000000080004e28 <cpuid>:
    80004e28:	ff010113          	addi	sp,sp,-16
    80004e2c:	00813423          	sd	s0,8(sp)
    80004e30:	01010413          	addi	s0,sp,16
    80004e34:	00020513          	mv	a0,tp
    80004e38:	00813403          	ld	s0,8(sp)
    80004e3c:	0005051b          	sext.w	a0,a0
    80004e40:	01010113          	addi	sp,sp,16
    80004e44:	00008067          	ret

0000000080004e48 <mycpu>:
    80004e48:	ff010113          	addi	sp,sp,-16
    80004e4c:	00813423          	sd	s0,8(sp)
    80004e50:	01010413          	addi	s0,sp,16
    80004e54:	00020793          	mv	a5,tp
    80004e58:	00813403          	ld	s0,8(sp)
    80004e5c:	0007879b          	sext.w	a5,a5
    80004e60:	00779793          	slli	a5,a5,0x7
    80004e64:	00009517          	auipc	a0,0x9
    80004e68:	1ec50513          	addi	a0,a0,492 # 8000e050 <cpus>
    80004e6c:	00f50533          	add	a0,a0,a5
    80004e70:	01010113          	addi	sp,sp,16
    80004e74:	00008067          	ret

0000000080004e78 <userinit>:
    80004e78:	ff010113          	addi	sp,sp,-16
    80004e7c:	00813423          	sd	s0,8(sp)
    80004e80:	01010413          	addi	s0,sp,16
    80004e84:	00813403          	ld	s0,8(sp)
    80004e88:	01010113          	addi	sp,sp,16
    80004e8c:	ffffe317          	auipc	t1,0xffffe
    80004e90:	9c430067          	jr	-1596(t1) # 80002850 <main>

0000000080004e94 <either_copyout>:
    80004e94:	ff010113          	addi	sp,sp,-16
    80004e98:	00813023          	sd	s0,0(sp)
    80004e9c:	00113423          	sd	ra,8(sp)
    80004ea0:	01010413          	addi	s0,sp,16
    80004ea4:	02051663          	bnez	a0,80004ed0 <either_copyout+0x3c>
    80004ea8:	00058513          	mv	a0,a1
    80004eac:	00060593          	mv	a1,a2
    80004eb0:	0006861b          	sext.w	a2,a3
    80004eb4:	00002097          	auipc	ra,0x2
    80004eb8:	c60080e7          	jalr	-928(ra) # 80006b14 <__memmove>
    80004ebc:	00813083          	ld	ra,8(sp)
    80004ec0:	00013403          	ld	s0,0(sp)
    80004ec4:	00000513          	li	a0,0
    80004ec8:	01010113          	addi	sp,sp,16
    80004ecc:	00008067          	ret
    80004ed0:	00002517          	auipc	a0,0x2
    80004ed4:	3e050513          	addi	a0,a0,992 # 800072b0 <CONSOLE_STATUS+0x2a0>
    80004ed8:	00001097          	auipc	ra,0x1
    80004edc:	934080e7          	jalr	-1740(ra) # 8000580c <panic>

0000000080004ee0 <either_copyin>:
    80004ee0:	ff010113          	addi	sp,sp,-16
    80004ee4:	00813023          	sd	s0,0(sp)
    80004ee8:	00113423          	sd	ra,8(sp)
    80004eec:	01010413          	addi	s0,sp,16
    80004ef0:	02059463          	bnez	a1,80004f18 <either_copyin+0x38>
    80004ef4:	00060593          	mv	a1,a2
    80004ef8:	0006861b          	sext.w	a2,a3
    80004efc:	00002097          	auipc	ra,0x2
    80004f00:	c18080e7          	jalr	-1000(ra) # 80006b14 <__memmove>
    80004f04:	00813083          	ld	ra,8(sp)
    80004f08:	00013403          	ld	s0,0(sp)
    80004f0c:	00000513          	li	a0,0
    80004f10:	01010113          	addi	sp,sp,16
    80004f14:	00008067          	ret
    80004f18:	00002517          	auipc	a0,0x2
    80004f1c:	3c050513          	addi	a0,a0,960 # 800072d8 <CONSOLE_STATUS+0x2c8>
    80004f20:	00001097          	auipc	ra,0x1
    80004f24:	8ec080e7          	jalr	-1812(ra) # 8000580c <panic>

0000000080004f28 <trapinit>:
    80004f28:	ff010113          	addi	sp,sp,-16
    80004f2c:	00813423          	sd	s0,8(sp)
    80004f30:	01010413          	addi	s0,sp,16
    80004f34:	00813403          	ld	s0,8(sp)
    80004f38:	00002597          	auipc	a1,0x2
    80004f3c:	3c858593          	addi	a1,a1,968 # 80007300 <CONSOLE_STATUS+0x2f0>
    80004f40:	00009517          	auipc	a0,0x9
    80004f44:	19050513          	addi	a0,a0,400 # 8000e0d0 <tickslock>
    80004f48:	01010113          	addi	sp,sp,16
    80004f4c:	00001317          	auipc	t1,0x1
    80004f50:	5cc30067          	jr	1484(t1) # 80006518 <initlock>

0000000080004f54 <trapinithart>:
    80004f54:	ff010113          	addi	sp,sp,-16
    80004f58:	00813423          	sd	s0,8(sp)
    80004f5c:	01010413          	addi	s0,sp,16
    80004f60:	00000797          	auipc	a5,0x0
    80004f64:	30078793          	addi	a5,a5,768 # 80005260 <kernelvec>
    80004f68:	10579073          	csrw	stvec,a5
    80004f6c:	00813403          	ld	s0,8(sp)
    80004f70:	01010113          	addi	sp,sp,16
    80004f74:	00008067          	ret

0000000080004f78 <usertrap>:
    80004f78:	ff010113          	addi	sp,sp,-16
    80004f7c:	00813423          	sd	s0,8(sp)
    80004f80:	01010413          	addi	s0,sp,16
    80004f84:	00813403          	ld	s0,8(sp)
    80004f88:	01010113          	addi	sp,sp,16
    80004f8c:	00008067          	ret

0000000080004f90 <usertrapret>:
    80004f90:	ff010113          	addi	sp,sp,-16
    80004f94:	00813423          	sd	s0,8(sp)
    80004f98:	01010413          	addi	s0,sp,16
    80004f9c:	00813403          	ld	s0,8(sp)
    80004fa0:	01010113          	addi	sp,sp,16
    80004fa4:	00008067          	ret

0000000080004fa8 <kerneltrap>:
    80004fa8:	fe010113          	addi	sp,sp,-32
    80004fac:	00813823          	sd	s0,16(sp)
    80004fb0:	00113c23          	sd	ra,24(sp)
    80004fb4:	00913423          	sd	s1,8(sp)
    80004fb8:	02010413          	addi	s0,sp,32
    80004fbc:	142025f3          	csrr	a1,scause
    80004fc0:	100027f3          	csrr	a5,sstatus
    80004fc4:	0027f793          	andi	a5,a5,2
    80004fc8:	10079c63          	bnez	a5,800050e0 <kerneltrap+0x138>
    80004fcc:	142027f3          	csrr	a5,scause
    80004fd0:	0207ce63          	bltz	a5,8000500c <kerneltrap+0x64>
    80004fd4:	00002517          	auipc	a0,0x2
    80004fd8:	37450513          	addi	a0,a0,884 # 80007348 <CONSOLE_STATUS+0x338>
    80004fdc:	00001097          	auipc	ra,0x1
    80004fe0:	88c080e7          	jalr	-1908(ra) # 80005868 <__printf>
    80004fe4:	141025f3          	csrr	a1,sepc
    80004fe8:	14302673          	csrr	a2,stval
    80004fec:	00002517          	auipc	a0,0x2
    80004ff0:	36c50513          	addi	a0,a0,876 # 80007358 <CONSOLE_STATUS+0x348>
    80004ff4:	00001097          	auipc	ra,0x1
    80004ff8:	874080e7          	jalr	-1932(ra) # 80005868 <__printf>
    80004ffc:	00002517          	auipc	a0,0x2
    80005000:	37450513          	addi	a0,a0,884 # 80007370 <CONSOLE_STATUS+0x360>
    80005004:	00001097          	auipc	ra,0x1
    80005008:	808080e7          	jalr	-2040(ra) # 8000580c <panic>
    8000500c:	0ff7f713          	andi	a4,a5,255
    80005010:	00900693          	li	a3,9
    80005014:	04d70063          	beq	a4,a3,80005054 <kerneltrap+0xac>
    80005018:	fff00713          	li	a4,-1
    8000501c:	03f71713          	slli	a4,a4,0x3f
    80005020:	00170713          	addi	a4,a4,1
    80005024:	fae798e3          	bne	a5,a4,80004fd4 <kerneltrap+0x2c>
    80005028:	00000097          	auipc	ra,0x0
    8000502c:	e00080e7          	jalr	-512(ra) # 80004e28 <cpuid>
    80005030:	06050663          	beqz	a0,8000509c <kerneltrap+0xf4>
    80005034:	144027f3          	csrr	a5,sip
    80005038:	ffd7f793          	andi	a5,a5,-3
    8000503c:	14479073          	csrw	sip,a5
    80005040:	01813083          	ld	ra,24(sp)
    80005044:	01013403          	ld	s0,16(sp)
    80005048:	00813483          	ld	s1,8(sp)
    8000504c:	02010113          	addi	sp,sp,32
    80005050:	00008067          	ret
    80005054:	00000097          	auipc	ra,0x0
    80005058:	3d0080e7          	jalr	976(ra) # 80005424 <plic_claim>
    8000505c:	00a00793          	li	a5,10
    80005060:	00050493          	mv	s1,a0
    80005064:	06f50863          	beq	a0,a5,800050d4 <kerneltrap+0x12c>
    80005068:	fc050ce3          	beqz	a0,80005040 <kerneltrap+0x98>
    8000506c:	00050593          	mv	a1,a0
    80005070:	00002517          	auipc	a0,0x2
    80005074:	2b850513          	addi	a0,a0,696 # 80007328 <CONSOLE_STATUS+0x318>
    80005078:	00000097          	auipc	ra,0x0
    8000507c:	7f0080e7          	jalr	2032(ra) # 80005868 <__printf>
    80005080:	01013403          	ld	s0,16(sp)
    80005084:	01813083          	ld	ra,24(sp)
    80005088:	00048513          	mv	a0,s1
    8000508c:	00813483          	ld	s1,8(sp)
    80005090:	02010113          	addi	sp,sp,32
    80005094:	00000317          	auipc	t1,0x0
    80005098:	3c830067          	jr	968(t1) # 8000545c <plic_complete>
    8000509c:	00009517          	auipc	a0,0x9
    800050a0:	03450513          	addi	a0,a0,52 # 8000e0d0 <tickslock>
    800050a4:	00001097          	auipc	ra,0x1
    800050a8:	498080e7          	jalr	1176(ra) # 8000653c <acquire>
    800050ac:	00004717          	auipc	a4,0x4
    800050b0:	e8870713          	addi	a4,a4,-376 # 80008f34 <ticks>
    800050b4:	00072783          	lw	a5,0(a4)
    800050b8:	00009517          	auipc	a0,0x9
    800050bc:	01850513          	addi	a0,a0,24 # 8000e0d0 <tickslock>
    800050c0:	0017879b          	addiw	a5,a5,1
    800050c4:	00f72023          	sw	a5,0(a4)
    800050c8:	00001097          	auipc	ra,0x1
    800050cc:	540080e7          	jalr	1344(ra) # 80006608 <release>
    800050d0:	f65ff06f          	j	80005034 <kerneltrap+0x8c>
    800050d4:	00001097          	auipc	ra,0x1
    800050d8:	09c080e7          	jalr	156(ra) # 80006170 <uartintr>
    800050dc:	fa5ff06f          	j	80005080 <kerneltrap+0xd8>
    800050e0:	00002517          	auipc	a0,0x2
    800050e4:	22850513          	addi	a0,a0,552 # 80007308 <CONSOLE_STATUS+0x2f8>
    800050e8:	00000097          	auipc	ra,0x0
    800050ec:	724080e7          	jalr	1828(ra) # 8000580c <panic>

00000000800050f0 <clockintr>:
    800050f0:	fe010113          	addi	sp,sp,-32
    800050f4:	00813823          	sd	s0,16(sp)
    800050f8:	00913423          	sd	s1,8(sp)
    800050fc:	00113c23          	sd	ra,24(sp)
    80005100:	02010413          	addi	s0,sp,32
    80005104:	00009497          	auipc	s1,0x9
    80005108:	fcc48493          	addi	s1,s1,-52 # 8000e0d0 <tickslock>
    8000510c:	00048513          	mv	a0,s1
    80005110:	00001097          	auipc	ra,0x1
    80005114:	42c080e7          	jalr	1068(ra) # 8000653c <acquire>
    80005118:	00004717          	auipc	a4,0x4
    8000511c:	e1c70713          	addi	a4,a4,-484 # 80008f34 <ticks>
    80005120:	00072783          	lw	a5,0(a4)
    80005124:	01013403          	ld	s0,16(sp)
    80005128:	01813083          	ld	ra,24(sp)
    8000512c:	00048513          	mv	a0,s1
    80005130:	0017879b          	addiw	a5,a5,1
    80005134:	00813483          	ld	s1,8(sp)
    80005138:	00f72023          	sw	a5,0(a4)
    8000513c:	02010113          	addi	sp,sp,32
    80005140:	00001317          	auipc	t1,0x1
    80005144:	4c830067          	jr	1224(t1) # 80006608 <release>

0000000080005148 <devintr>:
    80005148:	142027f3          	csrr	a5,scause
    8000514c:	00000513          	li	a0,0
    80005150:	0007c463          	bltz	a5,80005158 <devintr+0x10>
    80005154:	00008067          	ret
    80005158:	fe010113          	addi	sp,sp,-32
    8000515c:	00813823          	sd	s0,16(sp)
    80005160:	00113c23          	sd	ra,24(sp)
    80005164:	00913423          	sd	s1,8(sp)
    80005168:	02010413          	addi	s0,sp,32
    8000516c:	0ff7f713          	andi	a4,a5,255
    80005170:	00900693          	li	a3,9
    80005174:	04d70c63          	beq	a4,a3,800051cc <devintr+0x84>
    80005178:	fff00713          	li	a4,-1
    8000517c:	03f71713          	slli	a4,a4,0x3f
    80005180:	00170713          	addi	a4,a4,1
    80005184:	00e78c63          	beq	a5,a4,8000519c <devintr+0x54>
    80005188:	01813083          	ld	ra,24(sp)
    8000518c:	01013403          	ld	s0,16(sp)
    80005190:	00813483          	ld	s1,8(sp)
    80005194:	02010113          	addi	sp,sp,32
    80005198:	00008067          	ret
    8000519c:	00000097          	auipc	ra,0x0
    800051a0:	c8c080e7          	jalr	-884(ra) # 80004e28 <cpuid>
    800051a4:	06050663          	beqz	a0,80005210 <devintr+0xc8>
    800051a8:	144027f3          	csrr	a5,sip
    800051ac:	ffd7f793          	andi	a5,a5,-3
    800051b0:	14479073          	csrw	sip,a5
    800051b4:	01813083          	ld	ra,24(sp)
    800051b8:	01013403          	ld	s0,16(sp)
    800051bc:	00813483          	ld	s1,8(sp)
    800051c0:	00200513          	li	a0,2
    800051c4:	02010113          	addi	sp,sp,32
    800051c8:	00008067          	ret
    800051cc:	00000097          	auipc	ra,0x0
    800051d0:	258080e7          	jalr	600(ra) # 80005424 <plic_claim>
    800051d4:	00a00793          	li	a5,10
    800051d8:	00050493          	mv	s1,a0
    800051dc:	06f50663          	beq	a0,a5,80005248 <devintr+0x100>
    800051e0:	00100513          	li	a0,1
    800051e4:	fa0482e3          	beqz	s1,80005188 <devintr+0x40>
    800051e8:	00048593          	mv	a1,s1
    800051ec:	00002517          	auipc	a0,0x2
    800051f0:	13c50513          	addi	a0,a0,316 # 80007328 <CONSOLE_STATUS+0x318>
    800051f4:	00000097          	auipc	ra,0x0
    800051f8:	674080e7          	jalr	1652(ra) # 80005868 <__printf>
    800051fc:	00048513          	mv	a0,s1
    80005200:	00000097          	auipc	ra,0x0
    80005204:	25c080e7          	jalr	604(ra) # 8000545c <plic_complete>
    80005208:	00100513          	li	a0,1
    8000520c:	f7dff06f          	j	80005188 <devintr+0x40>
    80005210:	00009517          	auipc	a0,0x9
    80005214:	ec050513          	addi	a0,a0,-320 # 8000e0d0 <tickslock>
    80005218:	00001097          	auipc	ra,0x1
    8000521c:	324080e7          	jalr	804(ra) # 8000653c <acquire>
    80005220:	00004717          	auipc	a4,0x4
    80005224:	d1470713          	addi	a4,a4,-748 # 80008f34 <ticks>
    80005228:	00072783          	lw	a5,0(a4)
    8000522c:	00009517          	auipc	a0,0x9
    80005230:	ea450513          	addi	a0,a0,-348 # 8000e0d0 <tickslock>
    80005234:	0017879b          	addiw	a5,a5,1
    80005238:	00f72023          	sw	a5,0(a4)
    8000523c:	00001097          	auipc	ra,0x1
    80005240:	3cc080e7          	jalr	972(ra) # 80006608 <release>
    80005244:	f65ff06f          	j	800051a8 <devintr+0x60>
    80005248:	00001097          	auipc	ra,0x1
    8000524c:	f28080e7          	jalr	-216(ra) # 80006170 <uartintr>
    80005250:	fadff06f          	j	800051fc <devintr+0xb4>
	...

0000000080005260 <kernelvec>:
    80005260:	f0010113          	addi	sp,sp,-256
    80005264:	00113023          	sd	ra,0(sp)
    80005268:	00213423          	sd	sp,8(sp)
    8000526c:	00313823          	sd	gp,16(sp)
    80005270:	00413c23          	sd	tp,24(sp)
    80005274:	02513023          	sd	t0,32(sp)
    80005278:	02613423          	sd	t1,40(sp)
    8000527c:	02713823          	sd	t2,48(sp)
    80005280:	02813c23          	sd	s0,56(sp)
    80005284:	04913023          	sd	s1,64(sp)
    80005288:	04a13423          	sd	a0,72(sp)
    8000528c:	04b13823          	sd	a1,80(sp)
    80005290:	04c13c23          	sd	a2,88(sp)
    80005294:	06d13023          	sd	a3,96(sp)
    80005298:	06e13423          	sd	a4,104(sp)
    8000529c:	06f13823          	sd	a5,112(sp)
    800052a0:	07013c23          	sd	a6,120(sp)
    800052a4:	09113023          	sd	a7,128(sp)
    800052a8:	09213423          	sd	s2,136(sp)
    800052ac:	09313823          	sd	s3,144(sp)
    800052b0:	09413c23          	sd	s4,152(sp)
    800052b4:	0b513023          	sd	s5,160(sp)
    800052b8:	0b613423          	sd	s6,168(sp)
    800052bc:	0b713823          	sd	s7,176(sp)
    800052c0:	0b813c23          	sd	s8,184(sp)
    800052c4:	0d913023          	sd	s9,192(sp)
    800052c8:	0da13423          	sd	s10,200(sp)
    800052cc:	0db13823          	sd	s11,208(sp)
    800052d0:	0dc13c23          	sd	t3,216(sp)
    800052d4:	0fd13023          	sd	t4,224(sp)
    800052d8:	0fe13423          	sd	t5,232(sp)
    800052dc:	0ff13823          	sd	t6,240(sp)
    800052e0:	cc9ff0ef          	jal	ra,80004fa8 <kerneltrap>
    800052e4:	00013083          	ld	ra,0(sp)
    800052e8:	00813103          	ld	sp,8(sp)
    800052ec:	01013183          	ld	gp,16(sp)
    800052f0:	02013283          	ld	t0,32(sp)
    800052f4:	02813303          	ld	t1,40(sp)
    800052f8:	03013383          	ld	t2,48(sp)
    800052fc:	03813403          	ld	s0,56(sp)
    80005300:	04013483          	ld	s1,64(sp)
    80005304:	04813503          	ld	a0,72(sp)
    80005308:	05013583          	ld	a1,80(sp)
    8000530c:	05813603          	ld	a2,88(sp)
    80005310:	06013683          	ld	a3,96(sp)
    80005314:	06813703          	ld	a4,104(sp)
    80005318:	07013783          	ld	a5,112(sp)
    8000531c:	07813803          	ld	a6,120(sp)
    80005320:	08013883          	ld	a7,128(sp)
    80005324:	08813903          	ld	s2,136(sp)
    80005328:	09013983          	ld	s3,144(sp)
    8000532c:	09813a03          	ld	s4,152(sp)
    80005330:	0a013a83          	ld	s5,160(sp)
    80005334:	0a813b03          	ld	s6,168(sp)
    80005338:	0b013b83          	ld	s7,176(sp)
    8000533c:	0b813c03          	ld	s8,184(sp)
    80005340:	0c013c83          	ld	s9,192(sp)
    80005344:	0c813d03          	ld	s10,200(sp)
    80005348:	0d013d83          	ld	s11,208(sp)
    8000534c:	0d813e03          	ld	t3,216(sp)
    80005350:	0e013e83          	ld	t4,224(sp)
    80005354:	0e813f03          	ld	t5,232(sp)
    80005358:	0f013f83          	ld	t6,240(sp)
    8000535c:	10010113          	addi	sp,sp,256
    80005360:	10200073          	sret
    80005364:	00000013          	nop
    80005368:	00000013          	nop
    8000536c:	00000013          	nop

0000000080005370 <timervec>:
    80005370:	34051573          	csrrw	a0,mscratch,a0
    80005374:	00b53023          	sd	a1,0(a0)
    80005378:	00c53423          	sd	a2,8(a0)
    8000537c:	00d53823          	sd	a3,16(a0)
    80005380:	01853583          	ld	a1,24(a0)
    80005384:	02053603          	ld	a2,32(a0)
    80005388:	0005b683          	ld	a3,0(a1)
    8000538c:	00c686b3          	add	a3,a3,a2
    80005390:	00d5b023          	sd	a3,0(a1)
    80005394:	00200593          	li	a1,2
    80005398:	14459073          	csrw	sip,a1
    8000539c:	01053683          	ld	a3,16(a0)
    800053a0:	00853603          	ld	a2,8(a0)
    800053a4:	00053583          	ld	a1,0(a0)
    800053a8:	34051573          	csrrw	a0,mscratch,a0
    800053ac:	30200073          	mret

00000000800053b0 <plicinit>:
    800053b0:	ff010113          	addi	sp,sp,-16
    800053b4:	00813423          	sd	s0,8(sp)
    800053b8:	01010413          	addi	s0,sp,16
    800053bc:	00813403          	ld	s0,8(sp)
    800053c0:	0c0007b7          	lui	a5,0xc000
    800053c4:	00100713          	li	a4,1
    800053c8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800053cc:	00e7a223          	sw	a4,4(a5)
    800053d0:	01010113          	addi	sp,sp,16
    800053d4:	00008067          	ret

00000000800053d8 <plicinithart>:
    800053d8:	ff010113          	addi	sp,sp,-16
    800053dc:	00813023          	sd	s0,0(sp)
    800053e0:	00113423          	sd	ra,8(sp)
    800053e4:	01010413          	addi	s0,sp,16
    800053e8:	00000097          	auipc	ra,0x0
    800053ec:	a40080e7          	jalr	-1472(ra) # 80004e28 <cpuid>
    800053f0:	0085171b          	slliw	a4,a0,0x8
    800053f4:	0c0027b7          	lui	a5,0xc002
    800053f8:	00e787b3          	add	a5,a5,a4
    800053fc:	40200713          	li	a4,1026
    80005400:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80005404:	00813083          	ld	ra,8(sp)
    80005408:	00013403          	ld	s0,0(sp)
    8000540c:	00d5151b          	slliw	a0,a0,0xd
    80005410:	0c2017b7          	lui	a5,0xc201
    80005414:	00a78533          	add	a0,a5,a0
    80005418:	00052023          	sw	zero,0(a0)
    8000541c:	01010113          	addi	sp,sp,16
    80005420:	00008067          	ret

0000000080005424 <plic_claim>:
    80005424:	ff010113          	addi	sp,sp,-16
    80005428:	00813023          	sd	s0,0(sp)
    8000542c:	00113423          	sd	ra,8(sp)
    80005430:	01010413          	addi	s0,sp,16
    80005434:	00000097          	auipc	ra,0x0
    80005438:	9f4080e7          	jalr	-1548(ra) # 80004e28 <cpuid>
    8000543c:	00813083          	ld	ra,8(sp)
    80005440:	00013403          	ld	s0,0(sp)
    80005444:	00d5151b          	slliw	a0,a0,0xd
    80005448:	0c2017b7          	lui	a5,0xc201
    8000544c:	00a78533          	add	a0,a5,a0
    80005450:	00452503          	lw	a0,4(a0)
    80005454:	01010113          	addi	sp,sp,16
    80005458:	00008067          	ret

000000008000545c <plic_complete>:
    8000545c:	fe010113          	addi	sp,sp,-32
    80005460:	00813823          	sd	s0,16(sp)
    80005464:	00913423          	sd	s1,8(sp)
    80005468:	00113c23          	sd	ra,24(sp)
    8000546c:	02010413          	addi	s0,sp,32
    80005470:	00050493          	mv	s1,a0
    80005474:	00000097          	auipc	ra,0x0
    80005478:	9b4080e7          	jalr	-1612(ra) # 80004e28 <cpuid>
    8000547c:	01813083          	ld	ra,24(sp)
    80005480:	01013403          	ld	s0,16(sp)
    80005484:	00d5179b          	slliw	a5,a0,0xd
    80005488:	0c201737          	lui	a4,0xc201
    8000548c:	00f707b3          	add	a5,a4,a5
    80005490:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80005494:	00813483          	ld	s1,8(sp)
    80005498:	02010113          	addi	sp,sp,32
    8000549c:	00008067          	ret

00000000800054a0 <consolewrite>:
    800054a0:	fb010113          	addi	sp,sp,-80
    800054a4:	04813023          	sd	s0,64(sp)
    800054a8:	04113423          	sd	ra,72(sp)
    800054ac:	02913c23          	sd	s1,56(sp)
    800054b0:	03213823          	sd	s2,48(sp)
    800054b4:	03313423          	sd	s3,40(sp)
    800054b8:	03413023          	sd	s4,32(sp)
    800054bc:	01513c23          	sd	s5,24(sp)
    800054c0:	05010413          	addi	s0,sp,80
    800054c4:	06c05c63          	blez	a2,8000553c <consolewrite+0x9c>
    800054c8:	00060993          	mv	s3,a2
    800054cc:	00050a13          	mv	s4,a0
    800054d0:	00058493          	mv	s1,a1
    800054d4:	00000913          	li	s2,0
    800054d8:	fff00a93          	li	s5,-1
    800054dc:	01c0006f          	j	800054f8 <consolewrite+0x58>
    800054e0:	fbf44503          	lbu	a0,-65(s0)
    800054e4:	0019091b          	addiw	s2,s2,1
    800054e8:	00148493          	addi	s1,s1,1
    800054ec:	00001097          	auipc	ra,0x1
    800054f0:	a9c080e7          	jalr	-1380(ra) # 80005f88 <uartputc>
    800054f4:	03298063          	beq	s3,s2,80005514 <consolewrite+0x74>
    800054f8:	00048613          	mv	a2,s1
    800054fc:	00100693          	li	a3,1
    80005500:	000a0593          	mv	a1,s4
    80005504:	fbf40513          	addi	a0,s0,-65
    80005508:	00000097          	auipc	ra,0x0
    8000550c:	9d8080e7          	jalr	-1576(ra) # 80004ee0 <either_copyin>
    80005510:	fd5518e3          	bne	a0,s5,800054e0 <consolewrite+0x40>
    80005514:	04813083          	ld	ra,72(sp)
    80005518:	04013403          	ld	s0,64(sp)
    8000551c:	03813483          	ld	s1,56(sp)
    80005520:	02813983          	ld	s3,40(sp)
    80005524:	02013a03          	ld	s4,32(sp)
    80005528:	01813a83          	ld	s5,24(sp)
    8000552c:	00090513          	mv	a0,s2
    80005530:	03013903          	ld	s2,48(sp)
    80005534:	05010113          	addi	sp,sp,80
    80005538:	00008067          	ret
    8000553c:	00000913          	li	s2,0
    80005540:	fd5ff06f          	j	80005514 <consolewrite+0x74>

0000000080005544 <consoleread>:
    80005544:	f9010113          	addi	sp,sp,-112
    80005548:	06813023          	sd	s0,96(sp)
    8000554c:	04913c23          	sd	s1,88(sp)
    80005550:	05213823          	sd	s2,80(sp)
    80005554:	05313423          	sd	s3,72(sp)
    80005558:	05413023          	sd	s4,64(sp)
    8000555c:	03513c23          	sd	s5,56(sp)
    80005560:	03613823          	sd	s6,48(sp)
    80005564:	03713423          	sd	s7,40(sp)
    80005568:	03813023          	sd	s8,32(sp)
    8000556c:	06113423          	sd	ra,104(sp)
    80005570:	01913c23          	sd	s9,24(sp)
    80005574:	07010413          	addi	s0,sp,112
    80005578:	00060b93          	mv	s7,a2
    8000557c:	00050913          	mv	s2,a0
    80005580:	00058c13          	mv	s8,a1
    80005584:	00060b1b          	sext.w	s6,a2
    80005588:	00009497          	auipc	s1,0x9
    8000558c:	b7048493          	addi	s1,s1,-1168 # 8000e0f8 <cons>
    80005590:	00400993          	li	s3,4
    80005594:	fff00a13          	li	s4,-1
    80005598:	00a00a93          	li	s5,10
    8000559c:	05705e63          	blez	s7,800055f8 <consoleread+0xb4>
    800055a0:	09c4a703          	lw	a4,156(s1)
    800055a4:	0984a783          	lw	a5,152(s1)
    800055a8:	0007071b          	sext.w	a4,a4
    800055ac:	08e78463          	beq	a5,a4,80005634 <consoleread+0xf0>
    800055b0:	07f7f713          	andi	a4,a5,127
    800055b4:	00e48733          	add	a4,s1,a4
    800055b8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800055bc:	0017869b          	addiw	a3,a5,1
    800055c0:	08d4ac23          	sw	a3,152(s1)
    800055c4:	00070c9b          	sext.w	s9,a4
    800055c8:	0b370663          	beq	a4,s3,80005674 <consoleread+0x130>
    800055cc:	00100693          	li	a3,1
    800055d0:	f9f40613          	addi	a2,s0,-97
    800055d4:	000c0593          	mv	a1,s8
    800055d8:	00090513          	mv	a0,s2
    800055dc:	f8e40fa3          	sb	a4,-97(s0)
    800055e0:	00000097          	auipc	ra,0x0
    800055e4:	8b4080e7          	jalr	-1868(ra) # 80004e94 <either_copyout>
    800055e8:	01450863          	beq	a0,s4,800055f8 <consoleread+0xb4>
    800055ec:	001c0c13          	addi	s8,s8,1
    800055f0:	fffb8b9b          	addiw	s7,s7,-1
    800055f4:	fb5c94e3          	bne	s9,s5,8000559c <consoleread+0x58>
    800055f8:	000b851b          	sext.w	a0,s7
    800055fc:	06813083          	ld	ra,104(sp)
    80005600:	06013403          	ld	s0,96(sp)
    80005604:	05813483          	ld	s1,88(sp)
    80005608:	05013903          	ld	s2,80(sp)
    8000560c:	04813983          	ld	s3,72(sp)
    80005610:	04013a03          	ld	s4,64(sp)
    80005614:	03813a83          	ld	s5,56(sp)
    80005618:	02813b83          	ld	s7,40(sp)
    8000561c:	02013c03          	ld	s8,32(sp)
    80005620:	01813c83          	ld	s9,24(sp)
    80005624:	40ab053b          	subw	a0,s6,a0
    80005628:	03013b03          	ld	s6,48(sp)
    8000562c:	07010113          	addi	sp,sp,112
    80005630:	00008067          	ret
    80005634:	00001097          	auipc	ra,0x1
    80005638:	1d8080e7          	jalr	472(ra) # 8000680c <push_on>
    8000563c:	0984a703          	lw	a4,152(s1)
    80005640:	09c4a783          	lw	a5,156(s1)
    80005644:	0007879b          	sext.w	a5,a5
    80005648:	fef70ce3          	beq	a4,a5,80005640 <consoleread+0xfc>
    8000564c:	00001097          	auipc	ra,0x1
    80005650:	234080e7          	jalr	564(ra) # 80006880 <pop_on>
    80005654:	0984a783          	lw	a5,152(s1)
    80005658:	07f7f713          	andi	a4,a5,127
    8000565c:	00e48733          	add	a4,s1,a4
    80005660:	01874703          	lbu	a4,24(a4)
    80005664:	0017869b          	addiw	a3,a5,1
    80005668:	08d4ac23          	sw	a3,152(s1)
    8000566c:	00070c9b          	sext.w	s9,a4
    80005670:	f5371ee3          	bne	a4,s3,800055cc <consoleread+0x88>
    80005674:	000b851b          	sext.w	a0,s7
    80005678:	f96bf2e3          	bgeu	s7,s6,800055fc <consoleread+0xb8>
    8000567c:	08f4ac23          	sw	a5,152(s1)
    80005680:	f7dff06f          	j	800055fc <consoleread+0xb8>

0000000080005684 <consputc>:
    80005684:	10000793          	li	a5,256
    80005688:	00f50663          	beq	a0,a5,80005694 <consputc+0x10>
    8000568c:	00001317          	auipc	t1,0x1
    80005690:	9f430067          	jr	-1548(t1) # 80006080 <uartputc_sync>
    80005694:	ff010113          	addi	sp,sp,-16
    80005698:	00113423          	sd	ra,8(sp)
    8000569c:	00813023          	sd	s0,0(sp)
    800056a0:	01010413          	addi	s0,sp,16
    800056a4:	00800513          	li	a0,8
    800056a8:	00001097          	auipc	ra,0x1
    800056ac:	9d8080e7          	jalr	-1576(ra) # 80006080 <uartputc_sync>
    800056b0:	02000513          	li	a0,32
    800056b4:	00001097          	auipc	ra,0x1
    800056b8:	9cc080e7          	jalr	-1588(ra) # 80006080 <uartputc_sync>
    800056bc:	00013403          	ld	s0,0(sp)
    800056c0:	00813083          	ld	ra,8(sp)
    800056c4:	00800513          	li	a0,8
    800056c8:	01010113          	addi	sp,sp,16
    800056cc:	00001317          	auipc	t1,0x1
    800056d0:	9b430067          	jr	-1612(t1) # 80006080 <uartputc_sync>

00000000800056d4 <consoleintr>:
    800056d4:	fe010113          	addi	sp,sp,-32
    800056d8:	00813823          	sd	s0,16(sp)
    800056dc:	00913423          	sd	s1,8(sp)
    800056e0:	01213023          	sd	s2,0(sp)
    800056e4:	00113c23          	sd	ra,24(sp)
    800056e8:	02010413          	addi	s0,sp,32
    800056ec:	00009917          	auipc	s2,0x9
    800056f0:	a0c90913          	addi	s2,s2,-1524 # 8000e0f8 <cons>
    800056f4:	00050493          	mv	s1,a0
    800056f8:	00090513          	mv	a0,s2
    800056fc:	00001097          	auipc	ra,0x1
    80005700:	e40080e7          	jalr	-448(ra) # 8000653c <acquire>
    80005704:	02048c63          	beqz	s1,8000573c <consoleintr+0x68>
    80005708:	0a092783          	lw	a5,160(s2)
    8000570c:	09892703          	lw	a4,152(s2)
    80005710:	07f00693          	li	a3,127
    80005714:	40e7873b          	subw	a4,a5,a4
    80005718:	02e6e263          	bltu	a3,a4,8000573c <consoleintr+0x68>
    8000571c:	00d00713          	li	a4,13
    80005720:	04e48063          	beq	s1,a4,80005760 <consoleintr+0x8c>
    80005724:	07f7f713          	andi	a4,a5,127
    80005728:	00e90733          	add	a4,s2,a4
    8000572c:	0017879b          	addiw	a5,a5,1
    80005730:	0af92023          	sw	a5,160(s2)
    80005734:	00970c23          	sb	s1,24(a4)
    80005738:	08f92e23          	sw	a5,156(s2)
    8000573c:	01013403          	ld	s0,16(sp)
    80005740:	01813083          	ld	ra,24(sp)
    80005744:	00813483          	ld	s1,8(sp)
    80005748:	00013903          	ld	s2,0(sp)
    8000574c:	00009517          	auipc	a0,0x9
    80005750:	9ac50513          	addi	a0,a0,-1620 # 8000e0f8 <cons>
    80005754:	02010113          	addi	sp,sp,32
    80005758:	00001317          	auipc	t1,0x1
    8000575c:	eb030067          	jr	-336(t1) # 80006608 <release>
    80005760:	00a00493          	li	s1,10
    80005764:	fc1ff06f          	j	80005724 <consoleintr+0x50>

0000000080005768 <consoleinit>:
    80005768:	fe010113          	addi	sp,sp,-32
    8000576c:	00113c23          	sd	ra,24(sp)
    80005770:	00813823          	sd	s0,16(sp)
    80005774:	00913423          	sd	s1,8(sp)
    80005778:	02010413          	addi	s0,sp,32
    8000577c:	00009497          	auipc	s1,0x9
    80005780:	97c48493          	addi	s1,s1,-1668 # 8000e0f8 <cons>
    80005784:	00048513          	mv	a0,s1
    80005788:	00002597          	auipc	a1,0x2
    8000578c:	bf858593          	addi	a1,a1,-1032 # 80007380 <CONSOLE_STATUS+0x370>
    80005790:	00001097          	auipc	ra,0x1
    80005794:	d88080e7          	jalr	-632(ra) # 80006518 <initlock>
    80005798:	00000097          	auipc	ra,0x0
    8000579c:	7ac080e7          	jalr	1964(ra) # 80005f44 <uartinit>
    800057a0:	01813083          	ld	ra,24(sp)
    800057a4:	01013403          	ld	s0,16(sp)
    800057a8:	00000797          	auipc	a5,0x0
    800057ac:	d9c78793          	addi	a5,a5,-612 # 80005544 <consoleread>
    800057b0:	0af4bc23          	sd	a5,184(s1)
    800057b4:	00000797          	auipc	a5,0x0
    800057b8:	cec78793          	addi	a5,a5,-788 # 800054a0 <consolewrite>
    800057bc:	0cf4b023          	sd	a5,192(s1)
    800057c0:	00813483          	ld	s1,8(sp)
    800057c4:	02010113          	addi	sp,sp,32
    800057c8:	00008067          	ret

00000000800057cc <console_read>:
    800057cc:	ff010113          	addi	sp,sp,-16
    800057d0:	00813423          	sd	s0,8(sp)
    800057d4:	01010413          	addi	s0,sp,16
    800057d8:	00813403          	ld	s0,8(sp)
    800057dc:	00009317          	auipc	t1,0x9
    800057e0:	9d433303          	ld	t1,-1580(t1) # 8000e1b0 <devsw+0x10>
    800057e4:	01010113          	addi	sp,sp,16
    800057e8:	00030067          	jr	t1

00000000800057ec <console_write>:
    800057ec:	ff010113          	addi	sp,sp,-16
    800057f0:	00813423          	sd	s0,8(sp)
    800057f4:	01010413          	addi	s0,sp,16
    800057f8:	00813403          	ld	s0,8(sp)
    800057fc:	00009317          	auipc	t1,0x9
    80005800:	9bc33303          	ld	t1,-1604(t1) # 8000e1b8 <devsw+0x18>
    80005804:	01010113          	addi	sp,sp,16
    80005808:	00030067          	jr	t1

000000008000580c <panic>:
    8000580c:	fe010113          	addi	sp,sp,-32
    80005810:	00113c23          	sd	ra,24(sp)
    80005814:	00813823          	sd	s0,16(sp)
    80005818:	00913423          	sd	s1,8(sp)
    8000581c:	02010413          	addi	s0,sp,32
    80005820:	00050493          	mv	s1,a0
    80005824:	00002517          	auipc	a0,0x2
    80005828:	b6450513          	addi	a0,a0,-1180 # 80007388 <CONSOLE_STATUS+0x378>
    8000582c:	00009797          	auipc	a5,0x9
    80005830:	a207a623          	sw	zero,-1492(a5) # 8000e258 <pr+0x18>
    80005834:	00000097          	auipc	ra,0x0
    80005838:	034080e7          	jalr	52(ra) # 80005868 <__printf>
    8000583c:	00048513          	mv	a0,s1
    80005840:	00000097          	auipc	ra,0x0
    80005844:	028080e7          	jalr	40(ra) # 80005868 <__printf>
    80005848:	00002517          	auipc	a0,0x2
    8000584c:	b2050513          	addi	a0,a0,-1248 # 80007368 <CONSOLE_STATUS+0x358>
    80005850:	00000097          	auipc	ra,0x0
    80005854:	018080e7          	jalr	24(ra) # 80005868 <__printf>
    80005858:	00100793          	li	a5,1
    8000585c:	00003717          	auipc	a4,0x3
    80005860:	6cf72e23          	sw	a5,1756(a4) # 80008f38 <panicked>
    80005864:	0000006f          	j	80005864 <panic+0x58>

0000000080005868 <__printf>:
    80005868:	f3010113          	addi	sp,sp,-208
    8000586c:	08813023          	sd	s0,128(sp)
    80005870:	07313423          	sd	s3,104(sp)
    80005874:	09010413          	addi	s0,sp,144
    80005878:	05813023          	sd	s8,64(sp)
    8000587c:	08113423          	sd	ra,136(sp)
    80005880:	06913c23          	sd	s1,120(sp)
    80005884:	07213823          	sd	s2,112(sp)
    80005888:	07413023          	sd	s4,96(sp)
    8000588c:	05513c23          	sd	s5,88(sp)
    80005890:	05613823          	sd	s6,80(sp)
    80005894:	05713423          	sd	s7,72(sp)
    80005898:	03913c23          	sd	s9,56(sp)
    8000589c:	03a13823          	sd	s10,48(sp)
    800058a0:	03b13423          	sd	s11,40(sp)
    800058a4:	00009317          	auipc	t1,0x9
    800058a8:	99c30313          	addi	t1,t1,-1636 # 8000e240 <pr>
    800058ac:	01832c03          	lw	s8,24(t1)
    800058b0:	00b43423          	sd	a1,8(s0)
    800058b4:	00c43823          	sd	a2,16(s0)
    800058b8:	00d43c23          	sd	a3,24(s0)
    800058bc:	02e43023          	sd	a4,32(s0)
    800058c0:	02f43423          	sd	a5,40(s0)
    800058c4:	03043823          	sd	a6,48(s0)
    800058c8:	03143c23          	sd	a7,56(s0)
    800058cc:	00050993          	mv	s3,a0
    800058d0:	4a0c1663          	bnez	s8,80005d7c <__printf+0x514>
    800058d4:	60098c63          	beqz	s3,80005eec <__printf+0x684>
    800058d8:	0009c503          	lbu	a0,0(s3)
    800058dc:	00840793          	addi	a5,s0,8
    800058e0:	f6f43c23          	sd	a5,-136(s0)
    800058e4:	00000493          	li	s1,0
    800058e8:	22050063          	beqz	a0,80005b08 <__printf+0x2a0>
    800058ec:	00002a37          	lui	s4,0x2
    800058f0:	00018ab7          	lui	s5,0x18
    800058f4:	000f4b37          	lui	s6,0xf4
    800058f8:	00989bb7          	lui	s7,0x989
    800058fc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80005900:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80005904:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80005908:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000590c:	00148c9b          	addiw	s9,s1,1
    80005910:	02500793          	li	a5,37
    80005914:	01998933          	add	s2,s3,s9
    80005918:	38f51263          	bne	a0,a5,80005c9c <__printf+0x434>
    8000591c:	00094783          	lbu	a5,0(s2)
    80005920:	00078c9b          	sext.w	s9,a5
    80005924:	1e078263          	beqz	a5,80005b08 <__printf+0x2a0>
    80005928:	0024849b          	addiw	s1,s1,2
    8000592c:	07000713          	li	a4,112
    80005930:	00998933          	add	s2,s3,s1
    80005934:	38e78a63          	beq	a5,a4,80005cc8 <__printf+0x460>
    80005938:	20f76863          	bltu	a4,a5,80005b48 <__printf+0x2e0>
    8000593c:	42a78863          	beq	a5,a0,80005d6c <__printf+0x504>
    80005940:	06400713          	li	a4,100
    80005944:	40e79663          	bne	a5,a4,80005d50 <__printf+0x4e8>
    80005948:	f7843783          	ld	a5,-136(s0)
    8000594c:	0007a603          	lw	a2,0(a5)
    80005950:	00878793          	addi	a5,a5,8
    80005954:	f6f43c23          	sd	a5,-136(s0)
    80005958:	42064a63          	bltz	a2,80005d8c <__printf+0x524>
    8000595c:	00a00713          	li	a4,10
    80005960:	02e677bb          	remuw	a5,a2,a4
    80005964:	00002d97          	auipc	s11,0x2
    80005968:	a4cd8d93          	addi	s11,s11,-1460 # 800073b0 <digits>
    8000596c:	00900593          	li	a1,9
    80005970:	0006051b          	sext.w	a0,a2
    80005974:	00000c93          	li	s9,0
    80005978:	02079793          	slli	a5,a5,0x20
    8000597c:	0207d793          	srli	a5,a5,0x20
    80005980:	00fd87b3          	add	a5,s11,a5
    80005984:	0007c783          	lbu	a5,0(a5)
    80005988:	02e656bb          	divuw	a3,a2,a4
    8000598c:	f8f40023          	sb	a5,-128(s0)
    80005990:	14c5d863          	bge	a1,a2,80005ae0 <__printf+0x278>
    80005994:	06300593          	li	a1,99
    80005998:	00100c93          	li	s9,1
    8000599c:	02e6f7bb          	remuw	a5,a3,a4
    800059a0:	02079793          	slli	a5,a5,0x20
    800059a4:	0207d793          	srli	a5,a5,0x20
    800059a8:	00fd87b3          	add	a5,s11,a5
    800059ac:	0007c783          	lbu	a5,0(a5)
    800059b0:	02e6d73b          	divuw	a4,a3,a4
    800059b4:	f8f400a3          	sb	a5,-127(s0)
    800059b8:	12a5f463          	bgeu	a1,a0,80005ae0 <__printf+0x278>
    800059bc:	00a00693          	li	a3,10
    800059c0:	00900593          	li	a1,9
    800059c4:	02d777bb          	remuw	a5,a4,a3
    800059c8:	02079793          	slli	a5,a5,0x20
    800059cc:	0207d793          	srli	a5,a5,0x20
    800059d0:	00fd87b3          	add	a5,s11,a5
    800059d4:	0007c503          	lbu	a0,0(a5)
    800059d8:	02d757bb          	divuw	a5,a4,a3
    800059dc:	f8a40123          	sb	a0,-126(s0)
    800059e0:	48e5f263          	bgeu	a1,a4,80005e64 <__printf+0x5fc>
    800059e4:	06300513          	li	a0,99
    800059e8:	02d7f5bb          	remuw	a1,a5,a3
    800059ec:	02059593          	slli	a1,a1,0x20
    800059f0:	0205d593          	srli	a1,a1,0x20
    800059f4:	00bd85b3          	add	a1,s11,a1
    800059f8:	0005c583          	lbu	a1,0(a1)
    800059fc:	02d7d7bb          	divuw	a5,a5,a3
    80005a00:	f8b401a3          	sb	a1,-125(s0)
    80005a04:	48e57263          	bgeu	a0,a4,80005e88 <__printf+0x620>
    80005a08:	3e700513          	li	a0,999
    80005a0c:	02d7f5bb          	remuw	a1,a5,a3
    80005a10:	02059593          	slli	a1,a1,0x20
    80005a14:	0205d593          	srli	a1,a1,0x20
    80005a18:	00bd85b3          	add	a1,s11,a1
    80005a1c:	0005c583          	lbu	a1,0(a1)
    80005a20:	02d7d7bb          	divuw	a5,a5,a3
    80005a24:	f8b40223          	sb	a1,-124(s0)
    80005a28:	46e57663          	bgeu	a0,a4,80005e94 <__printf+0x62c>
    80005a2c:	02d7f5bb          	remuw	a1,a5,a3
    80005a30:	02059593          	slli	a1,a1,0x20
    80005a34:	0205d593          	srli	a1,a1,0x20
    80005a38:	00bd85b3          	add	a1,s11,a1
    80005a3c:	0005c583          	lbu	a1,0(a1)
    80005a40:	02d7d7bb          	divuw	a5,a5,a3
    80005a44:	f8b402a3          	sb	a1,-123(s0)
    80005a48:	46ea7863          	bgeu	s4,a4,80005eb8 <__printf+0x650>
    80005a4c:	02d7f5bb          	remuw	a1,a5,a3
    80005a50:	02059593          	slli	a1,a1,0x20
    80005a54:	0205d593          	srli	a1,a1,0x20
    80005a58:	00bd85b3          	add	a1,s11,a1
    80005a5c:	0005c583          	lbu	a1,0(a1)
    80005a60:	02d7d7bb          	divuw	a5,a5,a3
    80005a64:	f8b40323          	sb	a1,-122(s0)
    80005a68:	3eeaf863          	bgeu	s5,a4,80005e58 <__printf+0x5f0>
    80005a6c:	02d7f5bb          	remuw	a1,a5,a3
    80005a70:	02059593          	slli	a1,a1,0x20
    80005a74:	0205d593          	srli	a1,a1,0x20
    80005a78:	00bd85b3          	add	a1,s11,a1
    80005a7c:	0005c583          	lbu	a1,0(a1)
    80005a80:	02d7d7bb          	divuw	a5,a5,a3
    80005a84:	f8b403a3          	sb	a1,-121(s0)
    80005a88:	42eb7e63          	bgeu	s6,a4,80005ec4 <__printf+0x65c>
    80005a8c:	02d7f5bb          	remuw	a1,a5,a3
    80005a90:	02059593          	slli	a1,a1,0x20
    80005a94:	0205d593          	srli	a1,a1,0x20
    80005a98:	00bd85b3          	add	a1,s11,a1
    80005a9c:	0005c583          	lbu	a1,0(a1)
    80005aa0:	02d7d7bb          	divuw	a5,a5,a3
    80005aa4:	f8b40423          	sb	a1,-120(s0)
    80005aa8:	42ebfc63          	bgeu	s7,a4,80005ee0 <__printf+0x678>
    80005aac:	02079793          	slli	a5,a5,0x20
    80005ab0:	0207d793          	srli	a5,a5,0x20
    80005ab4:	00fd8db3          	add	s11,s11,a5
    80005ab8:	000dc703          	lbu	a4,0(s11)
    80005abc:	00a00793          	li	a5,10
    80005ac0:	00900c93          	li	s9,9
    80005ac4:	f8e404a3          	sb	a4,-119(s0)
    80005ac8:	00065c63          	bgez	a2,80005ae0 <__printf+0x278>
    80005acc:	f9040713          	addi	a4,s0,-112
    80005ad0:	00f70733          	add	a4,a4,a5
    80005ad4:	02d00693          	li	a3,45
    80005ad8:	fed70823          	sb	a3,-16(a4)
    80005adc:	00078c93          	mv	s9,a5
    80005ae0:	f8040793          	addi	a5,s0,-128
    80005ae4:	01978cb3          	add	s9,a5,s9
    80005ae8:	f7f40d13          	addi	s10,s0,-129
    80005aec:	000cc503          	lbu	a0,0(s9)
    80005af0:	fffc8c93          	addi	s9,s9,-1
    80005af4:	00000097          	auipc	ra,0x0
    80005af8:	b90080e7          	jalr	-1136(ra) # 80005684 <consputc>
    80005afc:	ffac98e3          	bne	s9,s10,80005aec <__printf+0x284>
    80005b00:	00094503          	lbu	a0,0(s2)
    80005b04:	e00514e3          	bnez	a0,8000590c <__printf+0xa4>
    80005b08:	1a0c1663          	bnez	s8,80005cb4 <__printf+0x44c>
    80005b0c:	08813083          	ld	ra,136(sp)
    80005b10:	08013403          	ld	s0,128(sp)
    80005b14:	07813483          	ld	s1,120(sp)
    80005b18:	07013903          	ld	s2,112(sp)
    80005b1c:	06813983          	ld	s3,104(sp)
    80005b20:	06013a03          	ld	s4,96(sp)
    80005b24:	05813a83          	ld	s5,88(sp)
    80005b28:	05013b03          	ld	s6,80(sp)
    80005b2c:	04813b83          	ld	s7,72(sp)
    80005b30:	04013c03          	ld	s8,64(sp)
    80005b34:	03813c83          	ld	s9,56(sp)
    80005b38:	03013d03          	ld	s10,48(sp)
    80005b3c:	02813d83          	ld	s11,40(sp)
    80005b40:	0d010113          	addi	sp,sp,208
    80005b44:	00008067          	ret
    80005b48:	07300713          	li	a4,115
    80005b4c:	1ce78a63          	beq	a5,a4,80005d20 <__printf+0x4b8>
    80005b50:	07800713          	li	a4,120
    80005b54:	1ee79e63          	bne	a5,a4,80005d50 <__printf+0x4e8>
    80005b58:	f7843783          	ld	a5,-136(s0)
    80005b5c:	0007a703          	lw	a4,0(a5)
    80005b60:	00878793          	addi	a5,a5,8
    80005b64:	f6f43c23          	sd	a5,-136(s0)
    80005b68:	28074263          	bltz	a4,80005dec <__printf+0x584>
    80005b6c:	00002d97          	auipc	s11,0x2
    80005b70:	844d8d93          	addi	s11,s11,-1980 # 800073b0 <digits>
    80005b74:	00f77793          	andi	a5,a4,15
    80005b78:	00fd87b3          	add	a5,s11,a5
    80005b7c:	0007c683          	lbu	a3,0(a5)
    80005b80:	00f00613          	li	a2,15
    80005b84:	0007079b          	sext.w	a5,a4
    80005b88:	f8d40023          	sb	a3,-128(s0)
    80005b8c:	0047559b          	srliw	a1,a4,0x4
    80005b90:	0047569b          	srliw	a3,a4,0x4
    80005b94:	00000c93          	li	s9,0
    80005b98:	0ee65063          	bge	a2,a4,80005c78 <__printf+0x410>
    80005b9c:	00f6f693          	andi	a3,a3,15
    80005ba0:	00dd86b3          	add	a3,s11,a3
    80005ba4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80005ba8:	0087d79b          	srliw	a5,a5,0x8
    80005bac:	00100c93          	li	s9,1
    80005bb0:	f8d400a3          	sb	a3,-127(s0)
    80005bb4:	0cb67263          	bgeu	a2,a1,80005c78 <__printf+0x410>
    80005bb8:	00f7f693          	andi	a3,a5,15
    80005bbc:	00dd86b3          	add	a3,s11,a3
    80005bc0:	0006c583          	lbu	a1,0(a3)
    80005bc4:	00f00613          	li	a2,15
    80005bc8:	0047d69b          	srliw	a3,a5,0x4
    80005bcc:	f8b40123          	sb	a1,-126(s0)
    80005bd0:	0047d593          	srli	a1,a5,0x4
    80005bd4:	28f67e63          	bgeu	a2,a5,80005e70 <__printf+0x608>
    80005bd8:	00f6f693          	andi	a3,a3,15
    80005bdc:	00dd86b3          	add	a3,s11,a3
    80005be0:	0006c503          	lbu	a0,0(a3)
    80005be4:	0087d813          	srli	a6,a5,0x8
    80005be8:	0087d69b          	srliw	a3,a5,0x8
    80005bec:	f8a401a3          	sb	a0,-125(s0)
    80005bf0:	28b67663          	bgeu	a2,a1,80005e7c <__printf+0x614>
    80005bf4:	00f6f693          	andi	a3,a3,15
    80005bf8:	00dd86b3          	add	a3,s11,a3
    80005bfc:	0006c583          	lbu	a1,0(a3)
    80005c00:	00c7d513          	srli	a0,a5,0xc
    80005c04:	00c7d69b          	srliw	a3,a5,0xc
    80005c08:	f8b40223          	sb	a1,-124(s0)
    80005c0c:	29067a63          	bgeu	a2,a6,80005ea0 <__printf+0x638>
    80005c10:	00f6f693          	andi	a3,a3,15
    80005c14:	00dd86b3          	add	a3,s11,a3
    80005c18:	0006c583          	lbu	a1,0(a3)
    80005c1c:	0107d813          	srli	a6,a5,0x10
    80005c20:	0107d69b          	srliw	a3,a5,0x10
    80005c24:	f8b402a3          	sb	a1,-123(s0)
    80005c28:	28a67263          	bgeu	a2,a0,80005eac <__printf+0x644>
    80005c2c:	00f6f693          	andi	a3,a3,15
    80005c30:	00dd86b3          	add	a3,s11,a3
    80005c34:	0006c683          	lbu	a3,0(a3)
    80005c38:	0147d79b          	srliw	a5,a5,0x14
    80005c3c:	f8d40323          	sb	a3,-122(s0)
    80005c40:	21067663          	bgeu	a2,a6,80005e4c <__printf+0x5e4>
    80005c44:	02079793          	slli	a5,a5,0x20
    80005c48:	0207d793          	srli	a5,a5,0x20
    80005c4c:	00fd8db3          	add	s11,s11,a5
    80005c50:	000dc683          	lbu	a3,0(s11)
    80005c54:	00800793          	li	a5,8
    80005c58:	00700c93          	li	s9,7
    80005c5c:	f8d403a3          	sb	a3,-121(s0)
    80005c60:	00075c63          	bgez	a4,80005c78 <__printf+0x410>
    80005c64:	f9040713          	addi	a4,s0,-112
    80005c68:	00f70733          	add	a4,a4,a5
    80005c6c:	02d00693          	li	a3,45
    80005c70:	fed70823          	sb	a3,-16(a4)
    80005c74:	00078c93          	mv	s9,a5
    80005c78:	f8040793          	addi	a5,s0,-128
    80005c7c:	01978cb3          	add	s9,a5,s9
    80005c80:	f7f40d13          	addi	s10,s0,-129
    80005c84:	000cc503          	lbu	a0,0(s9)
    80005c88:	fffc8c93          	addi	s9,s9,-1
    80005c8c:	00000097          	auipc	ra,0x0
    80005c90:	9f8080e7          	jalr	-1544(ra) # 80005684 <consputc>
    80005c94:	ff9d18e3          	bne	s10,s9,80005c84 <__printf+0x41c>
    80005c98:	0100006f          	j	80005ca8 <__printf+0x440>
    80005c9c:	00000097          	auipc	ra,0x0
    80005ca0:	9e8080e7          	jalr	-1560(ra) # 80005684 <consputc>
    80005ca4:	000c8493          	mv	s1,s9
    80005ca8:	00094503          	lbu	a0,0(s2)
    80005cac:	c60510e3          	bnez	a0,8000590c <__printf+0xa4>
    80005cb0:	e40c0ee3          	beqz	s8,80005b0c <__printf+0x2a4>
    80005cb4:	00008517          	auipc	a0,0x8
    80005cb8:	58c50513          	addi	a0,a0,1420 # 8000e240 <pr>
    80005cbc:	00001097          	auipc	ra,0x1
    80005cc0:	94c080e7          	jalr	-1716(ra) # 80006608 <release>
    80005cc4:	e49ff06f          	j	80005b0c <__printf+0x2a4>
    80005cc8:	f7843783          	ld	a5,-136(s0)
    80005ccc:	03000513          	li	a0,48
    80005cd0:	01000d13          	li	s10,16
    80005cd4:	00878713          	addi	a4,a5,8
    80005cd8:	0007bc83          	ld	s9,0(a5)
    80005cdc:	f6e43c23          	sd	a4,-136(s0)
    80005ce0:	00000097          	auipc	ra,0x0
    80005ce4:	9a4080e7          	jalr	-1628(ra) # 80005684 <consputc>
    80005ce8:	07800513          	li	a0,120
    80005cec:	00000097          	auipc	ra,0x0
    80005cf0:	998080e7          	jalr	-1640(ra) # 80005684 <consputc>
    80005cf4:	00001d97          	auipc	s11,0x1
    80005cf8:	6bcd8d93          	addi	s11,s11,1724 # 800073b0 <digits>
    80005cfc:	03ccd793          	srli	a5,s9,0x3c
    80005d00:	00fd87b3          	add	a5,s11,a5
    80005d04:	0007c503          	lbu	a0,0(a5)
    80005d08:	fffd0d1b          	addiw	s10,s10,-1
    80005d0c:	004c9c93          	slli	s9,s9,0x4
    80005d10:	00000097          	auipc	ra,0x0
    80005d14:	974080e7          	jalr	-1676(ra) # 80005684 <consputc>
    80005d18:	fe0d12e3          	bnez	s10,80005cfc <__printf+0x494>
    80005d1c:	f8dff06f          	j	80005ca8 <__printf+0x440>
    80005d20:	f7843783          	ld	a5,-136(s0)
    80005d24:	0007bc83          	ld	s9,0(a5)
    80005d28:	00878793          	addi	a5,a5,8
    80005d2c:	f6f43c23          	sd	a5,-136(s0)
    80005d30:	000c9a63          	bnez	s9,80005d44 <__printf+0x4dc>
    80005d34:	1080006f          	j	80005e3c <__printf+0x5d4>
    80005d38:	001c8c93          	addi	s9,s9,1
    80005d3c:	00000097          	auipc	ra,0x0
    80005d40:	948080e7          	jalr	-1720(ra) # 80005684 <consputc>
    80005d44:	000cc503          	lbu	a0,0(s9)
    80005d48:	fe0518e3          	bnez	a0,80005d38 <__printf+0x4d0>
    80005d4c:	f5dff06f          	j	80005ca8 <__printf+0x440>
    80005d50:	02500513          	li	a0,37
    80005d54:	00000097          	auipc	ra,0x0
    80005d58:	930080e7          	jalr	-1744(ra) # 80005684 <consputc>
    80005d5c:	000c8513          	mv	a0,s9
    80005d60:	00000097          	auipc	ra,0x0
    80005d64:	924080e7          	jalr	-1756(ra) # 80005684 <consputc>
    80005d68:	f41ff06f          	j	80005ca8 <__printf+0x440>
    80005d6c:	02500513          	li	a0,37
    80005d70:	00000097          	auipc	ra,0x0
    80005d74:	914080e7          	jalr	-1772(ra) # 80005684 <consputc>
    80005d78:	f31ff06f          	j	80005ca8 <__printf+0x440>
    80005d7c:	00030513          	mv	a0,t1
    80005d80:	00000097          	auipc	ra,0x0
    80005d84:	7bc080e7          	jalr	1980(ra) # 8000653c <acquire>
    80005d88:	b4dff06f          	j	800058d4 <__printf+0x6c>
    80005d8c:	40c0053b          	negw	a0,a2
    80005d90:	00a00713          	li	a4,10
    80005d94:	02e576bb          	remuw	a3,a0,a4
    80005d98:	00001d97          	auipc	s11,0x1
    80005d9c:	618d8d93          	addi	s11,s11,1560 # 800073b0 <digits>
    80005da0:	ff700593          	li	a1,-9
    80005da4:	02069693          	slli	a3,a3,0x20
    80005da8:	0206d693          	srli	a3,a3,0x20
    80005dac:	00dd86b3          	add	a3,s11,a3
    80005db0:	0006c683          	lbu	a3,0(a3)
    80005db4:	02e557bb          	divuw	a5,a0,a4
    80005db8:	f8d40023          	sb	a3,-128(s0)
    80005dbc:	10b65e63          	bge	a2,a1,80005ed8 <__printf+0x670>
    80005dc0:	06300593          	li	a1,99
    80005dc4:	02e7f6bb          	remuw	a3,a5,a4
    80005dc8:	02069693          	slli	a3,a3,0x20
    80005dcc:	0206d693          	srli	a3,a3,0x20
    80005dd0:	00dd86b3          	add	a3,s11,a3
    80005dd4:	0006c683          	lbu	a3,0(a3)
    80005dd8:	02e7d73b          	divuw	a4,a5,a4
    80005ddc:	00200793          	li	a5,2
    80005de0:	f8d400a3          	sb	a3,-127(s0)
    80005de4:	bca5ece3          	bltu	a1,a0,800059bc <__printf+0x154>
    80005de8:	ce5ff06f          	j	80005acc <__printf+0x264>
    80005dec:	40e007bb          	negw	a5,a4
    80005df0:	00001d97          	auipc	s11,0x1
    80005df4:	5c0d8d93          	addi	s11,s11,1472 # 800073b0 <digits>
    80005df8:	00f7f693          	andi	a3,a5,15
    80005dfc:	00dd86b3          	add	a3,s11,a3
    80005e00:	0006c583          	lbu	a1,0(a3)
    80005e04:	ff100613          	li	a2,-15
    80005e08:	0047d69b          	srliw	a3,a5,0x4
    80005e0c:	f8b40023          	sb	a1,-128(s0)
    80005e10:	0047d59b          	srliw	a1,a5,0x4
    80005e14:	0ac75e63          	bge	a4,a2,80005ed0 <__printf+0x668>
    80005e18:	00f6f693          	andi	a3,a3,15
    80005e1c:	00dd86b3          	add	a3,s11,a3
    80005e20:	0006c603          	lbu	a2,0(a3)
    80005e24:	00f00693          	li	a3,15
    80005e28:	0087d79b          	srliw	a5,a5,0x8
    80005e2c:	f8c400a3          	sb	a2,-127(s0)
    80005e30:	d8b6e4e3          	bltu	a3,a1,80005bb8 <__printf+0x350>
    80005e34:	00200793          	li	a5,2
    80005e38:	e2dff06f          	j	80005c64 <__printf+0x3fc>
    80005e3c:	00001c97          	auipc	s9,0x1
    80005e40:	554c8c93          	addi	s9,s9,1364 # 80007390 <CONSOLE_STATUS+0x380>
    80005e44:	02800513          	li	a0,40
    80005e48:	ef1ff06f          	j	80005d38 <__printf+0x4d0>
    80005e4c:	00700793          	li	a5,7
    80005e50:	00600c93          	li	s9,6
    80005e54:	e0dff06f          	j	80005c60 <__printf+0x3f8>
    80005e58:	00700793          	li	a5,7
    80005e5c:	00600c93          	li	s9,6
    80005e60:	c69ff06f          	j	80005ac8 <__printf+0x260>
    80005e64:	00300793          	li	a5,3
    80005e68:	00200c93          	li	s9,2
    80005e6c:	c5dff06f          	j	80005ac8 <__printf+0x260>
    80005e70:	00300793          	li	a5,3
    80005e74:	00200c93          	li	s9,2
    80005e78:	de9ff06f          	j	80005c60 <__printf+0x3f8>
    80005e7c:	00400793          	li	a5,4
    80005e80:	00300c93          	li	s9,3
    80005e84:	dddff06f          	j	80005c60 <__printf+0x3f8>
    80005e88:	00400793          	li	a5,4
    80005e8c:	00300c93          	li	s9,3
    80005e90:	c39ff06f          	j	80005ac8 <__printf+0x260>
    80005e94:	00500793          	li	a5,5
    80005e98:	00400c93          	li	s9,4
    80005e9c:	c2dff06f          	j	80005ac8 <__printf+0x260>
    80005ea0:	00500793          	li	a5,5
    80005ea4:	00400c93          	li	s9,4
    80005ea8:	db9ff06f          	j	80005c60 <__printf+0x3f8>
    80005eac:	00600793          	li	a5,6
    80005eb0:	00500c93          	li	s9,5
    80005eb4:	dadff06f          	j	80005c60 <__printf+0x3f8>
    80005eb8:	00600793          	li	a5,6
    80005ebc:	00500c93          	li	s9,5
    80005ec0:	c09ff06f          	j	80005ac8 <__printf+0x260>
    80005ec4:	00800793          	li	a5,8
    80005ec8:	00700c93          	li	s9,7
    80005ecc:	bfdff06f          	j	80005ac8 <__printf+0x260>
    80005ed0:	00100793          	li	a5,1
    80005ed4:	d91ff06f          	j	80005c64 <__printf+0x3fc>
    80005ed8:	00100793          	li	a5,1
    80005edc:	bf1ff06f          	j	80005acc <__printf+0x264>
    80005ee0:	00900793          	li	a5,9
    80005ee4:	00800c93          	li	s9,8
    80005ee8:	be1ff06f          	j	80005ac8 <__printf+0x260>
    80005eec:	00001517          	auipc	a0,0x1
    80005ef0:	4ac50513          	addi	a0,a0,1196 # 80007398 <CONSOLE_STATUS+0x388>
    80005ef4:	00000097          	auipc	ra,0x0
    80005ef8:	918080e7          	jalr	-1768(ra) # 8000580c <panic>

0000000080005efc <printfinit>:
    80005efc:	fe010113          	addi	sp,sp,-32
    80005f00:	00813823          	sd	s0,16(sp)
    80005f04:	00913423          	sd	s1,8(sp)
    80005f08:	00113c23          	sd	ra,24(sp)
    80005f0c:	02010413          	addi	s0,sp,32
    80005f10:	00008497          	auipc	s1,0x8
    80005f14:	33048493          	addi	s1,s1,816 # 8000e240 <pr>
    80005f18:	00048513          	mv	a0,s1
    80005f1c:	00001597          	auipc	a1,0x1
    80005f20:	48c58593          	addi	a1,a1,1164 # 800073a8 <CONSOLE_STATUS+0x398>
    80005f24:	00000097          	auipc	ra,0x0
    80005f28:	5f4080e7          	jalr	1524(ra) # 80006518 <initlock>
    80005f2c:	01813083          	ld	ra,24(sp)
    80005f30:	01013403          	ld	s0,16(sp)
    80005f34:	0004ac23          	sw	zero,24(s1)
    80005f38:	00813483          	ld	s1,8(sp)
    80005f3c:	02010113          	addi	sp,sp,32
    80005f40:	00008067          	ret

0000000080005f44 <uartinit>:
    80005f44:	ff010113          	addi	sp,sp,-16
    80005f48:	00813423          	sd	s0,8(sp)
    80005f4c:	01010413          	addi	s0,sp,16
    80005f50:	100007b7          	lui	a5,0x10000
    80005f54:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80005f58:	f8000713          	li	a4,-128
    80005f5c:	00e781a3          	sb	a4,3(a5)
    80005f60:	00300713          	li	a4,3
    80005f64:	00e78023          	sb	a4,0(a5)
    80005f68:	000780a3          	sb	zero,1(a5)
    80005f6c:	00e781a3          	sb	a4,3(a5)
    80005f70:	00700693          	li	a3,7
    80005f74:	00d78123          	sb	a3,2(a5)
    80005f78:	00e780a3          	sb	a4,1(a5)
    80005f7c:	00813403          	ld	s0,8(sp)
    80005f80:	01010113          	addi	sp,sp,16
    80005f84:	00008067          	ret

0000000080005f88 <uartputc>:
    80005f88:	00003797          	auipc	a5,0x3
    80005f8c:	fb07a783          	lw	a5,-80(a5) # 80008f38 <panicked>
    80005f90:	00078463          	beqz	a5,80005f98 <uartputc+0x10>
    80005f94:	0000006f          	j	80005f94 <uartputc+0xc>
    80005f98:	fd010113          	addi	sp,sp,-48
    80005f9c:	02813023          	sd	s0,32(sp)
    80005fa0:	00913c23          	sd	s1,24(sp)
    80005fa4:	01213823          	sd	s2,16(sp)
    80005fa8:	01313423          	sd	s3,8(sp)
    80005fac:	02113423          	sd	ra,40(sp)
    80005fb0:	03010413          	addi	s0,sp,48
    80005fb4:	00003917          	auipc	s2,0x3
    80005fb8:	f8c90913          	addi	s2,s2,-116 # 80008f40 <uart_tx_r>
    80005fbc:	00093783          	ld	a5,0(s2)
    80005fc0:	00003497          	auipc	s1,0x3
    80005fc4:	f8848493          	addi	s1,s1,-120 # 80008f48 <uart_tx_w>
    80005fc8:	0004b703          	ld	a4,0(s1)
    80005fcc:	02078693          	addi	a3,a5,32
    80005fd0:	00050993          	mv	s3,a0
    80005fd4:	02e69c63          	bne	a3,a4,8000600c <uartputc+0x84>
    80005fd8:	00001097          	auipc	ra,0x1
    80005fdc:	834080e7          	jalr	-1996(ra) # 8000680c <push_on>
    80005fe0:	00093783          	ld	a5,0(s2)
    80005fe4:	0004b703          	ld	a4,0(s1)
    80005fe8:	02078793          	addi	a5,a5,32
    80005fec:	00e79463          	bne	a5,a4,80005ff4 <uartputc+0x6c>
    80005ff0:	0000006f          	j	80005ff0 <uartputc+0x68>
    80005ff4:	00001097          	auipc	ra,0x1
    80005ff8:	88c080e7          	jalr	-1908(ra) # 80006880 <pop_on>
    80005ffc:	00093783          	ld	a5,0(s2)
    80006000:	0004b703          	ld	a4,0(s1)
    80006004:	02078693          	addi	a3,a5,32
    80006008:	fce688e3          	beq	a3,a4,80005fd8 <uartputc+0x50>
    8000600c:	01f77693          	andi	a3,a4,31
    80006010:	00008597          	auipc	a1,0x8
    80006014:	25058593          	addi	a1,a1,592 # 8000e260 <uart_tx_buf>
    80006018:	00d586b3          	add	a3,a1,a3
    8000601c:	00170713          	addi	a4,a4,1
    80006020:	01368023          	sb	s3,0(a3)
    80006024:	00e4b023          	sd	a4,0(s1)
    80006028:	10000637          	lui	a2,0x10000
    8000602c:	02f71063          	bne	a4,a5,8000604c <uartputc+0xc4>
    80006030:	0340006f          	j	80006064 <uartputc+0xdc>
    80006034:	00074703          	lbu	a4,0(a4)
    80006038:	00f93023          	sd	a5,0(s2)
    8000603c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006040:	00093783          	ld	a5,0(s2)
    80006044:	0004b703          	ld	a4,0(s1)
    80006048:	00f70e63          	beq	a4,a5,80006064 <uartputc+0xdc>
    8000604c:	00564683          	lbu	a3,5(a2)
    80006050:	01f7f713          	andi	a4,a5,31
    80006054:	00e58733          	add	a4,a1,a4
    80006058:	0206f693          	andi	a3,a3,32
    8000605c:	00178793          	addi	a5,a5,1
    80006060:	fc069ae3          	bnez	a3,80006034 <uartputc+0xac>
    80006064:	02813083          	ld	ra,40(sp)
    80006068:	02013403          	ld	s0,32(sp)
    8000606c:	01813483          	ld	s1,24(sp)
    80006070:	01013903          	ld	s2,16(sp)
    80006074:	00813983          	ld	s3,8(sp)
    80006078:	03010113          	addi	sp,sp,48
    8000607c:	00008067          	ret

0000000080006080 <uartputc_sync>:
    80006080:	ff010113          	addi	sp,sp,-16
    80006084:	00813423          	sd	s0,8(sp)
    80006088:	01010413          	addi	s0,sp,16
    8000608c:	00003717          	auipc	a4,0x3
    80006090:	eac72703          	lw	a4,-340(a4) # 80008f38 <panicked>
    80006094:	02071663          	bnez	a4,800060c0 <uartputc_sync+0x40>
    80006098:	00050793          	mv	a5,a0
    8000609c:	100006b7          	lui	a3,0x10000
    800060a0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800060a4:	02077713          	andi	a4,a4,32
    800060a8:	fe070ce3          	beqz	a4,800060a0 <uartputc_sync+0x20>
    800060ac:	0ff7f793          	andi	a5,a5,255
    800060b0:	00f68023          	sb	a5,0(a3)
    800060b4:	00813403          	ld	s0,8(sp)
    800060b8:	01010113          	addi	sp,sp,16
    800060bc:	00008067          	ret
    800060c0:	0000006f          	j	800060c0 <uartputc_sync+0x40>

00000000800060c4 <uartstart>:
    800060c4:	ff010113          	addi	sp,sp,-16
    800060c8:	00813423          	sd	s0,8(sp)
    800060cc:	01010413          	addi	s0,sp,16
    800060d0:	00003617          	auipc	a2,0x3
    800060d4:	e7060613          	addi	a2,a2,-400 # 80008f40 <uart_tx_r>
    800060d8:	00003517          	auipc	a0,0x3
    800060dc:	e7050513          	addi	a0,a0,-400 # 80008f48 <uart_tx_w>
    800060e0:	00063783          	ld	a5,0(a2)
    800060e4:	00053703          	ld	a4,0(a0)
    800060e8:	04f70263          	beq	a4,a5,8000612c <uartstart+0x68>
    800060ec:	100005b7          	lui	a1,0x10000
    800060f0:	00008817          	auipc	a6,0x8
    800060f4:	17080813          	addi	a6,a6,368 # 8000e260 <uart_tx_buf>
    800060f8:	01c0006f          	j	80006114 <uartstart+0x50>
    800060fc:	0006c703          	lbu	a4,0(a3)
    80006100:	00f63023          	sd	a5,0(a2)
    80006104:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006108:	00063783          	ld	a5,0(a2)
    8000610c:	00053703          	ld	a4,0(a0)
    80006110:	00f70e63          	beq	a4,a5,8000612c <uartstart+0x68>
    80006114:	01f7f713          	andi	a4,a5,31
    80006118:	00e806b3          	add	a3,a6,a4
    8000611c:	0055c703          	lbu	a4,5(a1)
    80006120:	00178793          	addi	a5,a5,1
    80006124:	02077713          	andi	a4,a4,32
    80006128:	fc071ae3          	bnez	a4,800060fc <uartstart+0x38>
    8000612c:	00813403          	ld	s0,8(sp)
    80006130:	01010113          	addi	sp,sp,16
    80006134:	00008067          	ret

0000000080006138 <uartgetc>:
    80006138:	ff010113          	addi	sp,sp,-16
    8000613c:	00813423          	sd	s0,8(sp)
    80006140:	01010413          	addi	s0,sp,16
    80006144:	10000737          	lui	a4,0x10000
    80006148:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000614c:	0017f793          	andi	a5,a5,1
    80006150:	00078c63          	beqz	a5,80006168 <uartgetc+0x30>
    80006154:	00074503          	lbu	a0,0(a4)
    80006158:	0ff57513          	andi	a0,a0,255
    8000615c:	00813403          	ld	s0,8(sp)
    80006160:	01010113          	addi	sp,sp,16
    80006164:	00008067          	ret
    80006168:	fff00513          	li	a0,-1
    8000616c:	ff1ff06f          	j	8000615c <uartgetc+0x24>

0000000080006170 <uartintr>:
    80006170:	100007b7          	lui	a5,0x10000
    80006174:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80006178:	0017f793          	andi	a5,a5,1
    8000617c:	0a078463          	beqz	a5,80006224 <uartintr+0xb4>
    80006180:	fe010113          	addi	sp,sp,-32
    80006184:	00813823          	sd	s0,16(sp)
    80006188:	00913423          	sd	s1,8(sp)
    8000618c:	00113c23          	sd	ra,24(sp)
    80006190:	02010413          	addi	s0,sp,32
    80006194:	100004b7          	lui	s1,0x10000
    80006198:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000619c:	0ff57513          	andi	a0,a0,255
    800061a0:	fffff097          	auipc	ra,0xfffff
    800061a4:	534080e7          	jalr	1332(ra) # 800056d4 <consoleintr>
    800061a8:	0054c783          	lbu	a5,5(s1)
    800061ac:	0017f793          	andi	a5,a5,1
    800061b0:	fe0794e3          	bnez	a5,80006198 <uartintr+0x28>
    800061b4:	00003617          	auipc	a2,0x3
    800061b8:	d8c60613          	addi	a2,a2,-628 # 80008f40 <uart_tx_r>
    800061bc:	00003517          	auipc	a0,0x3
    800061c0:	d8c50513          	addi	a0,a0,-628 # 80008f48 <uart_tx_w>
    800061c4:	00063783          	ld	a5,0(a2)
    800061c8:	00053703          	ld	a4,0(a0)
    800061cc:	04f70263          	beq	a4,a5,80006210 <uartintr+0xa0>
    800061d0:	100005b7          	lui	a1,0x10000
    800061d4:	00008817          	auipc	a6,0x8
    800061d8:	08c80813          	addi	a6,a6,140 # 8000e260 <uart_tx_buf>
    800061dc:	01c0006f          	j	800061f8 <uartintr+0x88>
    800061e0:	0006c703          	lbu	a4,0(a3)
    800061e4:	00f63023          	sd	a5,0(a2)
    800061e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800061ec:	00063783          	ld	a5,0(a2)
    800061f0:	00053703          	ld	a4,0(a0)
    800061f4:	00f70e63          	beq	a4,a5,80006210 <uartintr+0xa0>
    800061f8:	01f7f713          	andi	a4,a5,31
    800061fc:	00e806b3          	add	a3,a6,a4
    80006200:	0055c703          	lbu	a4,5(a1)
    80006204:	00178793          	addi	a5,a5,1
    80006208:	02077713          	andi	a4,a4,32
    8000620c:	fc071ae3          	bnez	a4,800061e0 <uartintr+0x70>
    80006210:	01813083          	ld	ra,24(sp)
    80006214:	01013403          	ld	s0,16(sp)
    80006218:	00813483          	ld	s1,8(sp)
    8000621c:	02010113          	addi	sp,sp,32
    80006220:	00008067          	ret
    80006224:	00003617          	auipc	a2,0x3
    80006228:	d1c60613          	addi	a2,a2,-740 # 80008f40 <uart_tx_r>
    8000622c:	00003517          	auipc	a0,0x3
    80006230:	d1c50513          	addi	a0,a0,-740 # 80008f48 <uart_tx_w>
    80006234:	00063783          	ld	a5,0(a2)
    80006238:	00053703          	ld	a4,0(a0)
    8000623c:	04f70263          	beq	a4,a5,80006280 <uartintr+0x110>
    80006240:	100005b7          	lui	a1,0x10000
    80006244:	00008817          	auipc	a6,0x8
    80006248:	01c80813          	addi	a6,a6,28 # 8000e260 <uart_tx_buf>
    8000624c:	01c0006f          	j	80006268 <uartintr+0xf8>
    80006250:	0006c703          	lbu	a4,0(a3)
    80006254:	00f63023          	sd	a5,0(a2)
    80006258:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000625c:	00063783          	ld	a5,0(a2)
    80006260:	00053703          	ld	a4,0(a0)
    80006264:	02f70063          	beq	a4,a5,80006284 <uartintr+0x114>
    80006268:	01f7f713          	andi	a4,a5,31
    8000626c:	00e806b3          	add	a3,a6,a4
    80006270:	0055c703          	lbu	a4,5(a1)
    80006274:	00178793          	addi	a5,a5,1
    80006278:	02077713          	andi	a4,a4,32
    8000627c:	fc071ae3          	bnez	a4,80006250 <uartintr+0xe0>
    80006280:	00008067          	ret
    80006284:	00008067          	ret

0000000080006288 <kinit>:
    80006288:	fc010113          	addi	sp,sp,-64
    8000628c:	02913423          	sd	s1,40(sp)
    80006290:	fffff7b7          	lui	a5,0xfffff
    80006294:	00009497          	auipc	s1,0x9
    80006298:	feb48493          	addi	s1,s1,-21 # 8000f27f <end+0xfff>
    8000629c:	02813823          	sd	s0,48(sp)
    800062a0:	01313c23          	sd	s3,24(sp)
    800062a4:	00f4f4b3          	and	s1,s1,a5
    800062a8:	02113c23          	sd	ra,56(sp)
    800062ac:	03213023          	sd	s2,32(sp)
    800062b0:	01413823          	sd	s4,16(sp)
    800062b4:	01513423          	sd	s5,8(sp)
    800062b8:	04010413          	addi	s0,sp,64
    800062bc:	000017b7          	lui	a5,0x1
    800062c0:	01100993          	li	s3,17
    800062c4:	00f487b3          	add	a5,s1,a5
    800062c8:	01b99993          	slli	s3,s3,0x1b
    800062cc:	06f9e063          	bltu	s3,a5,8000632c <kinit+0xa4>
    800062d0:	00008a97          	auipc	s5,0x8
    800062d4:	fb0a8a93          	addi	s5,s5,-80 # 8000e280 <end>
    800062d8:	0754ec63          	bltu	s1,s5,80006350 <kinit+0xc8>
    800062dc:	0734fa63          	bgeu	s1,s3,80006350 <kinit+0xc8>
    800062e0:	00088a37          	lui	s4,0x88
    800062e4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800062e8:	00003917          	auipc	s2,0x3
    800062ec:	c6890913          	addi	s2,s2,-920 # 80008f50 <kmem>
    800062f0:	00ca1a13          	slli	s4,s4,0xc
    800062f4:	0140006f          	j	80006308 <kinit+0x80>
    800062f8:	000017b7          	lui	a5,0x1
    800062fc:	00f484b3          	add	s1,s1,a5
    80006300:	0554e863          	bltu	s1,s5,80006350 <kinit+0xc8>
    80006304:	0534f663          	bgeu	s1,s3,80006350 <kinit+0xc8>
    80006308:	00001637          	lui	a2,0x1
    8000630c:	00100593          	li	a1,1
    80006310:	00048513          	mv	a0,s1
    80006314:	00000097          	auipc	ra,0x0
    80006318:	5e4080e7          	jalr	1508(ra) # 800068f8 <__memset>
    8000631c:	00093783          	ld	a5,0(s2)
    80006320:	00f4b023          	sd	a5,0(s1)
    80006324:	00993023          	sd	s1,0(s2)
    80006328:	fd4498e3          	bne	s1,s4,800062f8 <kinit+0x70>
    8000632c:	03813083          	ld	ra,56(sp)
    80006330:	03013403          	ld	s0,48(sp)
    80006334:	02813483          	ld	s1,40(sp)
    80006338:	02013903          	ld	s2,32(sp)
    8000633c:	01813983          	ld	s3,24(sp)
    80006340:	01013a03          	ld	s4,16(sp)
    80006344:	00813a83          	ld	s5,8(sp)
    80006348:	04010113          	addi	sp,sp,64
    8000634c:	00008067          	ret
    80006350:	00001517          	auipc	a0,0x1
    80006354:	07850513          	addi	a0,a0,120 # 800073c8 <digits+0x18>
    80006358:	fffff097          	auipc	ra,0xfffff
    8000635c:	4b4080e7          	jalr	1204(ra) # 8000580c <panic>

0000000080006360 <freerange>:
    80006360:	fc010113          	addi	sp,sp,-64
    80006364:	000017b7          	lui	a5,0x1
    80006368:	02913423          	sd	s1,40(sp)
    8000636c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80006370:	009504b3          	add	s1,a0,s1
    80006374:	fffff537          	lui	a0,0xfffff
    80006378:	02813823          	sd	s0,48(sp)
    8000637c:	02113c23          	sd	ra,56(sp)
    80006380:	03213023          	sd	s2,32(sp)
    80006384:	01313c23          	sd	s3,24(sp)
    80006388:	01413823          	sd	s4,16(sp)
    8000638c:	01513423          	sd	s5,8(sp)
    80006390:	01613023          	sd	s6,0(sp)
    80006394:	04010413          	addi	s0,sp,64
    80006398:	00a4f4b3          	and	s1,s1,a0
    8000639c:	00f487b3          	add	a5,s1,a5
    800063a0:	06f5e463          	bltu	a1,a5,80006408 <freerange+0xa8>
    800063a4:	00008a97          	auipc	s5,0x8
    800063a8:	edca8a93          	addi	s5,s5,-292 # 8000e280 <end>
    800063ac:	0954e263          	bltu	s1,s5,80006430 <freerange+0xd0>
    800063b0:	01100993          	li	s3,17
    800063b4:	01b99993          	slli	s3,s3,0x1b
    800063b8:	0734fc63          	bgeu	s1,s3,80006430 <freerange+0xd0>
    800063bc:	00058a13          	mv	s4,a1
    800063c0:	00003917          	auipc	s2,0x3
    800063c4:	b9090913          	addi	s2,s2,-1136 # 80008f50 <kmem>
    800063c8:	00002b37          	lui	s6,0x2
    800063cc:	0140006f          	j	800063e0 <freerange+0x80>
    800063d0:	000017b7          	lui	a5,0x1
    800063d4:	00f484b3          	add	s1,s1,a5
    800063d8:	0554ec63          	bltu	s1,s5,80006430 <freerange+0xd0>
    800063dc:	0534fa63          	bgeu	s1,s3,80006430 <freerange+0xd0>
    800063e0:	00001637          	lui	a2,0x1
    800063e4:	00100593          	li	a1,1
    800063e8:	00048513          	mv	a0,s1
    800063ec:	00000097          	auipc	ra,0x0
    800063f0:	50c080e7          	jalr	1292(ra) # 800068f8 <__memset>
    800063f4:	00093703          	ld	a4,0(s2)
    800063f8:	016487b3          	add	a5,s1,s6
    800063fc:	00e4b023          	sd	a4,0(s1)
    80006400:	00993023          	sd	s1,0(s2)
    80006404:	fcfa76e3          	bgeu	s4,a5,800063d0 <freerange+0x70>
    80006408:	03813083          	ld	ra,56(sp)
    8000640c:	03013403          	ld	s0,48(sp)
    80006410:	02813483          	ld	s1,40(sp)
    80006414:	02013903          	ld	s2,32(sp)
    80006418:	01813983          	ld	s3,24(sp)
    8000641c:	01013a03          	ld	s4,16(sp)
    80006420:	00813a83          	ld	s5,8(sp)
    80006424:	00013b03          	ld	s6,0(sp)
    80006428:	04010113          	addi	sp,sp,64
    8000642c:	00008067          	ret
    80006430:	00001517          	auipc	a0,0x1
    80006434:	f9850513          	addi	a0,a0,-104 # 800073c8 <digits+0x18>
    80006438:	fffff097          	auipc	ra,0xfffff
    8000643c:	3d4080e7          	jalr	980(ra) # 8000580c <panic>

0000000080006440 <kfree>:
    80006440:	fe010113          	addi	sp,sp,-32
    80006444:	00813823          	sd	s0,16(sp)
    80006448:	00113c23          	sd	ra,24(sp)
    8000644c:	00913423          	sd	s1,8(sp)
    80006450:	02010413          	addi	s0,sp,32
    80006454:	03451793          	slli	a5,a0,0x34
    80006458:	04079c63          	bnez	a5,800064b0 <kfree+0x70>
    8000645c:	00008797          	auipc	a5,0x8
    80006460:	e2478793          	addi	a5,a5,-476 # 8000e280 <end>
    80006464:	00050493          	mv	s1,a0
    80006468:	04f56463          	bltu	a0,a5,800064b0 <kfree+0x70>
    8000646c:	01100793          	li	a5,17
    80006470:	01b79793          	slli	a5,a5,0x1b
    80006474:	02f57e63          	bgeu	a0,a5,800064b0 <kfree+0x70>
    80006478:	00001637          	lui	a2,0x1
    8000647c:	00100593          	li	a1,1
    80006480:	00000097          	auipc	ra,0x0
    80006484:	478080e7          	jalr	1144(ra) # 800068f8 <__memset>
    80006488:	00003797          	auipc	a5,0x3
    8000648c:	ac878793          	addi	a5,a5,-1336 # 80008f50 <kmem>
    80006490:	0007b703          	ld	a4,0(a5)
    80006494:	01813083          	ld	ra,24(sp)
    80006498:	01013403          	ld	s0,16(sp)
    8000649c:	00e4b023          	sd	a4,0(s1)
    800064a0:	0097b023          	sd	s1,0(a5)
    800064a4:	00813483          	ld	s1,8(sp)
    800064a8:	02010113          	addi	sp,sp,32
    800064ac:	00008067          	ret
    800064b0:	00001517          	auipc	a0,0x1
    800064b4:	f1850513          	addi	a0,a0,-232 # 800073c8 <digits+0x18>
    800064b8:	fffff097          	auipc	ra,0xfffff
    800064bc:	354080e7          	jalr	852(ra) # 8000580c <panic>

00000000800064c0 <kalloc>:
    800064c0:	fe010113          	addi	sp,sp,-32
    800064c4:	00813823          	sd	s0,16(sp)
    800064c8:	00913423          	sd	s1,8(sp)
    800064cc:	00113c23          	sd	ra,24(sp)
    800064d0:	02010413          	addi	s0,sp,32
    800064d4:	00003797          	auipc	a5,0x3
    800064d8:	a7c78793          	addi	a5,a5,-1412 # 80008f50 <kmem>
    800064dc:	0007b483          	ld	s1,0(a5)
    800064e0:	02048063          	beqz	s1,80006500 <kalloc+0x40>
    800064e4:	0004b703          	ld	a4,0(s1)
    800064e8:	00001637          	lui	a2,0x1
    800064ec:	00500593          	li	a1,5
    800064f0:	00048513          	mv	a0,s1
    800064f4:	00e7b023          	sd	a4,0(a5)
    800064f8:	00000097          	auipc	ra,0x0
    800064fc:	400080e7          	jalr	1024(ra) # 800068f8 <__memset>
    80006500:	01813083          	ld	ra,24(sp)
    80006504:	01013403          	ld	s0,16(sp)
    80006508:	00048513          	mv	a0,s1
    8000650c:	00813483          	ld	s1,8(sp)
    80006510:	02010113          	addi	sp,sp,32
    80006514:	00008067          	ret

0000000080006518 <initlock>:
    80006518:	ff010113          	addi	sp,sp,-16
    8000651c:	00813423          	sd	s0,8(sp)
    80006520:	01010413          	addi	s0,sp,16
    80006524:	00813403          	ld	s0,8(sp)
    80006528:	00b53423          	sd	a1,8(a0)
    8000652c:	00052023          	sw	zero,0(a0)
    80006530:	00053823          	sd	zero,16(a0)
    80006534:	01010113          	addi	sp,sp,16
    80006538:	00008067          	ret

000000008000653c <acquire>:
    8000653c:	fe010113          	addi	sp,sp,-32
    80006540:	00813823          	sd	s0,16(sp)
    80006544:	00913423          	sd	s1,8(sp)
    80006548:	00113c23          	sd	ra,24(sp)
    8000654c:	01213023          	sd	s2,0(sp)
    80006550:	02010413          	addi	s0,sp,32
    80006554:	00050493          	mv	s1,a0
    80006558:	10002973          	csrr	s2,sstatus
    8000655c:	100027f3          	csrr	a5,sstatus
    80006560:	ffd7f793          	andi	a5,a5,-3
    80006564:	10079073          	csrw	sstatus,a5
    80006568:	fffff097          	auipc	ra,0xfffff
    8000656c:	8e0080e7          	jalr	-1824(ra) # 80004e48 <mycpu>
    80006570:	07852783          	lw	a5,120(a0)
    80006574:	06078e63          	beqz	a5,800065f0 <acquire+0xb4>
    80006578:	fffff097          	auipc	ra,0xfffff
    8000657c:	8d0080e7          	jalr	-1840(ra) # 80004e48 <mycpu>
    80006580:	07852783          	lw	a5,120(a0)
    80006584:	0004a703          	lw	a4,0(s1)
    80006588:	0017879b          	addiw	a5,a5,1
    8000658c:	06f52c23          	sw	a5,120(a0)
    80006590:	04071063          	bnez	a4,800065d0 <acquire+0x94>
    80006594:	00100713          	li	a4,1
    80006598:	00070793          	mv	a5,a4
    8000659c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800065a0:	0007879b          	sext.w	a5,a5
    800065a4:	fe079ae3          	bnez	a5,80006598 <acquire+0x5c>
    800065a8:	0ff0000f          	fence
    800065ac:	fffff097          	auipc	ra,0xfffff
    800065b0:	89c080e7          	jalr	-1892(ra) # 80004e48 <mycpu>
    800065b4:	01813083          	ld	ra,24(sp)
    800065b8:	01013403          	ld	s0,16(sp)
    800065bc:	00a4b823          	sd	a0,16(s1)
    800065c0:	00013903          	ld	s2,0(sp)
    800065c4:	00813483          	ld	s1,8(sp)
    800065c8:	02010113          	addi	sp,sp,32
    800065cc:	00008067          	ret
    800065d0:	0104b903          	ld	s2,16(s1)
    800065d4:	fffff097          	auipc	ra,0xfffff
    800065d8:	874080e7          	jalr	-1932(ra) # 80004e48 <mycpu>
    800065dc:	faa91ce3          	bne	s2,a0,80006594 <acquire+0x58>
    800065e0:	00001517          	auipc	a0,0x1
    800065e4:	df050513          	addi	a0,a0,-528 # 800073d0 <digits+0x20>
    800065e8:	fffff097          	auipc	ra,0xfffff
    800065ec:	224080e7          	jalr	548(ra) # 8000580c <panic>
    800065f0:	00195913          	srli	s2,s2,0x1
    800065f4:	fffff097          	auipc	ra,0xfffff
    800065f8:	854080e7          	jalr	-1964(ra) # 80004e48 <mycpu>
    800065fc:	00197913          	andi	s2,s2,1
    80006600:	07252e23          	sw	s2,124(a0)
    80006604:	f75ff06f          	j	80006578 <acquire+0x3c>

0000000080006608 <release>:
    80006608:	fe010113          	addi	sp,sp,-32
    8000660c:	00813823          	sd	s0,16(sp)
    80006610:	00113c23          	sd	ra,24(sp)
    80006614:	00913423          	sd	s1,8(sp)
    80006618:	01213023          	sd	s2,0(sp)
    8000661c:	02010413          	addi	s0,sp,32
    80006620:	00052783          	lw	a5,0(a0)
    80006624:	00079a63          	bnez	a5,80006638 <release+0x30>
    80006628:	00001517          	auipc	a0,0x1
    8000662c:	db050513          	addi	a0,a0,-592 # 800073d8 <digits+0x28>
    80006630:	fffff097          	auipc	ra,0xfffff
    80006634:	1dc080e7          	jalr	476(ra) # 8000580c <panic>
    80006638:	01053903          	ld	s2,16(a0)
    8000663c:	00050493          	mv	s1,a0
    80006640:	fffff097          	auipc	ra,0xfffff
    80006644:	808080e7          	jalr	-2040(ra) # 80004e48 <mycpu>
    80006648:	fea910e3          	bne	s2,a0,80006628 <release+0x20>
    8000664c:	0004b823          	sd	zero,16(s1)
    80006650:	0ff0000f          	fence
    80006654:	0f50000f          	fence	iorw,ow
    80006658:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000665c:	ffffe097          	auipc	ra,0xffffe
    80006660:	7ec080e7          	jalr	2028(ra) # 80004e48 <mycpu>
    80006664:	100027f3          	csrr	a5,sstatus
    80006668:	0027f793          	andi	a5,a5,2
    8000666c:	04079a63          	bnez	a5,800066c0 <release+0xb8>
    80006670:	07852783          	lw	a5,120(a0)
    80006674:	02f05e63          	blez	a5,800066b0 <release+0xa8>
    80006678:	fff7871b          	addiw	a4,a5,-1
    8000667c:	06e52c23          	sw	a4,120(a0)
    80006680:	00071c63          	bnez	a4,80006698 <release+0x90>
    80006684:	07c52783          	lw	a5,124(a0)
    80006688:	00078863          	beqz	a5,80006698 <release+0x90>
    8000668c:	100027f3          	csrr	a5,sstatus
    80006690:	0027e793          	ori	a5,a5,2
    80006694:	10079073          	csrw	sstatus,a5
    80006698:	01813083          	ld	ra,24(sp)
    8000669c:	01013403          	ld	s0,16(sp)
    800066a0:	00813483          	ld	s1,8(sp)
    800066a4:	00013903          	ld	s2,0(sp)
    800066a8:	02010113          	addi	sp,sp,32
    800066ac:	00008067          	ret
    800066b0:	00001517          	auipc	a0,0x1
    800066b4:	d4850513          	addi	a0,a0,-696 # 800073f8 <digits+0x48>
    800066b8:	fffff097          	auipc	ra,0xfffff
    800066bc:	154080e7          	jalr	340(ra) # 8000580c <panic>
    800066c0:	00001517          	auipc	a0,0x1
    800066c4:	d2050513          	addi	a0,a0,-736 # 800073e0 <digits+0x30>
    800066c8:	fffff097          	auipc	ra,0xfffff
    800066cc:	144080e7          	jalr	324(ra) # 8000580c <panic>

00000000800066d0 <holding>:
    800066d0:	00052783          	lw	a5,0(a0)
    800066d4:	00079663          	bnez	a5,800066e0 <holding+0x10>
    800066d8:	00000513          	li	a0,0
    800066dc:	00008067          	ret
    800066e0:	fe010113          	addi	sp,sp,-32
    800066e4:	00813823          	sd	s0,16(sp)
    800066e8:	00913423          	sd	s1,8(sp)
    800066ec:	00113c23          	sd	ra,24(sp)
    800066f0:	02010413          	addi	s0,sp,32
    800066f4:	01053483          	ld	s1,16(a0)
    800066f8:	ffffe097          	auipc	ra,0xffffe
    800066fc:	750080e7          	jalr	1872(ra) # 80004e48 <mycpu>
    80006700:	01813083          	ld	ra,24(sp)
    80006704:	01013403          	ld	s0,16(sp)
    80006708:	40a48533          	sub	a0,s1,a0
    8000670c:	00153513          	seqz	a0,a0
    80006710:	00813483          	ld	s1,8(sp)
    80006714:	02010113          	addi	sp,sp,32
    80006718:	00008067          	ret

000000008000671c <push_off>:
    8000671c:	fe010113          	addi	sp,sp,-32
    80006720:	00813823          	sd	s0,16(sp)
    80006724:	00113c23          	sd	ra,24(sp)
    80006728:	00913423          	sd	s1,8(sp)
    8000672c:	02010413          	addi	s0,sp,32
    80006730:	100024f3          	csrr	s1,sstatus
    80006734:	100027f3          	csrr	a5,sstatus
    80006738:	ffd7f793          	andi	a5,a5,-3
    8000673c:	10079073          	csrw	sstatus,a5
    80006740:	ffffe097          	auipc	ra,0xffffe
    80006744:	708080e7          	jalr	1800(ra) # 80004e48 <mycpu>
    80006748:	07852783          	lw	a5,120(a0)
    8000674c:	02078663          	beqz	a5,80006778 <push_off+0x5c>
    80006750:	ffffe097          	auipc	ra,0xffffe
    80006754:	6f8080e7          	jalr	1784(ra) # 80004e48 <mycpu>
    80006758:	07852783          	lw	a5,120(a0)
    8000675c:	01813083          	ld	ra,24(sp)
    80006760:	01013403          	ld	s0,16(sp)
    80006764:	0017879b          	addiw	a5,a5,1
    80006768:	06f52c23          	sw	a5,120(a0)
    8000676c:	00813483          	ld	s1,8(sp)
    80006770:	02010113          	addi	sp,sp,32
    80006774:	00008067          	ret
    80006778:	0014d493          	srli	s1,s1,0x1
    8000677c:	ffffe097          	auipc	ra,0xffffe
    80006780:	6cc080e7          	jalr	1740(ra) # 80004e48 <mycpu>
    80006784:	0014f493          	andi	s1,s1,1
    80006788:	06952e23          	sw	s1,124(a0)
    8000678c:	fc5ff06f          	j	80006750 <push_off+0x34>

0000000080006790 <pop_off>:
    80006790:	ff010113          	addi	sp,sp,-16
    80006794:	00813023          	sd	s0,0(sp)
    80006798:	00113423          	sd	ra,8(sp)
    8000679c:	01010413          	addi	s0,sp,16
    800067a0:	ffffe097          	auipc	ra,0xffffe
    800067a4:	6a8080e7          	jalr	1704(ra) # 80004e48 <mycpu>
    800067a8:	100027f3          	csrr	a5,sstatus
    800067ac:	0027f793          	andi	a5,a5,2
    800067b0:	04079663          	bnez	a5,800067fc <pop_off+0x6c>
    800067b4:	07852783          	lw	a5,120(a0)
    800067b8:	02f05a63          	blez	a5,800067ec <pop_off+0x5c>
    800067bc:	fff7871b          	addiw	a4,a5,-1
    800067c0:	06e52c23          	sw	a4,120(a0)
    800067c4:	00071c63          	bnez	a4,800067dc <pop_off+0x4c>
    800067c8:	07c52783          	lw	a5,124(a0)
    800067cc:	00078863          	beqz	a5,800067dc <pop_off+0x4c>
    800067d0:	100027f3          	csrr	a5,sstatus
    800067d4:	0027e793          	ori	a5,a5,2
    800067d8:	10079073          	csrw	sstatus,a5
    800067dc:	00813083          	ld	ra,8(sp)
    800067e0:	00013403          	ld	s0,0(sp)
    800067e4:	01010113          	addi	sp,sp,16
    800067e8:	00008067          	ret
    800067ec:	00001517          	auipc	a0,0x1
    800067f0:	c0c50513          	addi	a0,a0,-1012 # 800073f8 <digits+0x48>
    800067f4:	fffff097          	auipc	ra,0xfffff
    800067f8:	018080e7          	jalr	24(ra) # 8000580c <panic>
    800067fc:	00001517          	auipc	a0,0x1
    80006800:	be450513          	addi	a0,a0,-1052 # 800073e0 <digits+0x30>
    80006804:	fffff097          	auipc	ra,0xfffff
    80006808:	008080e7          	jalr	8(ra) # 8000580c <panic>

000000008000680c <push_on>:
    8000680c:	fe010113          	addi	sp,sp,-32
    80006810:	00813823          	sd	s0,16(sp)
    80006814:	00113c23          	sd	ra,24(sp)
    80006818:	00913423          	sd	s1,8(sp)
    8000681c:	02010413          	addi	s0,sp,32
    80006820:	100024f3          	csrr	s1,sstatus
    80006824:	100027f3          	csrr	a5,sstatus
    80006828:	0027e793          	ori	a5,a5,2
    8000682c:	10079073          	csrw	sstatus,a5
    80006830:	ffffe097          	auipc	ra,0xffffe
    80006834:	618080e7          	jalr	1560(ra) # 80004e48 <mycpu>
    80006838:	07852783          	lw	a5,120(a0)
    8000683c:	02078663          	beqz	a5,80006868 <push_on+0x5c>
    80006840:	ffffe097          	auipc	ra,0xffffe
    80006844:	608080e7          	jalr	1544(ra) # 80004e48 <mycpu>
    80006848:	07852783          	lw	a5,120(a0)
    8000684c:	01813083          	ld	ra,24(sp)
    80006850:	01013403          	ld	s0,16(sp)
    80006854:	0017879b          	addiw	a5,a5,1
    80006858:	06f52c23          	sw	a5,120(a0)
    8000685c:	00813483          	ld	s1,8(sp)
    80006860:	02010113          	addi	sp,sp,32
    80006864:	00008067          	ret
    80006868:	0014d493          	srli	s1,s1,0x1
    8000686c:	ffffe097          	auipc	ra,0xffffe
    80006870:	5dc080e7          	jalr	1500(ra) # 80004e48 <mycpu>
    80006874:	0014f493          	andi	s1,s1,1
    80006878:	06952e23          	sw	s1,124(a0)
    8000687c:	fc5ff06f          	j	80006840 <push_on+0x34>

0000000080006880 <pop_on>:
    80006880:	ff010113          	addi	sp,sp,-16
    80006884:	00813023          	sd	s0,0(sp)
    80006888:	00113423          	sd	ra,8(sp)
    8000688c:	01010413          	addi	s0,sp,16
    80006890:	ffffe097          	auipc	ra,0xffffe
    80006894:	5b8080e7          	jalr	1464(ra) # 80004e48 <mycpu>
    80006898:	100027f3          	csrr	a5,sstatus
    8000689c:	0027f793          	andi	a5,a5,2
    800068a0:	04078463          	beqz	a5,800068e8 <pop_on+0x68>
    800068a4:	07852783          	lw	a5,120(a0)
    800068a8:	02f05863          	blez	a5,800068d8 <pop_on+0x58>
    800068ac:	fff7879b          	addiw	a5,a5,-1
    800068b0:	06f52c23          	sw	a5,120(a0)
    800068b4:	07853783          	ld	a5,120(a0)
    800068b8:	00079863          	bnez	a5,800068c8 <pop_on+0x48>
    800068bc:	100027f3          	csrr	a5,sstatus
    800068c0:	ffd7f793          	andi	a5,a5,-3
    800068c4:	10079073          	csrw	sstatus,a5
    800068c8:	00813083          	ld	ra,8(sp)
    800068cc:	00013403          	ld	s0,0(sp)
    800068d0:	01010113          	addi	sp,sp,16
    800068d4:	00008067          	ret
    800068d8:	00001517          	auipc	a0,0x1
    800068dc:	b4850513          	addi	a0,a0,-1208 # 80007420 <digits+0x70>
    800068e0:	fffff097          	auipc	ra,0xfffff
    800068e4:	f2c080e7          	jalr	-212(ra) # 8000580c <panic>
    800068e8:	00001517          	auipc	a0,0x1
    800068ec:	b1850513          	addi	a0,a0,-1256 # 80007400 <digits+0x50>
    800068f0:	fffff097          	auipc	ra,0xfffff
    800068f4:	f1c080e7          	jalr	-228(ra) # 8000580c <panic>

00000000800068f8 <__memset>:
    800068f8:	ff010113          	addi	sp,sp,-16
    800068fc:	00813423          	sd	s0,8(sp)
    80006900:	01010413          	addi	s0,sp,16
    80006904:	1a060e63          	beqz	a2,80006ac0 <__memset+0x1c8>
    80006908:	40a007b3          	neg	a5,a0
    8000690c:	0077f793          	andi	a5,a5,7
    80006910:	00778693          	addi	a3,a5,7
    80006914:	00b00813          	li	a6,11
    80006918:	0ff5f593          	andi	a1,a1,255
    8000691c:	fff6071b          	addiw	a4,a2,-1
    80006920:	1b06e663          	bltu	a3,a6,80006acc <__memset+0x1d4>
    80006924:	1cd76463          	bltu	a4,a3,80006aec <__memset+0x1f4>
    80006928:	1a078e63          	beqz	a5,80006ae4 <__memset+0x1ec>
    8000692c:	00b50023          	sb	a1,0(a0)
    80006930:	00100713          	li	a4,1
    80006934:	1ae78463          	beq	a5,a4,80006adc <__memset+0x1e4>
    80006938:	00b500a3          	sb	a1,1(a0)
    8000693c:	00200713          	li	a4,2
    80006940:	1ae78a63          	beq	a5,a4,80006af4 <__memset+0x1fc>
    80006944:	00b50123          	sb	a1,2(a0)
    80006948:	00300713          	li	a4,3
    8000694c:	18e78463          	beq	a5,a4,80006ad4 <__memset+0x1dc>
    80006950:	00b501a3          	sb	a1,3(a0)
    80006954:	00400713          	li	a4,4
    80006958:	1ae78263          	beq	a5,a4,80006afc <__memset+0x204>
    8000695c:	00b50223          	sb	a1,4(a0)
    80006960:	00500713          	li	a4,5
    80006964:	1ae78063          	beq	a5,a4,80006b04 <__memset+0x20c>
    80006968:	00b502a3          	sb	a1,5(a0)
    8000696c:	00700713          	li	a4,7
    80006970:	18e79e63          	bne	a5,a4,80006b0c <__memset+0x214>
    80006974:	00b50323          	sb	a1,6(a0)
    80006978:	00700e93          	li	t4,7
    8000697c:	00859713          	slli	a4,a1,0x8
    80006980:	00e5e733          	or	a4,a1,a4
    80006984:	01059e13          	slli	t3,a1,0x10
    80006988:	01c76e33          	or	t3,a4,t3
    8000698c:	01859313          	slli	t1,a1,0x18
    80006990:	006e6333          	or	t1,t3,t1
    80006994:	02059893          	slli	a7,a1,0x20
    80006998:	40f60e3b          	subw	t3,a2,a5
    8000699c:	011368b3          	or	a7,t1,a7
    800069a0:	02859813          	slli	a6,a1,0x28
    800069a4:	0108e833          	or	a6,a7,a6
    800069a8:	03059693          	slli	a3,a1,0x30
    800069ac:	003e589b          	srliw	a7,t3,0x3
    800069b0:	00d866b3          	or	a3,a6,a3
    800069b4:	03859713          	slli	a4,a1,0x38
    800069b8:	00389813          	slli	a6,a7,0x3
    800069bc:	00f507b3          	add	a5,a0,a5
    800069c0:	00e6e733          	or	a4,a3,a4
    800069c4:	000e089b          	sext.w	a7,t3
    800069c8:	00f806b3          	add	a3,a6,a5
    800069cc:	00e7b023          	sd	a4,0(a5)
    800069d0:	00878793          	addi	a5,a5,8
    800069d4:	fed79ce3          	bne	a5,a3,800069cc <__memset+0xd4>
    800069d8:	ff8e7793          	andi	a5,t3,-8
    800069dc:	0007871b          	sext.w	a4,a5
    800069e0:	01d787bb          	addw	a5,a5,t4
    800069e4:	0ce88e63          	beq	a7,a4,80006ac0 <__memset+0x1c8>
    800069e8:	00f50733          	add	a4,a0,a5
    800069ec:	00b70023          	sb	a1,0(a4)
    800069f0:	0017871b          	addiw	a4,a5,1
    800069f4:	0cc77663          	bgeu	a4,a2,80006ac0 <__memset+0x1c8>
    800069f8:	00e50733          	add	a4,a0,a4
    800069fc:	00b70023          	sb	a1,0(a4)
    80006a00:	0027871b          	addiw	a4,a5,2
    80006a04:	0ac77e63          	bgeu	a4,a2,80006ac0 <__memset+0x1c8>
    80006a08:	00e50733          	add	a4,a0,a4
    80006a0c:	00b70023          	sb	a1,0(a4)
    80006a10:	0037871b          	addiw	a4,a5,3
    80006a14:	0ac77663          	bgeu	a4,a2,80006ac0 <__memset+0x1c8>
    80006a18:	00e50733          	add	a4,a0,a4
    80006a1c:	00b70023          	sb	a1,0(a4)
    80006a20:	0047871b          	addiw	a4,a5,4
    80006a24:	08c77e63          	bgeu	a4,a2,80006ac0 <__memset+0x1c8>
    80006a28:	00e50733          	add	a4,a0,a4
    80006a2c:	00b70023          	sb	a1,0(a4)
    80006a30:	0057871b          	addiw	a4,a5,5
    80006a34:	08c77663          	bgeu	a4,a2,80006ac0 <__memset+0x1c8>
    80006a38:	00e50733          	add	a4,a0,a4
    80006a3c:	00b70023          	sb	a1,0(a4)
    80006a40:	0067871b          	addiw	a4,a5,6
    80006a44:	06c77e63          	bgeu	a4,a2,80006ac0 <__memset+0x1c8>
    80006a48:	00e50733          	add	a4,a0,a4
    80006a4c:	00b70023          	sb	a1,0(a4)
    80006a50:	0077871b          	addiw	a4,a5,7
    80006a54:	06c77663          	bgeu	a4,a2,80006ac0 <__memset+0x1c8>
    80006a58:	00e50733          	add	a4,a0,a4
    80006a5c:	00b70023          	sb	a1,0(a4)
    80006a60:	0087871b          	addiw	a4,a5,8
    80006a64:	04c77e63          	bgeu	a4,a2,80006ac0 <__memset+0x1c8>
    80006a68:	00e50733          	add	a4,a0,a4
    80006a6c:	00b70023          	sb	a1,0(a4)
    80006a70:	0097871b          	addiw	a4,a5,9
    80006a74:	04c77663          	bgeu	a4,a2,80006ac0 <__memset+0x1c8>
    80006a78:	00e50733          	add	a4,a0,a4
    80006a7c:	00b70023          	sb	a1,0(a4)
    80006a80:	00a7871b          	addiw	a4,a5,10
    80006a84:	02c77e63          	bgeu	a4,a2,80006ac0 <__memset+0x1c8>
    80006a88:	00e50733          	add	a4,a0,a4
    80006a8c:	00b70023          	sb	a1,0(a4)
    80006a90:	00b7871b          	addiw	a4,a5,11
    80006a94:	02c77663          	bgeu	a4,a2,80006ac0 <__memset+0x1c8>
    80006a98:	00e50733          	add	a4,a0,a4
    80006a9c:	00b70023          	sb	a1,0(a4)
    80006aa0:	00c7871b          	addiw	a4,a5,12
    80006aa4:	00c77e63          	bgeu	a4,a2,80006ac0 <__memset+0x1c8>
    80006aa8:	00e50733          	add	a4,a0,a4
    80006aac:	00b70023          	sb	a1,0(a4)
    80006ab0:	00d7879b          	addiw	a5,a5,13
    80006ab4:	00c7f663          	bgeu	a5,a2,80006ac0 <__memset+0x1c8>
    80006ab8:	00f507b3          	add	a5,a0,a5
    80006abc:	00b78023          	sb	a1,0(a5)
    80006ac0:	00813403          	ld	s0,8(sp)
    80006ac4:	01010113          	addi	sp,sp,16
    80006ac8:	00008067          	ret
    80006acc:	00b00693          	li	a3,11
    80006ad0:	e55ff06f          	j	80006924 <__memset+0x2c>
    80006ad4:	00300e93          	li	t4,3
    80006ad8:	ea5ff06f          	j	8000697c <__memset+0x84>
    80006adc:	00100e93          	li	t4,1
    80006ae0:	e9dff06f          	j	8000697c <__memset+0x84>
    80006ae4:	00000e93          	li	t4,0
    80006ae8:	e95ff06f          	j	8000697c <__memset+0x84>
    80006aec:	00000793          	li	a5,0
    80006af0:	ef9ff06f          	j	800069e8 <__memset+0xf0>
    80006af4:	00200e93          	li	t4,2
    80006af8:	e85ff06f          	j	8000697c <__memset+0x84>
    80006afc:	00400e93          	li	t4,4
    80006b00:	e7dff06f          	j	8000697c <__memset+0x84>
    80006b04:	00500e93          	li	t4,5
    80006b08:	e75ff06f          	j	8000697c <__memset+0x84>
    80006b0c:	00600e93          	li	t4,6
    80006b10:	e6dff06f          	j	8000697c <__memset+0x84>

0000000080006b14 <__memmove>:
    80006b14:	ff010113          	addi	sp,sp,-16
    80006b18:	00813423          	sd	s0,8(sp)
    80006b1c:	01010413          	addi	s0,sp,16
    80006b20:	0e060863          	beqz	a2,80006c10 <__memmove+0xfc>
    80006b24:	fff6069b          	addiw	a3,a2,-1
    80006b28:	0006881b          	sext.w	a6,a3
    80006b2c:	0ea5e863          	bltu	a1,a0,80006c1c <__memmove+0x108>
    80006b30:	00758713          	addi	a4,a1,7
    80006b34:	00a5e7b3          	or	a5,a1,a0
    80006b38:	40a70733          	sub	a4,a4,a0
    80006b3c:	0077f793          	andi	a5,a5,7
    80006b40:	00f73713          	sltiu	a4,a4,15
    80006b44:	00174713          	xori	a4,a4,1
    80006b48:	0017b793          	seqz	a5,a5
    80006b4c:	00e7f7b3          	and	a5,a5,a4
    80006b50:	10078863          	beqz	a5,80006c60 <__memmove+0x14c>
    80006b54:	00900793          	li	a5,9
    80006b58:	1107f463          	bgeu	a5,a6,80006c60 <__memmove+0x14c>
    80006b5c:	0036581b          	srliw	a6,a2,0x3
    80006b60:	fff8081b          	addiw	a6,a6,-1
    80006b64:	02081813          	slli	a6,a6,0x20
    80006b68:	01d85893          	srli	a7,a6,0x1d
    80006b6c:	00858813          	addi	a6,a1,8
    80006b70:	00058793          	mv	a5,a1
    80006b74:	00050713          	mv	a4,a0
    80006b78:	01088833          	add	a6,a7,a6
    80006b7c:	0007b883          	ld	a7,0(a5)
    80006b80:	00878793          	addi	a5,a5,8
    80006b84:	00870713          	addi	a4,a4,8
    80006b88:	ff173c23          	sd	a7,-8(a4)
    80006b8c:	ff0798e3          	bne	a5,a6,80006b7c <__memmove+0x68>
    80006b90:	ff867713          	andi	a4,a2,-8
    80006b94:	02071793          	slli	a5,a4,0x20
    80006b98:	0207d793          	srli	a5,a5,0x20
    80006b9c:	00f585b3          	add	a1,a1,a5
    80006ba0:	40e686bb          	subw	a3,a3,a4
    80006ba4:	00f507b3          	add	a5,a0,a5
    80006ba8:	06e60463          	beq	a2,a4,80006c10 <__memmove+0xfc>
    80006bac:	0005c703          	lbu	a4,0(a1)
    80006bb0:	00e78023          	sb	a4,0(a5)
    80006bb4:	04068e63          	beqz	a3,80006c10 <__memmove+0xfc>
    80006bb8:	0015c603          	lbu	a2,1(a1)
    80006bbc:	00100713          	li	a4,1
    80006bc0:	00c780a3          	sb	a2,1(a5)
    80006bc4:	04e68663          	beq	a3,a4,80006c10 <__memmove+0xfc>
    80006bc8:	0025c603          	lbu	a2,2(a1)
    80006bcc:	00200713          	li	a4,2
    80006bd0:	00c78123          	sb	a2,2(a5)
    80006bd4:	02e68e63          	beq	a3,a4,80006c10 <__memmove+0xfc>
    80006bd8:	0035c603          	lbu	a2,3(a1)
    80006bdc:	00300713          	li	a4,3
    80006be0:	00c781a3          	sb	a2,3(a5)
    80006be4:	02e68663          	beq	a3,a4,80006c10 <__memmove+0xfc>
    80006be8:	0045c603          	lbu	a2,4(a1)
    80006bec:	00400713          	li	a4,4
    80006bf0:	00c78223          	sb	a2,4(a5)
    80006bf4:	00e68e63          	beq	a3,a4,80006c10 <__memmove+0xfc>
    80006bf8:	0055c603          	lbu	a2,5(a1)
    80006bfc:	00500713          	li	a4,5
    80006c00:	00c782a3          	sb	a2,5(a5)
    80006c04:	00e68663          	beq	a3,a4,80006c10 <__memmove+0xfc>
    80006c08:	0065c703          	lbu	a4,6(a1)
    80006c0c:	00e78323          	sb	a4,6(a5)
    80006c10:	00813403          	ld	s0,8(sp)
    80006c14:	01010113          	addi	sp,sp,16
    80006c18:	00008067          	ret
    80006c1c:	02061713          	slli	a4,a2,0x20
    80006c20:	02075713          	srli	a4,a4,0x20
    80006c24:	00e587b3          	add	a5,a1,a4
    80006c28:	f0f574e3          	bgeu	a0,a5,80006b30 <__memmove+0x1c>
    80006c2c:	02069613          	slli	a2,a3,0x20
    80006c30:	02065613          	srli	a2,a2,0x20
    80006c34:	fff64613          	not	a2,a2
    80006c38:	00e50733          	add	a4,a0,a4
    80006c3c:	00c78633          	add	a2,a5,a2
    80006c40:	fff7c683          	lbu	a3,-1(a5)
    80006c44:	fff78793          	addi	a5,a5,-1
    80006c48:	fff70713          	addi	a4,a4,-1
    80006c4c:	00d70023          	sb	a3,0(a4)
    80006c50:	fec798e3          	bne	a5,a2,80006c40 <__memmove+0x12c>
    80006c54:	00813403          	ld	s0,8(sp)
    80006c58:	01010113          	addi	sp,sp,16
    80006c5c:	00008067          	ret
    80006c60:	02069713          	slli	a4,a3,0x20
    80006c64:	02075713          	srli	a4,a4,0x20
    80006c68:	00170713          	addi	a4,a4,1
    80006c6c:	00e50733          	add	a4,a0,a4
    80006c70:	00050793          	mv	a5,a0
    80006c74:	0005c683          	lbu	a3,0(a1)
    80006c78:	00178793          	addi	a5,a5,1
    80006c7c:	00158593          	addi	a1,a1,1
    80006c80:	fed78fa3          	sb	a3,-1(a5)
    80006c84:	fee798e3          	bne	a5,a4,80006c74 <__memmove+0x160>
    80006c88:	f89ff06f          	j	80006c10 <__memmove+0xfc>
	...
